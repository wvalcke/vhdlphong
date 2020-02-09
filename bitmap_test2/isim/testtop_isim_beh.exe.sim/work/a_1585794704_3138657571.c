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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/dumbo/XilinxProjects/PhongVhdlBook/bitmap_test2/list_ch06_01_02_debounce.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_1242562249_sub_3307759752501503797_1035706684(char *, char *, char *, int );


static void work_a_1585794704_3138657571_p_0(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 4248);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(97, ng0);
    t1 = xsi_get_transient_memory(21U);
    memset(t1, 0, 21U);
    t2 = t1;
    memset(t2, (unsigned char)2, 21U);
    t5 = (t0 + 4312);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 21U);
    xsi_driver_first_trans_fast(t5);
    goto LAB3;

LAB5:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t2 = (t0 + 4248);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = t12;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4312);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 21U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    t3 = t11;
    goto LAB9;

}

static void work_a_1585794704_3138657571_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB3, &&LAB6, &&LAB5, &&LAB4};

LAB0:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4440);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 21U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(108, ng0);
    t1 = (t0 + 4504);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4168);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 4568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(112, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(117, ng0);
    t1 = (t0 + 4568);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(118, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(125, ng0);
    t1 = (t0 + 4376);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB2;

LAB5:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 4568);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(129, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB2;

LAB6:    xsi_set_current_line(134, ng0);
    t1 = (t0 + 4568);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(135, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t9 = (t3 == (unsigned char)2);
    if (t9 != 0)
        goto LAB21;

LAB23:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 4376);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB22:    goto LAB2;

LAB7:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 4376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(114, ng0);
    t1 = xsi_get_transient_memory(21U);
    memset(t1, 0, 21U);
    t2 = t1;
    memset(t2, (unsigned char)3, 21U);
    t4 = (t0 + 4440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 21U);
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB10:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 7288U);
    t5 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t10, t4, t1, 1);
    t6 = (t10 + 12U);
    t11 = *((unsigned int *)t6);
    t12 = (1U * t11);
    t13 = (21U != t12);
    if (t13 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 4440);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 21U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7288U);
    t3 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t3 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB11;

LAB13:    xsi_size_not_matching(21U, t12, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(121, ng0);
    t4 = (t0 + 4376);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(122, ng0);
    t1 = (t0 + 4504);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB16;

LAB18:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 4376);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(131, ng0);
    t1 = xsi_get_transient_memory(21U);
    memset(t1, 0, 21U);
    t2 = t1;
    memset(t2, (unsigned char)3, 21U);
    t4 = (t0 + 4440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 21U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB21:    xsi_set_current_line(136, ng0);
    t1 = (t0 + 2152U);
    t4 = *((char **)t1);
    t1 = (t0 + 7288U);
    t5 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t10, t4, t1, 1);
    t6 = (t10 + 12U);
    t11 = *((unsigned int *)t6);
    t12 = (1U * t11);
    t13 = (21U != t12);
    if (t13 == 1)
        goto LAB24;

LAB25:    t7 = (t0 + 4440);
    t8 = (t7 + 56U);
    t14 = *((char **)t8);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 21U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(137, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 7288U);
    t3 = ieee_p_1242562249_sub_3307759752501503797_1035706684(IEEE_P_1242562249, t2, t1, 0);
    if (t3 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB22;

LAB24:    xsi_size_not_matching(21U, t12, 0);
    goto LAB25;

LAB26:    xsi_set_current_line(138, ng0);
    t4 = (t0 + 4376);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t4);
    goto LAB27;

}


extern void work_a_1585794704_3138657571_init()
{
	static char *pe[] = {(void *)work_a_1585794704_3138657571_p_0,(void *)work_a_1585794704_3138657571_p_1};
	xsi_register_didat("work_a_1585794704_3138657571", "isim/testtop_isim_beh.exe.sim/work/a_1585794704_3138657571.didat");
	xsi_register_executes(pe);
}
