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
static const char *ng0 = "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/LRI2_Labs/Lab1a/Lab1a/uart_top_comlpete_tb.vhd";



static void work_a_0831189963_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 3544);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 1808U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0831189963_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    char *t11;
    int64 t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int64 t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    int64 t27;
    int64 t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    int64 t35;
    int64 t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    int64 t43;
    int64 t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    int64 t51;
    int64 t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    int64 t59;
    int64 t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    int64 t67;
    int64 t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    int64 t75;
    int64 t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;

LAB0:    t1 = (t0 + 3160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2968);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1808U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t8 = (t3 * 10);
    t2 = (t0 + 2968);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1928U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 3672);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_delta(t2, 0U, 1, t3);
    t10 = (t0 + 1928U);
    t11 = *((char **)t10);
    t8 = *((int64 *)t11);
    t12 = (2 * t8);
    t10 = (t0 + 3672);
    t13 = (t10 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t10, 0U, 1, t12);
    t17 = (t0 + 1928U);
    t18 = *((char **)t17);
    t19 = *((int64 *)t18);
    t20 = (3 * t19);
    t17 = (t0 + 3672);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t17, 0U, 1, t20);
    t25 = (t0 + 1928U);
    t26 = *((char **)t25);
    t27 = *((int64 *)t26);
    t28 = (4 * t27);
    t25 = (t0 + 3672);
    t29 = (t25 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    *((unsigned char *)t32) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t25, 0U, 1, t28);
    t33 = (t0 + 1928U);
    t34 = *((char **)t33);
    t35 = *((int64 *)t34);
    t36 = (5 * t35);
    t33 = (t0 + 3672);
    t37 = (t33 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t33, 0U, 1, t36);
    t41 = (t0 + 1928U);
    t42 = *((char **)t41);
    t43 = *((int64 *)t42);
    t44 = (6 * t43);
    t41 = (t0 + 3672);
    t45 = (t41 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t41, 0U, 1, t44);
    t49 = (t0 + 1928U);
    t50 = *((char **)t49);
    t51 = *((int64 *)t50);
    t52 = (7 * t51);
    t49 = (t0 + 3672);
    t53 = (t49 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    *((unsigned char *)t56) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t49, 0U, 1, t52);
    t57 = (t0 + 1928U);
    t58 = *((char **)t57);
    t59 = *((int64 *)t58);
    t60 = (8 * t59);
    t57 = (t0 + 3672);
    t61 = (t57 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    *((unsigned char *)t64) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t57, 0U, 1, t60);
    t65 = (t0 + 1928U);
    t66 = *((char **)t65);
    t67 = *((int64 *)t66);
    t68 = (9 * t67);
    t65 = (t0 + 3672);
    t69 = (t65 + 56U);
    t70 = *((char **)t69);
    t71 = (t70 + 56U);
    t72 = *((char **)t71);
    *((unsigned char *)t72) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t65, 0U, 1, t68);
    t73 = (t0 + 1928U);
    t74 = *((char **)t73);
    t75 = *((int64 *)t74);
    t76 = (10 * t75);
    t73 = (t0 + 3672);
    t77 = (t73 + 56U);
    t78 = *((char **)t77);
    t79 = (t78 + 56U);
    t80 = *((char **)t79);
    *((unsigned char *)t80) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t73, 0U, 1, t76);
    t81 = (t0 + 3672);
    xsi_driver_intertial_reject(t81, t3, t3);
    xsi_set_current_line(102, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_0831189963_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0831189963_2372691052_p_0,(void *)work_a_0831189963_2372691052_p_1};
	xsi_register_didat("work_a_0831189963_2372691052", "isim/uart_top_comlpete_tb_isim_beh.exe.sim/work/a_0831189963_2372691052.didat");
	xsi_register_executes(pe);
}
