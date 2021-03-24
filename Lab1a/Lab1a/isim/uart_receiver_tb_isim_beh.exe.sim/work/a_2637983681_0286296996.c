/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/Lab1a/Lab1a/baud_rate_generator.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1388759734_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2637983681_0286296996_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3480);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1388759734_503743352(IEEE_P_2592010699, t5);
    t7 = (t6 == (unsigned char)2);
    if (t7 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t10 = (t9 + 1);
    t1 = (t0 + 1928U);
    t4 = *((char **)t1);
    t1 = (t4 + 0);
    *((int *)t1) = t10;
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1928U);
    t3 = *((char **)t1);
    t9 = *((int *)t3);
    t1 = (t0 + 1808U);
    t4 = *((char **)t1);
    t10 = *((int *)t4);
    t2 = (t9 >= t10);
    if (t2 != 0)
        goto LAB8;

LAB10:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1928U);
    t8 = *((char **)t3);
    t3 = (t8 + 0);
    *((int *)t3) = 0;
    goto LAB6;

LAB8:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1928U);
    t8 = *((char **)t1);
    t1 = (t8 + 0);
    *((int *)t1) = 0;
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (!(t2));
    t1 = (t0 + 3576);
    t4 = (t1 + 56U);
    t8 = *((char **)t4);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t5;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

}

static void work_a_2637983681_0286296996_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)1);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t9 = (t0 + 3640);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 3496);
    *((int *)t14) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 3640);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2637983681_0286296996_init()
{
	static char *pe[] = {(void *)work_a_2637983681_0286296996_p_0,(void *)work_a_2637983681_0286296996_p_1};
	xsi_register_didat("work_a_2637983681_0286296996", "isim/uart_receiver_tb_isim_beh.exe.sim/work/a_2637983681_0286296996.didat");
	xsi_register_executes(pe);
}
