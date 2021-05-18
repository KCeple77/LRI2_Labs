////////////////////////////////////////////////////////////////////////////
//
// Copyright (c) 2002 Xilinx, Inc.  All rights reserved.
//
// Xilinx, Inc.
// XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
// COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
// ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
// STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
// IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
// FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  
// XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
// THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
// ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
// FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
// AND FITNESS FOR A PARTICULAR PURPOSE.
// 
//////////////////////////////////////////////////////////////////////////////

/*      tictac.c
 *      Simple AI tictac toe. Has 9 levels of recursion in AI computation loop. Stack requirements might be high accordingly.
 *      Main thread launches the tictac thread with a dynamically assigned stack. Therefore the burden of stack allocation and
 *      assignment for each thread can be pushed to the kernel. Stack parameters passed in pthread_attr_t structure.
 */

#include "xmk.h"
#include "xparameters.h"
#include "xuartlite_l.h"

#define TRUE  1
#define FALSE 0

typedef unsigned char BOOL;
const char NONE   = 0;
const char HUMANCOIN    = 'A';
const char MYCOIN  = 'X';
const char HUMANCLR = 1;
const char MYCLR = 2;

typedef struct position_s
{
    int row;
    int col;
    int best;

} position_t;

static char *helpmsg = "Q - quit, R - restart";
static char *usemsg  = "Number keys (1-9) select a square to place";
static int  quitgame = 0, resetgame = 0;


char mybuf[100];

void put_status (char *msg);
void humanmove(char board[3][3], char mymark);
void computermove(char board[3][3], char mymark, char mark);
position_t hum_move(char board[3][3], char mark, char mymark, char player, char opponent);

void put_status (char *msg)
{
    print  ("TICTAC: ");
    print (msg);
}

void tt_display (char board[3][3])
{
    int i, j;
    char p;
    char color;

    print ("TICTAC: Current board --> \r\n");
    for (i=0; i<3; i++) {
	for (j=0; j<3; j++) {
            outbyte (' ');
	    color = board[i][j];
            if (color == 0)
                outbyte (' ');
            else
                outbyte (color);
            outbyte (' ');
            if (j != 2)
                outbyte ('|');
	}
        if (i != 2)
            print ("\r\n------------\r\n");
    }
    print ("\r\n");
}

void fill(char curbd[3][3], char mark)
{
    int i, j;
    for(i=0; i < 3; i++)
        for(j=0; j < 3; j++)
            curbd[i][j] = mark;
}

BOOL board_filled(char board[3][3])
{
    int count=0, i, j;
    for(i=0; i < 3; i++)
        for(j=0; j < 3; j++)
            if (board[i][j] != NONE)
                count++;
    return (count==9);
}            

BOOL ifwon(char curbd[3][3], char mark)
{
    int i;

    for( i = 0; i < 3; i++ )
    {
        if (((curbd[i][0] == curbd[i][1])&&(curbd[i][1] == curbd[i][2]))&&(curbd[i][0] == mark))
            return TRUE;
        if (((curbd[0][i] == curbd[1][i])&&(curbd[1][i] == curbd[2][i]))&&(curbd[0][i] == mark))
            return TRUE;
    }
    if (((curbd[0][0] == curbd[1][1])&&(curbd[1][1] == curbd[2][2]))&&(curbd[1][1] == mark))
        return TRUE;
    if (((curbd[0][2] == curbd[1][1])&&(curbd[1][1] == curbd[2][0]))&&(curbd[1][1] == mark))
        return TRUE;
    return FALSE;
}

BOOL dcheck(char curbd[3][3], char mark, char mymark, BOOL change)
{
    int count=0, howempty=0, column=0, i, j;
    for(i=0; i < 3; i++)
    {
        if (curbd[i][i]==mark)
            count++;
        if (curbd[i][i]==NONE)
        {
            column=i;
            howempty++;
        }
    }
    if ((count==2)&&(howempty==1))
    {
        if (change)
            curbd[column][column] = mymark;
        return TRUE;
    }
    count=howempty=column=0;
    for(j=0; j < 3; j++)
    {
        if (curbd[j][-(-2+j)] == mark)
            count++;
        if (curbd[j][-(-2+j)] == NONE)
        {
            column = j;
            howempty++;
        }
    }
    if ((count==2)&&(howempty==1))
    {
        if (change)
            curbd[column][-(-2+column)] = mymark;
        return TRUE;
    }
    return FALSE;
}

BOOL vcheck(char curbd[3][3], char mark, char mymark, BOOL change)
{
    int count=0, howempty=0, row=0, i, j;
    for(i=0; i < 3; i++)
    {
	for(j=0; j < 3; j++)
	{
	    if (curbd[j][i]==mark)
		count++;
	    if (curbd[j][i]==NONE)
	    {
		row = j;
		howempty++;
	    }
	}
	if ((count==2)&&(howempty==1))
	{
	    if (change)
		curbd[row][i] = mymark;
	    return TRUE;
	}
	count = howempty = row = 0;
    }
    return FALSE;
}

