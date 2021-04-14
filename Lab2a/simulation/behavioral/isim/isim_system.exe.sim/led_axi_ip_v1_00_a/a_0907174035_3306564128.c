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
static const char *ng0 = "E:/FaksHub/2020_2021/2.Semester_2020_2021/LRI2/Labs/LRI2_Labs/Lab2a/pcores/led_axi_ip_v1_00_a/hdl/vhdl/user_logic.vhd";



static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_0(char *t0)
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

LAB0:    xsi_set_current_line(160, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 6216);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 1U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 6072);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_1(char *t0)
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
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(161, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6280);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6088);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_2(char *t0)
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
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 1152U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6104);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(168, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)2);
    if (t10 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(171, ng0);
    t2 = (t0 + 2952U);
    t4 = *((char **)t2);
    t2 = (t0 + 11146);
    t17 = xsi_mem_cmp(t2, t4, 1U);
    if (t17 == 1)
        goto LAB12;

LAB14:
LAB13:    xsi_set_current_line(174, ng0);

LAB11:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(169, ng0);
    t4 = xsi_get_transient_memory(8U);
    memset(t4, 0, 8U);
    t11 = t4;
    memset(t11, (unsigned char)2, 8U);
    t12 = (t0 + 6344);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t4, 8U);
    xsi_driver_first_trans_fast(t12);
    goto LAB9;

LAB12:    xsi_set_current_line(173, ng0);
    t8 = (t0 + 1512U);
    t11 = *((char **)t8);
    t18 = (31 - 7);
    t19 = (t18 * 1U);
    t20 = (0 + t19);
    t8 = (t11 + t20);
    t12 = (t0 + 6344);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t8, 8U);
    xsi_driver_first_trans_fast(t12);
    goto LAB11;

LAB15:;
}

static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(181, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 6408);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 6120);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(186, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6472);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 6136);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void led_axi_ip_v1_00_a_a_0907174035_3306564128_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(187, ng0);

LAB3:    t1 = (t0 + 6536);
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


extern void led_axi_ip_v1_00_a_a_0907174035_3306564128_init()
{
	static char *pe[] = {(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_0,(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_1,(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_2,(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_3,(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_4,(void *)led_axi_ip_v1_00_a_a_0907174035_3306564128_p_5};
	xsi_register_didat("led_axi_ip_v1_00_a_a_0907174035_3306564128", "isim/isim_system.exe.sim/led_axi_ip_v1_00_a/a_0907174035_3306564128.didat");
	xsi_register_executes(pe);
}
