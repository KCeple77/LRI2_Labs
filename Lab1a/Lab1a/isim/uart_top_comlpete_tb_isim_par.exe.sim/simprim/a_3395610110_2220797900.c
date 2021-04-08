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



static void simprim_a_3395610110_2220797900_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:
LAB3:    t1 = (t0 + 2720);
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


extern void simprim_a_3395610110_2220797900_1636515648_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_1636515648", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_1636515648.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_4185598262_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_4185598262", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_4185598262.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_3919548142_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_3919548142", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_3919548142.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_0114718408_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0114718408", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_0114718408.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_1694909426_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_1694909426", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_1694909426.didat");
	xsi_register_executes(pe);
}

extern void simprim_a_3395610110_2220797900_0433961640_init()
{
	static char *pe[] = {(void *)simprim_a_3395610110_2220797900_p_0};
	xsi_register_didat("simprim_a_3395610110_2220797900_0433961640", "isim/uart_top_comlpete_tb_isim_par.exe.sim/simprim/a_3395610110_2220797900_0433961640.didat");
	xsi_register_executes(pe);
}