BOOL hcheck(char curbd[3][3], char mark, char mymark, BOOL change)
{
    int count=0, howempty=0, column=0, i, j;
    for(i=0; i < 3; i++)
    {
	for(j=0; j < 3; j++)
	{
	    if (curbd[i][j]==mark)
		count++;
	    if (curbd[i][j]==NONE)
	    {
		column = j;
		howempty++;
	    }
	}
	if ((count==2)&&(howempty==1))
	{
	    if (change)
		curbd[i][column] = mymark;
	    return TRUE;
	}
	count = howempty = column=0;
    }
    return FALSE;
}

BOOL makemove(char curbd[3][3], char mark, char mymark, BOOL change)
{
    BOOL changed = TRUE;
    if (!hcheck(curbd, mark, mymark, change))
        if (!vcheck(curbd, mark, mymark, change))
            if (!dcheck(curbd, mark, mymark, change))
                changed = FALSE;
    return changed;
}

position_t com_move(char board[3][3], char mark, char mymark, char player, char opponent)
{
    position_t mypos, temp;
    int i, j;

    if (makemove(board, mymark, mymark, FALSE))
        mypos.best = 1;
    else if (board_filled(board))
        mypos.best=0;
    else
    {
        mypos.best = -1;
        for(i=0; i < 3; i++)
        {
            for(j=0; j < 3; j++)
            {
                if (board[i][j] == NONE)
                {
                    board[i][j] = mymark;
                    temp = hum_move(board, mark, mymark, player, opponent);
                    board[i][j]=NONE;
                    if (temp.best > mypos.best)
                    {
                        mypos.row = i;
                        mypos.col = j;
                        mypos.best = temp.best;
                    }
                }
            }
        }
    }
    return mypos;
}

position_t hum_move(char board[3][3], char mark, char mymark, char player, char opponent)
{
    position_t mypos, temp;
    int i, j;

    if (makemove(board, mark, mark, FALSE))
	mypos.best = -1;
    else if (board_filled(board))
        mypos.best=0;
    else
    {
        mypos.best = 1;
        for(i=0; i < 3; i++)
        {
            for(j=0; j < 3; j++)
            {
                if (board[i][j] == NONE)
                {
                    board[i][j] = mark;
                    temp = com_move(board, mark, mymark, player, opponent);
                    board[i][j]=NONE;
                    if (temp.best < mypos.best)
                    {
                        mypos.row = i;
                        mypos.col = j;
                        mypos.best = temp.best;
                    }
                }
            }
        }
    }
    return mypos;
}

void humanmove(char board[3][3], char mymark)
{
    int i, j;

    char c;
    while (1) {
	c = inbyte ();
	if (c == 'q' || c == 'Q') {
	    quitgame = 1;
	    break;
	}

	if (c >= '1' && c <= '9') {
	    c -= '1';
	    i = c/3;
	    j = c%3;
	    if (board[i][j] != 0) {
		put_status ("Invalid move ! Make a move please...\r\n");
		continue;
	    }
	    board[i][j] = mymark;
	    break;
	}
	else {
	    put_status ("Invalid move ! Make a valid move please...\r\n");
	}
    }
}


void computermove(char board[3][3], char mymark, char mark)
{
    position_t mypos;
    if (!makemove(board, mymark, mymark, TRUE))
        if(!makemove(board, mark, mymark, TRUE)) {
            mypos = com_move(board, mark, mymark, mymark, mark);
            board[mypos.row][mypos.col] = mymark;
        }
}

int gamemain () 
{
    int choice, i;
    BOOL HUMAN = FALSE;
    char board[3][3]; 

 gamemain_start:    
    HUMAN = TRUE;
    fill(board, NONE);
    tt_display(board);
    
    for(i = 0; i < 9; i++) {
        if ((i%2)==0) {
	    put_status ("Make a move (1-9): \r\n");
	    humanmove(board, HUMANCOIN);
	    if (quitgame) {
		quitgame = 0;
		return;
	    }
	    else if (resetgame) {
		resetgame = 0;
		goto gamemain_start;
	    }
	    if (ifwon(board, HUMANCOIN))
            {
		put_status ("YOU WON! Press a key to quit\r\n");
                break;
            }
        }
        else 
        {
	    put_status ("I am thinking..\r\n");
            computermove(board, MYCOIN, HUMANCOIN);
            if (ifwon(board, MYCOIN)) {
		put_status ("I WON! Press a key to quit\r\n");
                break;
            }
        }
        tt_display(board);
    }
    
    tt_display(board);
    
    if ((!ifwon(board,HUMANCOIN)) && (!ifwon(board, MYCOIN))) {
	put_status ("DRAW! Press a key to quit\r\n");
    }

    inbyte ();  // Terminate on keystroke
    return 0;
}


void* tictac_main (void *arg)
{

    print ("TICTAC: Game Starting\r\n");
    while (!XUartLite_IsReceiveEmpty( XPAR_AXI_UARTLITE_0_BASEADDR))
        inbyte ();

    gamemain ();
    print ("TICTAC: Game over\r\n");
}
