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
static const char *ng0 = "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/LRI2_Labs/Lab2a/pcores/uart_cntrl_v1_00_c/hdl/vhdl/user_logic.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    xsi_set_current_line(199, ng0);
    t2 = (t0 + 1312U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 10568);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(200, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(204, ng0);
    t2 = (t0 + 10888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(207, ng0);
    t2 = (t0 + 3272U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t2 = (t0 + 6048U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (t17 - 31);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB14;

LAB15:
LAB12:    xsi_set_current_line(216, ng0);
    t2 = (t0 + 3432U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB16;

LAB18:    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t2 = (t0 + 6168U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (t17 - 31);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t1 = *((unsigned char *)t2);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB19;

LAB20:
LAB17:    xsi_set_current_line(225, ng0);
    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t2 = (t0 + 5568U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (t17 - 31);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)3);
    if (t6 == 1)
        goto LAB24;

LAB25:    t1 = (unsigned char)0;

LAB26:    if (t1 != 0)
        goto LAB21;

LAB23:    t2 = (t0 + 4072U);
    t4 = *((char **)t2);
    t2 = (t0 + 5568U);
    t5 = *((char **)t2);
    t17 = *((int *)t5);
    t18 = (t17 - 31);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t2 = (t4 + t21);
    t3 = *((unsigned char *)t2);
    t6 = (t3 == (unsigned char)2);
    if (t6 == 1)
        goto LAB29;

LAB30:    t1 = (unsigned char)0;

LAB31:    if (t1 != 0)
        goto LAB27;

LAB28:
LAB22:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(201, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t11 = t4;
    memset(t11, (unsigned char)2, 32U);
    t12 = (t0 + 10824);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(202, ng0);
    t2 = (t0 + 10888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(208, ng0);
    t2 = (t0 + 3912U);
    t5 = *((char **)t2);
    t2 = (t0 + 10824);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_delta(t2, 16U, 8U, 0LL);
    xsi_set_current_line(209, ng0);
    t2 = (t0 + 10824);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 30U, 1, 0LL);
    goto LAB12;

LAB14:    xsi_set_current_line(211, ng0);
    t8 = (t0 + 10824);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t8, 30U, 1, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(217, ng0);
    t2 = (t0 + 10824);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 31U, 1, 0LL);
    xsi_set_current_line(218, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)0;
    goto LAB17;

LAB19:    xsi_set_current_line(220, ng0);
    t8 = (t0 + 10824);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_delta(t8, 31U, 1, 0LL);
    goto LAB17;

LAB21:    xsi_set_current_line(226, ng0);
    t8 = (t0 + 4072U);
    t12 = *((char **)t8);
    t22 = (31 - 15);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t8 = (t12 + t24);
    t13 = (t0 + 10952);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t25 = *((char **)t16);
    memcpy(t25, t8, 8U);
    xsi_driver_first_trans_fast(t13);
    xsi_set_current_line(227, ng0);
    t2 = (t0 + 10888);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(228, ng0);
    t2 = (t0 + 10824);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 29U, 1, 0LL);
    xsi_set_current_line(229, ng0);
    t2 = (t0 + 6288U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = (unsigned char)1;
    goto LAB22;

LAB24:    t8 = (t0 + 6288U);
    t11 = *((char **)t8);
    t7 = *((unsigned char *)t11);
    t9 = (t7 == (unsigned char)0);
    t1 = t9;
    goto LAB26;

LAB27:    xsi_set_current_line(231, ng0);
    t8 = (t0 + 10824);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_delta(t8, 29U, 1, 0LL);
    goto LAB22;

LAB29:    t8 = (t0 + 6288U);
    t11 = *((char **)t8);
    t7 = *((unsigned char *)t11);
    t9 = (t7 == (unsigned char)1);
    t1 = t9;
    goto LAB31;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(255, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 11016);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 10584);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(256, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (1 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 11080);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 10600);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(257, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t10 = (1 - 1);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 11144);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 10616);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(258, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (0 - 1);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t10 = (1 - 1);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t0 + 11208);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = t15;
    xsi_driver_first_trans_fast(t16);

LAB2:    t21 = (t0 + 10632);
    *((int *)t21) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_5(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    int t19;
    int t20;
    int t21;
    int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    int t27;
    int t28;
    int t29;
    unsigned int t30;
    char *t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    char *t37;
    int t38;
    int t39;
    int t40;
    char *t41;
    int t42;
    int t43;
    int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    int t48;
    int t49;
    int t50;
    char *t51;
    int t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    int t58;
    int t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    int t70;
    int t71;
    int t72;
    char *t73;
    int t74;
    int t75;
    int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    int t80;
    int t81;
    int t82;
    char *t83;
    int t84;
    int t85;
    int t86;
    unsigned int t87;
    unsigned int t88;

LAB0:    xsi_set_current_line(264, ng0);
    t2 = (t0 + 1312U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 10648);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(265, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(269, ng0);
    t2 = (t0 + 4392U);
    t4 = *((char **)t2);
    t2 = (t0 + 20252);
    t17 = xsi_mem_cmp(t2, t4, 2U);
    if (t17 == 1)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(282, ng0);

LAB11:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(266, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t11 = t4;
    memset(t11, (unsigned char)2, 32U);
    t12 = (t0 + 11272);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB12:    xsi_set_current_line(271, ng0);
    t18 = (32 / 8);
    t19 = (t18 - 1);
    t8 = (t0 + 20254);
    *((int *)t8) = 0;
    t11 = (t0 + 20258);
    *((int *)t11) = t19;
    t20 = 0;
    t21 = t19;

LAB16:    if (t20 <= t21)
        goto LAB17;

LAB19:    goto LAB11;

LAB15:;
LAB17:    xsi_set_current_line(272, ng0);
    t12 = (t0 + 1832U);
    t13 = *((char **)t12);
    t12 = (t0 + 20254);
    t22 = *((int *)t12);
    t23 = (t22 - 3);
    t24 = (t23 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t12));
    t25 = (1U * t24);
    t26 = (0 + t25);
    t14 = (t13 + t26);
    t1 = *((unsigned char *)t14);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB20;

LAB22:
LAB21:
LAB18:    t2 = (t0 + 20254);
    t20 = *((int *)t2);
    t4 = (t0 + 20258);
    t21 = *((int *)t4);
    if (t20 == t21)
        goto LAB19;

LAB25:    t17 = (t20 + 1);
    t20 = t17;
    t5 = (t0 + 20254);
    *((int *)t5) = t20;
    goto LAB16;

LAB20:    xsi_set_current_line(273, ng0);
    t15 = (t0 + 1672U);
    t16 = *((char **)t15);
    t15 = (t0 + 20254);
    t27 = *((int *)t15);
    t28 = (t27 * 8);
    t29 = (t28 + 7);
    t30 = (31 - t29);
    t31 = (t0 + 20254);
    t32 = *((int *)t31);
    t33 = (t32 * 8);
    xsi_vhdl_check_range_of_slice(31, 0, -1, t29, t33, -1);
    t34 = (t30 * 1U);
    t35 = (0 + t34);
    t36 = (t16 + t35);
    t37 = (t0 + 20254);
    t38 = *((int *)t37);
    t39 = (t38 * 8);
    t40 = (t39 + 7);
    t41 = (t0 + 20254);
    t42 = *((int *)t41);
    t43 = (t42 * 8);
    t44 = (t43 - t40);
    t45 = (t44 * -1);
    t45 = (t45 + 1);
    t46 = (1U * t45);
    t47 = (t0 + 20254);
    t48 = *((int *)t47);
    t49 = (t48 * 8);
    t50 = (t49 + 7);
    t51 = (t0 + 20254);
    t52 = *((int *)t51);
    t53 = (t52 * 8);
    t54 = (t53 - t50);
    t55 = (t54 * -1);
    t55 = (t55 + 1);
    t56 = (1U * t55);
    t6 = (t46 != t56);
    if (t6 == 1)
        goto LAB23;

LAB24:    t57 = (t0 + 20254);
    t58 = *((int *)t57);
    t59 = (t58 * 8);
    t60 = (t59 + 7);
    t61 = (31 - t60);
    t62 = (1U * t61);
    t63 = (0U + t62);
    t64 = (t0 + 11272);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t0 + 20254);
    t70 = *((int *)t69);
    t71 = (t70 * 8);
    t72 = (t71 + 7);
    t73 = (t0 + 20254);
    t74 = *((int *)t73);
    t75 = (t74 * 8);
    t76 = (t75 - t72);
    t77 = (t76 * -1);
    t77 = (t77 + 1);
    t78 = (1U * t77);
    memcpy(t68, t36, t78);
    t79 = (t0 + 20254);
    t80 = *((int *)t79);
    t81 = (t80 * 8);
    t82 = (t81 + 7);
    t83 = (t0 + 20254);
    t84 = *((int *)t83);
    t85 = (t84 * 8);
    t86 = (t85 - t82);
    t87 = (t86 * -1);
    t87 = (t87 + 1);
    t88 = (1U * t87);
    xsi_driver_first_trans_delta(t64, t63, t88, 0LL);
    goto LAB21;

LAB23:    xsi_size_not_matching(t46, t56, 0);
    goto LAB24;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_6(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(293, ng0);
    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    t1 = (t0 + 20262);
    t4 = xsi_mem_cmp(t1, t2, 2U);
    if (t4 == 1)
        goto LAB3;

LAB5:
LAB4:    xsi_set_current_line(296, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t3 = (t0 + 11336);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 32U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t1 = (t0 + 10664);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(295, ng0);
    t5 = (t0 + 4232U);
    t6 = *((char **)t5);
    t5 = (t0 + 11336);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 32U);
    xsi_driver_first_trans_fast(t5);
    goto LAB2;

LAB6:;
}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_7(char *t0)
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
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(304, ng0);
    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = xsi_get_transient_memory(32U);
    memset(t10, 0, 32U);
    t11 = t10;
    memset(t11, (unsigned char)2, 32U);
    t12 = (t0 + 11400);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 32U);
    xsi_driver_first_trans_fast_port(t12);

LAB2:    t17 = (t0 + 10680);
    *((int *)t17) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 4712U);
    t5 = *((char **)t1);
    t1 = (t0 + 11400);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_8(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(307, ng0);

LAB3:    t1 = (t0 + 5032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11464);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 10696);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(308, ng0);

LAB3:    t1 = (t0 + 4872U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11528);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 10712);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(309, ng0);

LAB3:    t1 = (t0 + 11592);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_11(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(311, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11656);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 10728);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void uart_cntrl_v1_00_c_a_2961576509_3306564128_p_12(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(312, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 11720);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 10744);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void uart_cntrl_v1_00_c_a_2961576509_3306564128_init()
{
	static char *pe[] = {(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_0,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_1,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_2,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_3,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_4,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_5,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_6,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_7,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_8,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_9,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_10,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_11,(void *)uart_cntrl_v1_00_c_a_2961576509_3306564128_p_12};
	xsi_register_didat("uart_cntrl_v1_00_c_a_2961576509_3306564128", "isim/isim_system.exe.sim/uart_cntrl_v1_00_c/a_2961576509_3306564128.didat");
	xsi_register_executes(pe);
}
