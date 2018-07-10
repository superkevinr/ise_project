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
static const char *ng0 = "C:/Users/Kevin/Documents/ise_project/revertablecounter/revertableclocktop.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {15U, 0U};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {1, 0};



static void Always_36_0(char *t0)
{
    char t4[8];
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
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3896);
    *((int *)t2) = 1;
    t3 = (t0 + 3360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(37, ng0);
    t5 = (t0 + 1368U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t5) == 0)
        goto LAB5;

LAB7:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB8:    t13 = (t4 + 4);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB10;

LAB9:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);

LAB14:    t2 = ((char*)((ng1)));
    t31 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 1);
    if (t31 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng3)));
    t31 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 1);
    if (t31 == 1)
        goto LAB17;

LAB18:
LAB19:
LAB13:    goto LAB2;

LAB5:    *((unsigned int *)t4) = 1;
    goto LAB8;

LAB10:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB9;

LAB11:    xsi_set_current_line(37, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t30, t29, 0, 0, 4, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(39, ng0);

LAB20:    xsi_set_current_line(40, ng0);
    t5 = (t0 + 2408);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t14 = (t12 + 4);
    t23 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t14);
    t11 = *((unsigned int *)t23);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t23);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB24;

LAB21:    if (t19 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t4) = 1;

LAB24:    t30 = (t4 + 4);
    t22 = *((unsigned int *)t30);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB25;

LAB26:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2408);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 4, t6, 4, t12, 4);
    t13 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 4, 0LL);

LAB27:    goto LAB19;

LAB17:    xsi_set_current_line(44, ng0);

LAB29:    xsi_set_current_line(45, ng0);
    t5 = (t0 + 2408);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t14 = (t12 + 4);
    t23 = (t13 + 4);
    t7 = *((unsigned int *)t12);
    t8 = *((unsigned int *)t13);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t14);
    t11 = *((unsigned int *)t23);
    t15 = (t10 ^ t11);
    t16 = (t9 | t15);
    t17 = *((unsigned int *)t14);
    t18 = *((unsigned int *)t23);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB33;

LAB30:    if (t19 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t4) = 1;

LAB33:    t30 = (t4 + 4);
    t22 = *((unsigned int *)t30);
    t24 = (~(t22));
    t25 = *((unsigned int *)t4);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2408);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t12 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 4, t6, 4, t12, 4);
    t13 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t13, t4, 0, 0, 4, 0LL);

LAB36:    goto LAB19;

LAB23:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB24;

LAB25:    xsi_set_current_line(40, ng0);

LAB28:    xsi_set_current_line(40, ng0);
    t32 = ((char*)((ng1)));
    t33 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 4, 0LL);
    goto LAB27;

LAB32:    t29 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(45, ng0);

LAB37:    xsi_set_current_line(45, ng0);
    t32 = ((char*)((ng2)));
    t33 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t33, t32, 0, 0, 4, 0LL);
    goto LAB36;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng4)));
    t3 = (t0 + 3976);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8);
    xsi_driver_vfirst_trans(t3, 0, 31);

LAB1:    return;
}


extern void work_m_00000000000954968892_2988415799_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)implSig1_execute};
	xsi_register_didat("work_m_00000000000954968892_2988415799", "isim/testofrevertableclock_isim_beh.exe.sim/work/m_00000000000954968892_2988415799.didat");
	xsi_register_executes(pe);
}
