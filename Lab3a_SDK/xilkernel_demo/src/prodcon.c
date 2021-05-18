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

/*      prodcon.c
 *      Producer consumer example, using a single blocking message queue. Producer keeps feeding data to the queue while the receiver 
 *      tries to fetch the data from the queue. Both producer and consumer automatically block when the queue gets full. 
 */

#include "xmk.h"
#include <stdio.h>
#include <xparameters.h>
#include <xuartlite_l.h>
#include <sys/ipc.h>
#include <sys/msg.h>
#include <semaphore.h>
#include <errno.h>

struct _msg {
  short i;
  char  j;
  char  j2;
};

static struct _msg msg_p;
static struct _msg msg_c;

static int arg_p, arg_c;
static int retval, *retptr;
static pthread_attr_t attr;
static pthread_t prod, con;
static int prodret, consret;
static sem_t flag;

void* consumer (void *arg)
{
  int key = 5 ;	
  char p, i = 0 ;
  int msgid ;	
  ssize_t nbytes;
  int k;
  int errors = 0;
  /*
   * Consumer
   */
  print("PRODCON: Consumer -- Start !\r\n");
  msgid = msgget (key, IPC_CREAT);
  if( msgid == -1 ) {
      xil_printf ("PRODCON: Consumer -- ERROR while opening Message Queue. Errno: %d \r\n", errno);
      consret = errno;
      pthread_exit(&consret) ;
  }

  while(i<20) {
    k = 0;
    if( msgrcv( msgid, &msg_c, 4, 0,0 ) != 4 ) { // blocking recv
	xil_printf ("PRODCON: Consumer -- msgrcv of message(%d) ran into ERROR. Errno: %d. Halting...\r\n", i, errno);
        consret = errno;
	pthread_exit(&consret);
    }
    print("PRODCON: Consumer -- " ) ;
    outbyte(msg_c.j ) ;
    print("\r\n") ;
    if (msg_c.i != i) {
	print("PRODCON: Consumer -- Message ERROR: ");
	outbyte(msg_c.j);
	print(", msg.i: ");
	putnum(msg_c.i);
	print(", i: ");
	putnum(i);
	outbyte('\r'); 
	outbyte('\n');
	errors |= (1 << i);
    }
    i++ ;
  }
  print("PRODCON: Consumer -- Done. ERRORS (1 indicates error in corresponding message): ");
  putnum(errors);
  print("\r\n");

  print("PRODCON: Consumer -- Signalling main.\r\n");
  sem_post(&flag);

  print("PRODCON: Consumer -- Doing other tests...Blocking on message queue\r\n");
  nbytes = msgrcv( msgid, &msg_c, 4, 0,0 );                                                     /* Blocking recv */
  if( nbytes != -1 )
      print("PRODCON: Consumer -- ERROR. Was supposed to have been at error now, but am not!\r\n");
  else
      print("PRODCON: Consumer -- Great! Got Kicked out of msgrcv appropriately.\r\n");
  print("PRODCON: Consumer -- Terminating.\r\n");
  consret = 0;
  pthread_exit(&consret);
}


void* producer (void* arg)
{

  int key = 5 ;	
  char i = 0 ;
  int msgid ;	
  
  /*
   * Producer
   */
  print("PRODCON: Producer -- Start !\r\n");
  msgid = msgget (key, IPC_CREAT ) ;
  if( msgid == -1 ) {
      xil_printf ("PRODCON: Producer -- ERROR while opening Message Queue. Errno: %d\r\n", errno) ;
      prodret = errno;
      pthread_exit (&prodret);
  }
  while(i < 20) {
    msg_p.i = i ;
    msg_p.j = 'a'+i ;
    if( msgsnd (msgid, &msg_p, 4, 0) < 0 ) { // blocking send
	xil_printf ("PRODCON: Producer -- msgsnd of message(%d) ran into ERROR. Errno: %d. Halting..\r\n", i, errno);
        prodret = errno;
	pthread_exit(&prodret);
    }
    print("PRODCON: Producer -- " ) ;
    outbyte(msg_p.j) ;
    print("\r\n") ;
    i++ ;
  }

  print("PRODCON: Producer done !\r\n");
  prodret = 0;
  pthread_exit(&prodret);
}


