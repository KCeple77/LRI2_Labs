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

/*      llist.c
 *      Linked list implementation illustrating block memory allocation APIs.
 */

#include "xmk.h"
#include <stdio.h>
#include <sys/bufmalloc.h>
#include <pthread.h>
#include <errno.h>

typedef struct list_s {
    int num ;
    struct list_s *next;
} list_t __attribute__ ((packed));


list_t *add_list( list_t *head, int num ) ;
list_t *delete_list( list_t *head, int num );
void    print_list( list_t *head ) ;
void    free_list( list_t *head ) ;
static  membuf_t mbuft;
char    membuf[20][8] __attribute__ ((aligned(4)));

void* llist_main (void *param)
{
    int i = 0 ;
    list_t *head = NULL ;
    int arr[10] = { 2, 4, 8, 1, 3, 6, 5, 0, 9, 7 } ;
	
    print ("\r\nLLIST: Sorted Linked List Implementation.\r\nLLIST: Demonstrates memory allocation interfaces.\r\n");

    xil_printf ("LLIST: Creating block memory pool....\r\n");
    i = bufcreate (&mbuft, membuf, 20, 8);
    if (i != 0) {
        xil_printf ("LLIST: Error while creating memory pool. Errno: %d.\r\n", errno);
        return NULL;
    }

    print("LLIST: Adding to list 10 statically defined elements....\r\n") ;
    for( i=0; i < 10; i++ ){
        head = add_list (head, arr[i]);
        if (head == NULL) {
            xil_printf ("LLIST: Memory allocation failed: i: %d\r\n", i);
            goto terminate;
        }
    }
    print_list (head);
    print("LLIST: Deleting the list elements.. 0,5,9\r\n") ;
    head = delete_list (head, 0);
    head = delete_list (head, 5);
    head = delete_list (head, 9);
    print ("LLIST: The list right now is,\r\n");
    print_list (head);
    print("LLIST: Adding to list 1535, 661, 2862 and 8.\r\n") ;
    head = add_list (head, 1535);
    head = add_list (head, 661);
    head = add_list (head, 2862);
    head = add_list (head, 8);
    print ("LLIST: The list right now is,\r\n");
    print_list (head);
    free_list (head);

terminate:
    xil_printf ("LLIST: Deleting block memory pool...\r\n");
    if (bufdestroy (mbuft) != 0) {
        xil_printf ("LLIST: ERROR while destroying membuf. Errno: %d.\r\n", errno);
    }
    print ("LLIST: Done. Good Bye..\r\n");
    pthread_exit (NULL);
}

list_t* add_list( list_t *head, int num ) 
{
    list_t *temp, *prev, *next ;
    temp = NULL;

    temp = (list_t *)bufmalloc (MEMBUF_ANY, sizeof(list_t));
    if (temp == NULL)
        return temp;
    temp->num = num ;
    if( (head == NULL) || (temp->num <= head->num) ) {
        temp->next = head ;
        return temp ;
    }
    next = head->next ;
    prev = head ;
    while( (next != NULL) && (next->num <= num) ) {
        prev = next ;
        next = next->next ;
    }
    prev->next = temp ;
    temp->next = next ;
    return head ;
}

list_t* delete_list (list_t *head, int num)
{
    list_t *prev, *next;

    if (head == NULL) 
        return NULL;
    if (head->num == num) {
        next = head;
        head = head->next;
        buffree (MEMBUF_ANY, next);
        return head;
    }
    prev = head;
    next = head->next;
    while ((next != NULL) && (next->num != num)) {
        prev = next;
        next = next->next;
    }
    if (next != NULL) {
        prev->next = next->next;
        buffree (MEMBUF_ANY, next);
    }
    return head;
}

void free_list (list_t *head) 
{
    list_t *prev;

    while (head != NULL) {
        prev = head;
        head = head->next;
        buffree (MEMBUF_ANY, prev);
    }
}

void print_list (list_t *head) 
{
    list_t *temp = head;
    xil_printf ("( ");
    while (temp != NULL) {
        xil_printf ("%d ",temp->num);
        temp = temp->next;
    }
    xil_printf (")\r\n");
}
