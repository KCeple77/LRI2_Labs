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
static const char *ng0 = "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/Lab1a/Lab1a/uart_receiver_tb.vhd";



static void work_a_0933625710_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 3864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3040);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 3864);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3040);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0933625710_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int64 t24;
    int64 t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int64 t32;
    int64 t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    int64 t40;
    int64 t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    int64 t48;
    int64 t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    int64 t56;
    int64 t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    int64 t64;
    int64 t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    int64 t72;
    int64 t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(107, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2128U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 3928);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, 0LL);
    t9 = (t0 + 2248U);
    t10 = *((char **)t9);
    t3 = *((int64 *)t10);
    t9 = (t0 + 3928);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t9, 0U, 1, t3);
    t15 = (t0 + 2248U);
    t16 = *((char **)t15);
    t5 = *((int64 *)t16);
    t17 = (2 * t5);
    t15 = (t0 + 3928);
    t18 = (t15 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t15, 0U, 1, t17);
    t22 = (t0 + 2248U);
    t23 = *((char **)t22);
    t24 = *((int64 *)t23);
    t25 = (3 * t24);
    t22 = (t0 + 3928);
    t26 = (t22 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t22, 0U, 1, t25);
    t30 = (t0 + 2248U);
    t31 = *((char **)t30);
    t32 = *((int64 *)t31);
    t33 = (4 * t32);
    t30 = (t0 + 3928);
    t34 = (t30 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    *((unsigned char *)t37) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t30, 0U, 1, t33);
    t38 = (t0 + 2248U);
    t39 = *((char **)t38);
    t40 = *((int64 *)t39);
    t41 = (5 * t40);
    t38 = (t0 + 3928);
    t42 = (t38 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    *((unsigned char *)t45) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t38, 0U, 1, t41);
    t46 = (t0 + 2248U);
    t47 = *((char **)t46);
    t48 = *((int64 *)t47);
    t49 = (6 * t48);
    t46 = (t0 + 3928);
    t50 = (t46 + 56U);
    t51 = *((char **)t50);
    t52 = (t51 + 56U);
    t53 = *((char **)t52);
    *((unsigned char *)t53) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t46, 0U, 1, t49);
    t54 = (t0 + 2248U);
    t55 = *((char **)t54);
    t56 = *((int64 *)t55);
    t57 = (7 * t56);
    t54 = (t0 + 3928);
    t58 = (t54 + 56U);
    t59 = *((char **)t58);
    t60 = (t59 + 56U);
    t61 = *((char **)t60);
    *((unsigned char *)t61) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t54, 0U, 1, t57);
    t62 = (t0 + 2248U);
    t63 = *((char **)t62);
    t64 = *((int64 *)t63);
    t65 = (8 * t64);
    t62 = (t0 + 3928);
    t66 = (t62 + 56U);
    t67 = *((char **)t66);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    *((unsigned char *)t69) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t62, 0U, 1, t65);
    t70 = (t0 + 2248U);
    t71 = *((char **)t70);
    t72 = *((int64 *)t71);
    t73 = (9 * t72);
    t70 = (t0 + 3928);
    t74 = (t70 + 56U);
    t75 = *((char **)t74);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    *((unsigned char *)t77) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t70, 0U, 1, t73);
    xsi_set_current_line(117, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_0933625710_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0933625710_2372691052_p_0,(void *)work_a_0933625710_2372691052_p_1};
	xsi_register_didat("work_a_0933625710_2372691052", "isim/uart_receiver_tb_isim_beh.exe.sim/work/a_0933625710_2372691052.didat");
	xsi_register_executes(pe);
}
