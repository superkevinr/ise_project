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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002619568790_1832982193_init();
    work_m_00000000000629409450_4218675861_init();
    work_m_00000000003071221930_4116735314_init();
    work_m_00000000003963343445_3610473807_init();
    work_m_00000000003394880288_1577565344_init();
    work_m_00000000000505951625_1640936723_init();
    work_m_00000000001456870080_3114146686_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001456870080_3114146686");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
