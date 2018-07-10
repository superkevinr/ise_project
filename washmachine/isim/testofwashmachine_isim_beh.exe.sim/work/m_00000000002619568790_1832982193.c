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
static const char *ng0 = "C:/Users/Kevin/Documents/ise_project/washmachine/Divider50MHz.v";
static int ng1[] = {0, 0};
static int ng2[] = {2, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};



static void Always_31_0(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
    char t23[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t5 = (t0 + 1616U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(37, ng0);

LAB14:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 2176);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t0 + 472);
    t12 = *((char **)t6);
    t6 = ((char*)((ng2)));
    t13 = (t0 + 608);
    t19 = *((char **)t13);
    memset(t4, 0, 8);
    xsi_vlog_unsigned_multiply(t4, 32, t6, 32, t19, 32);
    memset(t21, 0, 8);
    xsi_vlog_unsigned_divide(t21, 32, t12, 32, t4, 32);
    t13 = ((char*)((ng3)));
    memset(t22, 0, 8);
    xsi_vlog_unsigned_minus(t22, 32, t21, 32, t13, 32);
    memset(t23, 0, 8);
    t20 = (t5 + 4);
    if (*((unsigned int *)t20) != 0)
        goto LAB16;

LAB15:    t24 = (t22 + 4);
    if (*((unsigned int *)t24) != 0)
        goto LAB16;

LAB19:    if (*((unsigned int *)t5) < *((unsigned int *)t22))
        goto LAB17;

LAB18:    t26 = (t23 + 4);
    t7 = *((unsigned int *)t26);
    t8 = (~(t7));
    t9 = *((unsigned int *)t23);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(40, ng0);

LAB23:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 25, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2016);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB27;

LAB25:    if (*((unsigned int *)t6) == 0)
        goto LAB24;

LAB26:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB27:    t13 = (t4 + 4);
    t19 = (t5 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    *((unsigned int *)t4) = t15;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t19) != 0)
        goto LAB29;

LAB28:    t34 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t34 & 1U);
    t35 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t35 & 1U);
    t20 = (t0 + 2016);
    xsi_vlogvar_wait_assign_value(t20, t4, 0, 0, 1, 0LL);

LAB22:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(33, ng0);

LAB13:    xsi_set_current_line(34, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2016);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 1, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2176);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 25, 0LL);
    goto LAB12;

LAB16:    t25 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB18;

LAB17:    *((unsigned int *)t23) = 1;
    goto LAB18;

LAB20:    xsi_set_current_line(39, ng0);
    t27 = (t0 + 2176);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = ((char*)((ng4)));
    memset(t31, 0, 8);
    xsi_vlog_unsigned_add(t31, 32, t29, 25, t30, 32);
    t32 = (t0 + 2176);
    xsi_vlogvar_wait_assign_value(t32, t31, 0, 0, 25, 0LL);
    goto LAB22;

LAB24:    *((unsigned int *)t4) = 1;
    goto LAB27;

LAB29:    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t19);
    *((unsigned int *)t4) = (t16 | t17);
    t18 = *((unsigned int *)t13);
    t33 = *((unsigned int *)t19);
    *((unsigned int *)t13) = (t18 | t33);
    goto LAB28;

}


extern void work_m_00000000002619568790_1832982193_init()
{
	static char *pe[] = {(void *)Always_31_0};
	xsi_register_didat("work_m_00000000002619568790_1832982193", "isim/testofwashmachine_isim_beh.exe.sim/work/m_00000000002619568790_1832982193.didat");
	xsi_register_executes(pe);
}