void* prodcon_main (void *param)
{
    int msgid;
    struct msqid_ds stats;
    int eno;

    print("PRODCON: Starting..\r\n");
    retptr = &retval;
    sem_init(&flag,0,0);

    retval = pthread_attr_init(&attr);
    if( retval != 0 ) {
	print("PRODCON: Error while initializing pthread attributes. Error code: ");
	putnum(retval);
	print("\r\n");
    }
    pthread_attr_setdetachstate(&attr,PTHREAD_CREATE_JOINABLE); // Initially creating the thread to be joinable

    print("PRODCON: Spawning Producer..\r\n");
    retval = pthread_create(&prod,&attr,producer,&arg_p);
    if( retval != 0  ) {
	print("pthread_create(producer) failed. Error code: ");
	putnum(retval);
	print("\r\n");
    }
    print("\r\nPRODCON: Returned TID: ");
    putnum(prod);
    print("\r\n");

    print ("PRODCON: Spawning consumer...\r\n");
    retval = pthread_create (&con,&attr,consumer,&arg_c);
    if( retval != 0  ) {
	print("pthread_create(consumer) failed. Error code: ");
	putnum(retval);
	print("\r\n");
    }
    print("\r\nPRODCON: Returned TID: ");
    putnum(con);
    print("\r\n");

    print("PRODCON: Waiting for these guys to finish.\r\n");
    retval = pthread_join(prod,&retptr);
    if( retval != 0 ) {
	print("PRODCON: pthread_join with producer failed. Error code: ");
	putnum(retval);
	print("\r\n");
    }
    else {
	print("PRODCON: Successfully joined with producer. Return value of terminated thread: ");
	putnum(*((int*)retptr));
	print("\r\n");
    }

    /* Wait for indication from consumer */
    sem_wait(&flag);
    print("PRODCON: Starting other tests..\r\n");
    print("PRODCON: Trying to create a message queue with the same key.\r\n");
    print("PRODCON: EXCL mode...\r\n");
    if (msgget(5,IPC_CREAT | IPC_EXCL) < 0) {
	print("PRODCON: Successfully failed :). Errno: ");
        putnum (errno);
        print ("\r\n");
    }
    else {
	print("PRODCON: Was supposed to have failed here.\r\n");
	goto done;
    }

    print("PRODCON: Retrieving msgid for already created msgQ.\r\n");
    msgid = msgget(5,IPC_CREAT);
    if( msgid < 0 ) {
	print("PRODCON: Did not successfully retrieve msgid.\r\n");
	goto done;
    }

    print("PRODCON: Retrieving statistics from message queue.\r\n");
    if( msgctl(msgid, IPC_STAT, &stats) < 0 ) {
	print("PRODCON: msgctl error.\r\n");
	goto done;
    }
    print("PRODCON: MsgQ stats: \r\n");
    print("\tmsg_qnum    : ");
    putnum(stats.msg_qnum);
    print("\r\n");
    print("\tmsg_qbytes  : ");
    putnum(stats.msg_qbytes);
    print("\r\n");
    print("\tmsg_lspid   : ");
    putnum(stats.msg_lspid);
    print("\r\n");
    print("\tmsg_lrpid   : ");
    putnum(stats.msg_lrpid);
    print("\r\nEnd Stats \r\n");
    print("PRODCON: Attempting to destroy message Q while a process is occupying it.\r\n");
    if( msgctl(msgid, IPC_RMID, NULL) < 0 ) {
	print("PRODCON: msgctl error.\r\n");
	goto done;
    }
    print("PRODCON: Successfully removed message queue.\r\n");
    retval = pthread_join(con,&retptr);
    if( retval != 0 ) {
	print("PRODCON: pthread_join with consumer failed. Error code: ");
	putnum(retval);
	print("\r\n");
    }
    else {
	print("PRODCON: Successfully joined with consumer. Return value of terminated thread: ");
	putnum(*((int*)retptr));
	print("\r\n");
    }
    print ("PRODCON: Releasing misc resources..\r\n");
    sem_post (&flag);
    if (sem_destroy (&flag) != 0) 
	print ("PRODCON: Error while releasing resources.\r\n");
    
    print("PRODCON: Done !\r\n");

done:
    pthread_exit(0);
}
