////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_washmachine_map.v
// /___/   /\     Timestamp: Fri Mar 09 17:57:52 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf top_washmachine.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim top_washmachine_map.ncd top_washmachine_map.v 
// Device	: 3s100ecp132-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: top_washmachine_map.ncd
// Output file	: C:\Users\Kevin\Documents\ise_project\washmachine\netgen\map\top_washmachine_map.v
// # of Modules	: 1
// Design Name	: top_washmachine
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top_washmachine (
  forward, CLR, start, emergency, off, CLK_50, add, backward, alarm, HEX0, SEL
);
  output forward;
  input CLR;
  input start;
  input emergency;
  output off;
  input CLK_50;
  input add;
  output backward;
  output alarm;
  output [6 : 0] HEX0;
  output [1 : 0] SEL;
  wire \C1/Q_cmp_eq0000_0 ;
  wire \U0/CLK_1HzOut_782 ;
  wire nCR_783;
  wire emergency_IBUF_788;
  wire CLK_50_BUFGP;
  wire start_IBUF_790;
  wire state_FSM_FFd1_791;
  wire state_FSM_FFd2_792;
  wire state_cmp_eq0001;
  wire N01;
  wire times_not0001;
  wire add_BUFGP;
  wire CLR_IBUF_801;
  wire EN_or0000_0;
  wire EN_809;
  wire \D0/scan_0_820 ;
  wire \D0/clk_821 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ;
  wire state_cmp_eq0002;
  wire backward_OBUF_828;
  wire \D0/count_cmp_eq0000 ;
  wire \D0/Mcount_count_cy[1] ;
  wire \D0/Mcount_count_cy[3] ;
  wire \D0/Mcount_count_cy[5] ;
  wire \D0/Mcount_count_cy[7] ;
  wire \D0/Mcount_count_cy[9] ;
  wire \D0/Mcount_count_cy[11] ;
  wire \D0/Mcount_count_cy[13] ;
  wire \D0/Mcount_count_cy[15] ;
  wire off_OBUF_906;
  wire forward_OBUF_907;
  wire \Mcount_times_xor<2>1_SW0/O ;
  wire \EN_mux0000_SW0/O ;
  wire \Mcount_times_xor<3>1_SW1/O ;
  wire \nCR/REVUSED_977 ;
  wire \nCR/DYMUX_976 ;
  wire nCR_mux0000;
  wire \nCR/SRINVNOT ;
  wire \nCR/CLKINV_966 ;
  wire \C2/Q<3>/DXMUX_950 ;
  wire \C2/Mcount_Q3 ;
  wire \C2/Q<3>/DYMUX_935 ;
  wire \C2/Mcount_Q2 ;
  wire \C2/Q<3>/SRINVNOT ;
  wire \C2/Q<3>/CLKINV_926 ;
  wire \C2/Q<3>/CEINV_925 ;
  wire \times<1>/DXMUX_1016 ;
  wire Mcount_times1;
  wire \times<1>/DYMUX_1004 ;
  wire Mcount_times;
  wire \times<1>/CLKINV_995 ;
  wire \times<1>/CEINV_994 ;
  wire \C1/Q<0>/FFY/RST ;
  wire \C1/Q<0>/DXMUX_1140 ;
  wire \C1/Q_cmp_eq0000 ;
  wire \C1/Q<0>/DYMUX_1124 ;
  wire \C1/Mcount_Q1 ;
  wire \C1/Q<0>/SRINVNOT ;
  wire \C1/Q<0>/CLKINV_1115 ;
  wire \C1/Q<0>/CEINV_1114 ;
  wire \loops<3>/DXMUX_1056 ;
  wire Mcount_loops3;
  wire \loops<3>/DYMUX_1042 ;
  wire Mcount_loops2;
  wire \loops<3>/SRINV_1033 ;
  wire \loops<3>/CLKINV_1032 ;
  wire EN_or0000;
  wire alarm_OBUF_1096;
  wire N01_pack_1;
  wire \U0/Count_DIV<0>/DXMUX_1461 ;
  wire \U0/Count_DIV<0>/XORF_1459 ;
  wire \U0/Count_DIV<0>/LOGIC_ONE_1458 ;
  wire \U0/Count_DIV<0>/CYINIT_1457 ;
  wire \U0/Count_DIV<0>/CYSELF_1448 ;
  wire \U0/Count_DIV<0>/BXINV_1446 ;
  wire \U0/Count_DIV<0>/DYMUX_1441 ;
  wire \U0/Count_DIV<0>/XORG_1439 ;
  wire \U0/Count_DIV<0>/CYMUXG_1438 ;
  wire \U0/Count_DIV<0>/LOGIC_ZERO_1436 ;
  wire \U0/Count_DIV<0>/CYSELG_1427 ;
  wire \U0/Count_DIV<0>/G ;
  wire \U0/Count_DIV<0>/SRINV_1425 ;
  wire \U0/Count_DIV<0>/CLKINV_1424 ;
  wire \U0/Count_DIV<4>/DXMUX_1565 ;
  wire \U0/Count_DIV<4>/XORF_1563 ;
  wire \U0/Count_DIV<4>/CYINIT_1562 ;
  wire \U0/Count_DIV<4>/F ;
  wire \U0/Count_DIV<4>/DYMUX_1548 ;
  wire \U0/Count_DIV<4>/XORG_1546 ;
  wire \U0/Count_DIV<4>/CYSELF_1544 ;
  wire \U0/Count_DIV<4>/CYMUXFAST_1543 ;
  wire \U0/Count_DIV<4>/CYAND_1542 ;
  wire \U0/Count_DIV<4>/FASTCARRY_1541 ;
  wire \U0/Count_DIV<4>/CYMUXG2_1540 ;
  wire \U0/Count_DIV<4>/CYMUXF2_1539 ;
  wire \U0/Count_DIV<4>/LOGIC_ZERO_1538 ;
  wire \U0/Count_DIV<4>/CYSELG_1529 ;
  wire \U0/Count_DIV<4>/G ;
  wire \U0/Count_DIV<4>/SRINV_1527 ;
  wire \U0/Count_DIV<4>/CLKINV_1526 ;
  wire \D0/clk/DYMUX_1411 ;
  wire \D0/clk/CLKINV_1409 ;
  wire \D0/clk/CEINV_1408 ;
  wire \U0/Count_DIV<2>/DXMUX_1513 ;
  wire \U0/Count_DIV<2>/XORF_1511 ;
  wire \U0/Count_DIV<2>/CYINIT_1510 ;
  wire \U0/Count_DIV<2>/F ;
  wire \U0/Count_DIV<2>/DYMUX_1496 ;
  wire \U0/Count_DIV<2>/XORG_1494 ;
  wire \U0/Count_DIV<2>/CYSELF_1492 ;
  wire \U0/Count_DIV<2>/CYMUXFAST_1491 ;
  wire \U0/Count_DIV<2>/CYAND_1490 ;
  wire \U0/Count_DIV<2>/FASTCARRY_1489 ;
  wire \U0/Count_DIV<2>/CYMUXG2_1488 ;
  wire \U0/Count_DIV<2>/CYMUXF2_1487 ;
  wire \U0/Count_DIV<2>/LOGIC_ZERO_1486 ;
  wire \U0/Count_DIV<2>/CYSELG_1477 ;
  wire \U0/Count_DIV<2>/G ;
  wire \U0/Count_DIV<2>/SRINV_1475 ;
  wire \U0/Count_DIV<2>/CLKINV_1474 ;
  wire \U0/Count_DIV<6>/DXMUX_1617 ;
  wire \U0/Count_DIV<6>/XORF_1615 ;
  wire \U0/Count_DIV<6>/CYINIT_1614 ;
  wire \U0/Count_DIV<6>/F ;
  wire \U0/Count_DIV<6>/DYMUX_1600 ;
  wire \U0/Count_DIV<6>/XORG_1598 ;
  wire \U0/Count_DIV<6>/CYSELF_1596 ;
  wire \U0/Count_DIV<6>/CYMUXFAST_1595 ;
  wire \U0/Count_DIV<6>/CYAND_1594 ;
  wire \U0/Count_DIV<6>/FASTCARRY_1593 ;
  wire \U0/Count_DIV<6>/CYMUXG2_1592 ;
  wire \U0/Count_DIV<6>/CYMUXF2_1591 ;
  wire \U0/Count_DIV<6>/LOGIC_ZERO_1590 ;
  wire \U0/Count_DIV<6>/CYSELG_1581 ;
  wire \U0/Count_DIV<6>/G ;
  wire \U0/Count_DIV<6>/SRINV_1579 ;
  wire \U0/Count_DIV<6>/CLKINV_1578 ;
  wire \U0/Count_DIV<10>/DXMUX_1721 ;
  wire \U0/Count_DIV<10>/XORF_1719 ;
  wire \U0/Count_DIV<10>/CYINIT_1718 ;
  wire \U0/Count_DIV<10>/F ;
  wire \U0/Count_DIV<10>/DYMUX_1704 ;
  wire \U0/Count_DIV<10>/XORG_1702 ;
  wire \U0/Count_DIV<10>/CYSELF_1700 ;
  wire \U0/Count_DIV<10>/CYMUXFAST_1699 ;
  wire \U0/Count_DIV<10>/CYAND_1698 ;
  wire \U0/Count_DIV<10>/FASTCARRY_1697 ;
  wire \U0/Count_DIV<10>/CYMUXG2_1696 ;
  wire \U0/Count_DIV<10>/CYMUXF2_1695 ;
  wire \U0/Count_DIV<10>/LOGIC_ZERO_1694 ;
  wire \U0/Count_DIV<10>/CYSELG_1685 ;
  wire \U0/Count_DIV<10>/G ;
  wire \U0/Count_DIV<10>/SRINV_1683 ;
  wire \U0/Count_DIV<10>/CLKINV_1682 ;
  wire \U0/Count_DIV<12>/DXMUX_1773 ;
  wire \U0/Count_DIV<12>/XORF_1771 ;
  wire \U0/Count_DIV<12>/CYINIT_1770 ;
  wire \U0/Count_DIV<12>/F ;
  wire \U0/Count_DIV<12>/DYMUX_1756 ;
  wire \U0/Count_DIV<12>/XORG_1754 ;
  wire \U0/Count_DIV<12>/CYSELF_1752 ;
  wire \U0/Count_DIV<12>/CYMUXFAST_1751 ;
  wire \U0/Count_DIV<12>/CYAND_1750 ;
  wire \U0/Count_DIV<12>/FASTCARRY_1749 ;
  wire \U0/Count_DIV<12>/CYMUXG2_1748 ;
  wire \U0/Count_DIV<12>/CYMUXF2_1747 ;
  wire \U0/Count_DIV<12>/LOGIC_ZERO_1746 ;
  wire \U0/Count_DIV<12>/CYSELG_1737 ;
  wire \U0/Count_DIV<12>/G ;
  wire \U0/Count_DIV<12>/SRINV_1735 ;
  wire \U0/Count_DIV<12>/CLKINV_1734 ;
  wire \U0/Count_DIV<8>/DXMUX_1669 ;
  wire \U0/Count_DIV<8>/XORF_1667 ;
  wire \U0/Count_DIV<8>/CYINIT_1666 ;
  wire \U0/Count_DIV<8>/F ;
  wire \U0/Count_DIV<8>/DYMUX_1652 ;
  wire \U0/Count_DIV<8>/XORG_1650 ;
  wire \U0/Count_DIV<8>/CYSELF_1648 ;
  wire \U0/Count_DIV<8>/CYMUXFAST_1647 ;
  wire \U0/Count_DIV<8>/CYAND_1646 ;
  wire \U0/Count_DIV<8>/FASTCARRY_1645 ;
  wire \U0/Count_DIV<8>/CYMUXG2_1644 ;
  wire \U0/Count_DIV<8>/CYMUXF2_1643 ;
  wire \U0/Count_DIV<8>/LOGIC_ZERO_1642 ;
  wire \U0/Count_DIV<8>/CYSELG_1633 ;
  wire \U0/Count_DIV<8>/G ;
  wire \U0/Count_DIV<8>/SRINV_1631 ;
  wire \U0/Count_DIV<8>/CLKINV_1630 ;
  wire \U0/Count_DIV<14>/DXMUX_1825 ;
  wire \U0/Count_DIV<14>/XORF_1823 ;
  wire \U0/Count_DIV<14>/CYINIT_1822 ;
  wire \U0/Count_DIV<14>/F ;
  wire \U0/Count_DIV<14>/DYMUX_1808 ;
  wire \U0/Count_DIV<14>/XORG_1806 ;
  wire \U0/Count_DIV<14>/CYSELF_1804 ;
  wire \U0/Count_DIV<14>/CYMUXFAST_1803 ;
  wire \U0/Count_DIV<14>/CYAND_1802 ;
  wire \U0/Count_DIV<14>/FASTCARRY_1801 ;
  wire \U0/Count_DIV<14>/CYMUXG2_1800 ;
  wire \U0/Count_DIV<14>/CYMUXF2_1799 ;
  wire \U0/Count_DIV<14>/LOGIC_ZERO_1798 ;
  wire \U0/Count_DIV<14>/CYSELG_1789 ;
  wire \U0/Count_DIV<14>/G ;
  wire \U0/Count_DIV<14>/SRINV_1787 ;
  wire \U0/Count_DIV<14>/CLKINV_1786 ;
  wire \U0/Count_DIV<18>/DXMUX_1929 ;
  wire \U0/Count_DIV<18>/XORF_1927 ;
  wire \U0/Count_DIV<18>/CYINIT_1926 ;
  wire \U0/Count_DIV<18>/F ;
  wire \U0/Count_DIV<18>/DYMUX_1912 ;
  wire \U0/Count_DIV<18>/XORG_1910 ;
  wire \U0/Count_DIV<18>/CYSELF_1908 ;
  wire \U0/Count_DIV<18>/CYMUXFAST_1907 ;
  wire \U0/Count_DIV<18>/CYAND_1906 ;
  wire \U0/Count_DIV<18>/FASTCARRY_1905 ;
  wire \U0/Count_DIV<18>/CYMUXG2_1904 ;
  wire \U0/Count_DIV<18>/CYMUXF2_1903 ;
  wire \U0/Count_DIV<18>/LOGIC_ZERO_1902 ;
  wire \U0/Count_DIV<18>/CYSELG_1893 ;
  wire \U0/Count_DIV<18>/G ;
  wire \U0/Count_DIV<18>/SRINV_1891 ;
  wire \U0/Count_DIV<18>/CLKINV_1890 ;
  wire \U0/Count_DIV<16>/DXMUX_1877 ;
  wire \U0/Count_DIV<16>/XORF_1875 ;
  wire \U0/Count_DIV<16>/CYINIT_1874 ;
  wire \U0/Count_DIV<16>/F ;
  wire \U0/Count_DIV<16>/DYMUX_1860 ;
  wire \U0/Count_DIV<16>/XORG_1858 ;
  wire \U0/Count_DIV<16>/CYSELF_1856 ;
  wire \U0/Count_DIV<16>/CYMUXFAST_1855 ;
  wire \U0/Count_DIV<16>/CYAND_1854 ;
  wire \U0/Count_DIV<16>/FASTCARRY_1853 ;
  wire \U0/Count_DIV<16>/CYMUXG2_1852 ;
  wire \U0/Count_DIV<16>/CYMUXF2_1851 ;
  wire \U0/Count_DIV<16>/LOGIC_ZERO_1850 ;
  wire \U0/Count_DIV<16>/CYSELG_1841 ;
  wire \U0/Count_DIV<16>/G ;
  wire \U0/Count_DIV<16>/SRINV_1839 ;
  wire \U0/Count_DIV<16>/CLKINV_1838 ;
  wire \U0/Count_DIV<20>/DXMUX_1981 ;
  wire \U0/Count_DIV<20>/XORF_1979 ;
  wire \U0/Count_DIV<20>/CYINIT_1978 ;
  wire \U0/Count_DIV<20>/F ;
  wire \U0/Count_DIV<20>/DYMUX_1964 ;
  wire \U0/Count_DIV<20>/XORG_1962 ;
  wire \U0/Count_DIV<20>/CYSELF_1960 ;
  wire \U0/Count_DIV<20>/CYMUXFAST_1959 ;
  wire \U0/Count_DIV<20>/CYAND_1958 ;
  wire \U0/Count_DIV<20>/FASTCARRY_1957 ;
  wire \U0/Count_DIV<20>/CYMUXG2_1956 ;
  wire \U0/Count_DIV<20>/CYMUXF2_1955 ;
  wire \U0/Count_DIV<20>/LOGIC_ZERO_1954 ;
  wire \U0/Count_DIV<20>/CYSELG_1945 ;
  wire \U0/Count_DIV<20>/G ;
  wire \U0/Count_DIV<20>/SRINV_1943 ;
  wire \U0/Count_DIV<20>/CLKINV_1942 ;
  wire \U0/Count_DIV<22>/DXMUX_2033 ;
  wire \U0/Count_DIV<22>/XORF_2031 ;
  wire \U0/Count_DIV<22>/CYINIT_2030 ;
  wire \U0/Count_DIV<22>/F ;
  wire \U0/Count_DIV<22>/DYMUX_2016 ;
  wire \U0/Count_DIV<22>/XORG_2014 ;
  wire \U0/Count_DIV<22>/CYSELF_2012 ;
  wire \U0/Count_DIV<22>/CYMUXFAST_2011 ;
  wire \U0/Count_DIV<22>/CYAND_2010 ;
  wire \U0/Count_DIV<22>/FASTCARRY_2009 ;
  wire \U0/Count_DIV<22>/CYMUXG2_2008 ;
  wire \U0/Count_DIV<22>/CYMUXF2_2007 ;
  wire \U0/Count_DIV<22>/LOGIC_ZERO_2006 ;
  wire \U0/Count_DIV<22>/CYSELG_1997 ;
  wire \U0/Count_DIV<22>/G ;
  wire \U0/Count_DIV<22>/SRINV_1995 ;
  wire \U0/Count_DIV<22>/CLKINV_1994 ;
  wire \U0/Count_DIV<24>/DXMUX_2057 ;
  wire \U0/Count_DIV<24>/XORF_2055 ;
  wire \U0/Count_DIV<24>/CYINIT_2054 ;
  wire \U0/Count_DIV<24>_rt_2052 ;
  wire \U0/Count_DIV<24>/SRINV_2044 ;
  wire \U0/Count_DIV<24>/CLKINV_2043 ;
  wire \D0/count<0>/DXMUX_2107 ;
  wire \D0/count<0>/XORF_2105 ;
  wire \D0/count<0>/LOGIC_ONE_2104 ;
  wire \D0/count<0>/CYINIT_2103 ;
  wire \D0/count<0>/CYSELF_2094 ;
  wire \D0/count<0>/BXINV_2092 ;
  wire \D0/count<0>/DYMUX_2087 ;
  wire \D0/count<0>/XORG_2085 ;
  wire \D0/count<0>/CYMUXG_2084 ;
  wire \D0/Mcount_count_cy[0] ;
  wire \D0/count<0>/LOGIC_ZERO_2082 ;
  wire \D0/count<0>/CYSELG_2073 ;
  wire \D0/count<0>/G ;
  wire \D0/count<0>/SRINV_2071 ;
  wire \D0/count<0>/CLKINV_2070 ;
  wire \D0/count<2>/DXMUX_2159 ;
  wire \D0/count<2>/XORF_2157 ;
  wire \D0/count<2>/CYINIT_2156 ;
  wire \D0/count<2>/F ;
  wire \D0/count<2>/DYMUX_2142 ;
  wire \D0/count<2>/XORG_2140 ;
  wire \D0/Mcount_count_cy[2] ;
  wire \D0/count<2>/CYSELF_2138 ;
  wire \D0/count<2>/CYMUXFAST_2137 ;
  wire \D0/count<2>/CYAND_2136 ;
  wire \D0/count<2>/FASTCARRY_2135 ;
  wire \D0/count<2>/CYMUXG2_2134 ;
  wire \D0/count<2>/CYMUXF2_2133 ;
  wire \D0/count<2>/LOGIC_ZERO_2132 ;
  wire \D0/count<2>/CYSELG_2123 ;
  wire \D0/count<2>/G ;
  wire \D0/count<2>/SRINV_2121 ;
  wire \D0/count<2>/CLKINV_2120 ;
  wire \D0/count<8>/DXMUX_2315 ;
  wire \D0/count<8>/XORF_2313 ;
  wire \D0/count<8>/CYINIT_2312 ;
  wire \D0/count<8>/F ;
  wire \D0/count<8>/DYMUX_2298 ;
  wire \D0/count<8>/XORG_2296 ;
  wire \D0/Mcount_count_cy[8] ;
  wire \D0/count<8>/CYSELF_2294 ;
  wire \D0/count<8>/CYMUXFAST_2293 ;
  wire \D0/count<8>/CYAND_2292 ;
  wire \D0/count<8>/FASTCARRY_2291 ;
  wire \D0/count<8>/CYMUXG2_2290 ;
  wire \D0/count<8>/CYMUXF2_2289 ;
  wire \D0/count<8>/LOGIC_ZERO_2288 ;
  wire \D0/count<8>/CYSELG_2279 ;
  wire \D0/count<8>/G ;
  wire \D0/count<8>/SRINV_2277 ;
  wire \D0/count<8>/CLKINV_2276 ;
  wire \D0/count<4>/DXMUX_2211 ;
  wire \D0/count<4>/XORF_2209 ;
  wire \D0/count<4>/CYINIT_2208 ;
  wire \D0/count<4>/F ;
  wire \D0/count<4>/DYMUX_2194 ;
  wire \D0/count<4>/XORG_2192 ;
  wire \D0/Mcount_count_cy[4] ;
  wire \D0/count<4>/CYSELF_2190 ;
  wire \D0/count<4>/CYMUXFAST_2189 ;
  wire \D0/count<4>/CYAND_2188 ;
  wire \D0/count<4>/FASTCARRY_2187 ;
  wire \D0/count<4>/CYMUXG2_2186 ;
  wire \D0/count<4>/CYMUXF2_2185 ;
  wire \D0/count<4>/LOGIC_ZERO_2184 ;
  wire \D0/count<4>/CYSELG_2175 ;
  wire \D0/count<4>/G ;
  wire \D0/count<4>/SRINV_2173 ;
  wire \D0/count<4>/CLKINV_2172 ;
  wire \D0/count<10>/DXMUX_2367 ;
  wire \D0/count<10>/XORF_2365 ;
  wire \D0/count<10>/CYINIT_2364 ;
  wire \D0/count<10>/F ;
  wire \D0/count<10>/DYMUX_2350 ;
  wire \D0/count<10>/XORG_2348 ;
  wire \D0/Mcount_count_cy[10] ;
  wire \D0/count<10>/CYSELF_2346 ;
  wire \D0/count<10>/CYMUXFAST_2345 ;
  wire \D0/count<10>/CYAND_2344 ;
  wire \D0/count<10>/FASTCARRY_2343 ;
  wire \D0/count<10>/CYMUXG2_2342 ;
  wire \D0/count<10>/CYMUXF2_2341 ;
  wire \D0/count<10>/LOGIC_ZERO_2340 ;
  wire \D0/count<10>/CYSELG_2331 ;
  wire \D0/count<10>/G ;
  wire \D0/count<10>/SRINV_2329 ;
  wire \D0/count<10>/CLKINV_2328 ;
  wire \D0/count<12>/DXMUX_2419 ;
  wire \D0/count<12>/XORF_2417 ;
  wire \D0/count<12>/CYINIT_2416 ;
  wire \D0/count<12>/F ;
  wire \D0/count<12>/DYMUX_2402 ;
  wire \D0/count<12>/XORG_2400 ;
  wire \D0/Mcount_count_cy[12] ;
  wire \D0/count<12>/CYSELF_2398 ;
  wire \D0/count<12>/CYMUXFAST_2397 ;
  wire \D0/count<12>/CYAND_2396 ;
  wire \D0/count<12>/FASTCARRY_2395 ;
  wire \D0/count<12>/CYMUXG2_2394 ;
  wire \D0/count<12>/CYMUXF2_2393 ;
  wire \D0/count<12>/LOGIC_ZERO_2392 ;
  wire \D0/count<12>/CYSELG_2383 ;
  wire \D0/count<12>/G ;
  wire \D0/count<12>/SRINV_2381 ;
  wire \D0/count<12>/CLKINV_2380 ;
  wire \D0/count<6>/DXMUX_2263 ;
  wire \D0/count<6>/XORF_2261 ;
  wire \D0/count<6>/CYINIT_2260 ;
  wire \D0/count<6>/F ;
  wire \D0/count<6>/DYMUX_2246 ;
  wire \D0/count<6>/XORG_2244 ;
  wire \D0/Mcount_count_cy[6] ;
  wire \D0/count<6>/CYSELF_2242 ;
  wire \D0/count<6>/CYMUXFAST_2241 ;
  wire \D0/count<6>/CYAND_2240 ;
  wire \D0/count<6>/FASTCARRY_2239 ;
  wire \D0/count<6>/CYMUXG2_2238 ;
  wire \D0/count<6>/CYMUXF2_2237 ;
  wire \D0/count<6>/LOGIC_ZERO_2236 ;
  wire \D0/count<6>/CYSELG_2227 ;
  wire \D0/count<6>/G ;
  wire \D0/count<6>/SRINV_2225 ;
  wire \D0/count<6>/CLKINV_2224 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYSELF_2625 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYMUXFAST_2624 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYAND_2623 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/FASTCARRY_2622 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYMUXG2_2621 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYMUXF2_2620 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_2619 ;
  wire \D0/count_cmp_eq0000_wg_cy<3>/CYSELG_2613 ;
  wire \D0/count<16>/DXMUX_2523 ;
  wire \D0/count<16>/XORF_2521 ;
  wire \D0/count<16>/CYINIT_2520 ;
  wire \D0/count<16>/F ;
  wire \D0/count<16>/DYMUX_2506 ;
  wire \D0/count<16>/XORG_2504 ;
  wire \D0/Mcount_count_cy[16] ;
  wire \D0/count<16>/CYSELF_2502 ;
  wire \D0/count<16>/CYMUXFAST_2501 ;
  wire \D0/count<16>/CYAND_2500 ;
  wire \D0/count<16>/FASTCARRY_2499 ;
  wire \D0/count<16>/CYMUXG2_2498 ;
  wire \D0/count<16>/CYMUXF2_2497 ;
  wire \D0/count<16>/LOGIC_ZERO_2496 ;
  wire \D0/count<16>/CYSELG_2487 ;
  wire \D0/count<16>/G ;
  wire \D0/count<16>/SRINV_2485 ;
  wire \D0/count<16>/CLKINV_2484 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYINIT_2675 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELF_2669 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[0] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/BXINV_2667 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYMUXG_2666 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[0] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/LOGIC_ZERO_2664 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELG_2656 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[1] ;
  wire \D0/count<18>/DXMUX_2568 ;
  wire \D0/count<18>/XORF_2566 ;
  wire \D0/count<18>/LOGIC_ZERO_2565 ;
  wire \D0/count<18>/CYINIT_2564 ;
  wire \D0/count<18>/CYSELF_2555 ;
  wire \D0/count<18>/F ;
  wire \D0/count<18>/DYMUX_2549 ;
  wire \D0/count<18>/XORG_2547 ;
  wire \D0/Mcount_count_cy[18] ;
  wire \D0/count<19>_rt_2544 ;
  wire \D0/count<18>/SRINV_2536 ;
  wire \D0/count<18>/CLKINV_2535 ;
  wire \D0/count<14>/DXMUX_2471 ;
  wire \D0/count<14>/XORF_2469 ;
  wire \D0/count<14>/CYINIT_2468 ;
  wire \D0/count<14>/F ;
  wire \D0/count<14>/DYMUX_2454 ;
  wire \D0/count<14>/XORG_2452 ;
  wire \D0/Mcount_count_cy[14] ;
  wire \D0/count<14>/CYSELF_2450 ;
  wire \D0/count<14>/CYMUXFAST_2449 ;
  wire \D0/count<14>/CYAND_2448 ;
  wire \D0/count<14>/FASTCARRY_2447 ;
  wire \D0/count<14>/CYMUXG2_2446 ;
  wire \D0/count<14>/CYMUXF2_2445 ;
  wire \D0/count<14>/LOGIC_ZERO_2444 ;
  wire \D0/count<14>/CYSELG_2435 ;
  wire \D0/count<14>/G ;
  wire \D0/count<14>/SRINV_2433 ;
  wire \D0/count<14>/CLKINV_2432 ;
  wire \D0/count_cmp_eq0000/LOGIC_ZERO_2646 ;
  wire \D0/count_cmp_eq0000/CYINIT_2645 ;
  wire \D0/count_cmp_eq0000/CYSELF_2639 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/CYINIT_2601 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/CYSELF_2595 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/BXINV_2593 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/CYMUXG_2592 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_2590 ;
  wire \D0/count_cmp_eq0000_wg_cy<1>/CYSELG_2584 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[2] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELF_2699 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXFAST_2698 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYAND_2697 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/FASTCARRY_2696 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXG2_2695 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXF2_2694 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE_2693 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELG_2684 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[3] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ZERO_2736 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[4] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELF_2729 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXFAST_2728 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYAND_2727 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/FASTCARRY_2726 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXG2_2725 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXF2_2724 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ONE_2723 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELG_2714 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[5] ;
  wire \loops<0>/DXMUX_1397 ;
  wire \loops<0>/DYMUX_1389 ;
  wire Mcount_loops1;
  wire \loops<0>/SRINV_1379 ;
  wire \loops<0>/CLKINV_1378 ;
  wire HEX0_5_OBUF_1311;
  wire \D0/iDIG<2>_pack_1 ;
  wire HEX0_2_OBUF_1263;
  wire \D0/iDIG<0>_pack_1 ;
  wire HEX0_4_OBUF_1287;
  wire \D0/iDIG<1>_pack_1 ;
  wire \backward_OBUF/DXMUX_1366 ;
  wire backward_mux0000;
  wire state_cmp_eq0001_pack_1;
  wire \backward_OBUF/SRINV_1351 ;
  wire \backward_OBUF/CLKINV_1350 ;
  wire HEX0_3_OBUF_1169;
  wire HEX0_0_OBUF_1162;
  wire HEX0_1_OBUF_1335;
  wire \D0/iDIG<3>_pack_1 ;
  wire \C2/Q<0>/DXMUX_1201 ;
  wire \C2/Q<0>/DYMUX_1192 ;
  wire \C2/Mcount_Q1 ;
  wire \C2/Q<0>/SRINVNOT ;
  wire \C2/Q<0>/CLKINV_1183 ;
  wire \C2/Q<0>/CEINV_1182 ;
  wire HEX0_6_OBUF_1218;
  wire \U0/CLK_1HzOut/DYMUX_1237 ;
  wire \U0/CLK_1HzOut/CLKINV_1235 ;
  wire \U0/CLK_1HzOut/CEINV_1234 ;
  wire \D0/scan_0/DYMUX_1226 ;
  wire \D0/scan_0/CLKINV_1224 ;
  wire \alarm/O ;
  wire \HEX0<4>/O ;
  wire \HEX0<5>/O ;
  wire \SEL<0>/O ;
  wire \HEX0<6>/O ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ZERO_2767 ;
  wire \U0/Count_DIV<16>_rt ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELF_2757 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXFAST_2756 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYAND_2755 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/FASTCARRY_2754 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXG2_2753 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXF2_2752 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ONE_2751 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELG_2742 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[7] ;
  wire \HEX0<1>/O ;
  wire \HEX0<2>/O ;
  wire \off/O ;
  wire \SEL<1>/O ;
  wire \HEX0<3>/O ;
  wire \HEX0<0>/O ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[8] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELF_2791 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXFAST_2790 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYAND_2789 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/FASTCARRY_2788 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXG2_2787 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXF2_2786 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO_2785 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELG_2776 ;
  wire \U0/Count_DIV<22>_rt ;
  wire \CLK_50/INBUF ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ONE_2828 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[10] ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELF_2818 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXFAST_2817 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYAND_2816 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/FASTCARRY_2815 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXG2_2814 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXF2_2813 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ZERO_2812 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELG_2803 ;
  wire \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/G ;
  wire \emergency/INBUF ;
  wire \start/INBUF ;
  wire \backward/O ;
  wire \forward/O ;
  wire \C1/Q<3>/DXMUX_3278 ;
  wire \C1/Mcount_Q3 ;
  wire \C1/Q<3>/DYMUX_3263 ;
  wire \C1/Mcount_Q2 ;
  wire \C1/Q<3>/SRINVNOT ;
  wire \C1/Q<3>/CLKINV_3253 ;
  wire \C1/Q<3>/CEINV_3252 ;
  wire \CLR/INBUF ;
  wire \CLK_50_BUFGP/BUFG/S_INVNOT ;
  wire \CLK_50_BUFGP/BUFG/I0_INV ;
  wire \state_cmp_eq0002/F5MUX_3030 ;
  wire \state_cmp_eq0002/F ;
  wire \state_cmp_eq0002/BXINV_3019 ;
  wire state_cmp_eq00021_3017;
  wire \add/INBUF ;
  wire \off_OBUF/DXMUX_3064 ;
  wire \off_OBUF/F5MUX_3062 ;
  wire N37;
  wire \off_OBUF/BXINV_3055 ;
  wire \off_OBUF/REVUSED_3054 ;
  wire N36;
  wire \off_OBUF/SRINVNOT ;
  wire \off_OBUF/CLKINV_3045 ;
  wire \times_not0001/F5MUX_3093 ;
  wire times_not00011;
  wire \times_not0001/BXINV_3083 ;
  wire times_not00012_3081;
  wire \add_BUFGP/BUFG/S_INVNOT ;
  wire \add_BUFGP/BUFG/I0_INV ;
  wire \forward_OBUF/DXMUX_3002 ;
  wire \forward_OBUF/F5MUX_3000 ;
  wire forward_mux00001_2998;
  wire \forward_OBUF/BXINV_2991 ;
  wire forward_mux00002_2989;
  wire \forward_OBUF/SRINV_2983 ;
  wire \forward_OBUF/CLKINV_2982 ;
  wire \times<3>/DXMUX_3193 ;
  wire Mcount_times3;
  wire \Mcount_times_xor<3>1_SW1/O_pack_2 ;
  wire \times<3>/CLKINV_3177 ;
  wire \times<3>/CEINV_3176 ;
  wire \EN_mux0000_SW0/O_pack_1 ;
  wire \EN/REVUSED_3151 ;
  wire \EN/DYMUX_3150 ;
  wire EN_mux00001_3147;
  wire \EN/SRINV_3140 ;
  wire \EN/CLKINV_3139 ;
  wire \state_FSM_FFd2/DXMUX_3234 ;
  wire \state_FSM_FFd2-In ;
  wire \state_FSM_FFd2/DYMUX_3221 ;
  wire \state_FSM_FFd1-In ;
  wire \state_FSM_FFd2/SRINVNOT ;
  wire \state_FSM_FFd2/CLKINV_3211 ;
  wire \state_FSM_FFd2/CEINVNOT ;
  wire \times<2>/DXMUX_3123 ;
  wire Mcount_times2;
  wire \Mcount_times_xor<2>1_SW0/O_pack_2 ;
  wire \times<2>/CLKINV_3106 ;
  wire \times<2>/CEINV_3105 ;
  wire GND;
  wire VCC;
  wire [3 : 0] \C2/Q ;
  wire [3 : 0] times;
  wire [3 : 0] loops;
  wire [3 : 0] \C1/Q ;
  wire [3 : 0] \D0/iDIG ;
  wire [24 : 0] \U0/Count_DIV ;
  wire [22 : 0] \U0/Mcount_Count_DIV_cy ;
  wire [19 : 0] \D0/count ;
  wire [0 : 0] \U0/Mcount_Count_DIV_lut ;
  wire [0 : 0] \D0/Mcount_count_lut ;
  wire [4 : 0] \D0/count_cmp_eq0000_wg_lut ;
  wire [0 : 0] \D0/count_cmp_eq0000_wg_cy ;
  initial $sdf_annotate("netgen/map/top_washmachine_map.sdf");
  X_BUF   \nCR/REVUSED  (
    .I(emergency_IBUF_788),
    .O(\nCR/REVUSED_977 )
  );
  X_BUF   \nCR/DYMUX  (
    .I(nCR_mux0000),
    .O(\nCR/DYMUX_976 )
  );
  X_INV   \nCR/SRINV  (
    .I(start_IBUF_790),
    .O(\nCR/SRINVNOT )
  );
  X_BUF   \nCR/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\nCR/CLKINV_966 )
  );
  X_BUF   \C2/Q<3>/DXMUX  (
    .I(\C2/Mcount_Q3 ),
    .O(\C2/Q<3>/DXMUX_950 )
  );
  X_BUF   \C2/Q<3>/DYMUX  (
    .I(\C2/Mcount_Q2 ),
    .O(\C2/Q<3>/DYMUX_935 )
  );
  X_INV   \C2/Q<3>/SRINV  (
    .I(nCR_783),
    .O(\C2/Q<3>/SRINVNOT )
  );
  X_BUF   \C2/Q<3>/CLKINV  (
    .I(\U0/CLK_1HzOut_782 ),
    .O(\C2/Q<3>/CLKINV_926 )
  );
  X_BUF   \C2/Q<3>/CEINV  (
    .I(\C1/Q_cmp_eq0000_0 ),
    .O(\C2/Q<3>/CEINV_925 )
  );
  X_BUF   \times<1>/DXMUX  (
    .I(Mcount_times1),
    .O(\times<1>/DXMUX_1016 )
  );
  X_BUF   \times<1>/DYMUX  (
    .I(Mcount_times),
    .O(\times<1>/DYMUX_1004 )
  );
  X_BUF   \times<1>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\times<1>/CLKINV_995 )
  );
  X_BUF   \times<1>/CEINV  (
    .I(times_not0001),
    .O(\times<1>/CEINV_994 )
  );
  X_BUF   \C1/Q<0>/FFY/RSTOR  (
    .I(\C1/Q<0>/SRINVNOT ),
    .O(\C1/Q<0>/FFY/RST )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C1/Q_1  (
    .I(\C1/Q<0>/DYMUX_1124 ),
    .CE(\C1/Q<0>/CEINV_1114 ),
    .CLK(\C1/Q<0>/CLKINV_1115 ),
    .SET(GND),
    .RST(\C1/Q<0>/FFY/RST ),
    .O(\C1/Q [1])
  );
  X_INV   \C1/Q<0>/DXMUX  (
    .I(\C1/Q [0]),
    .O(\C1/Q<0>/DXMUX_1140 )
  );
  X_BUF   \C1/Q<0>/XUSED  (
    .I(\C1/Q_cmp_eq0000 ),
    .O(\C1/Q_cmp_eq0000_0 )
  );
  X_BUF   \C1/Q<0>/DYMUX  (
    .I(\C1/Mcount_Q1 ),
    .O(\C1/Q<0>/DYMUX_1124 )
  );
  X_INV   \C1/Q<0>/SRINV  (
    .I(nCR_783),
    .O(\C1/Q<0>/SRINVNOT )
  );
  X_BUF   \C1/Q<0>/CLKINV  (
    .I(\U0/CLK_1HzOut_782 ),
    .O(\C1/Q<0>/CLKINV_1115 )
  );
  X_BUF   \C1/Q<0>/CEINV  (
    .I(EN_809),
    .O(\C1/Q<0>/CEINV_1114 )
  );
  X_BUF   \loops<3>/DXMUX  (
    .I(Mcount_loops3),
    .O(\loops<3>/DXMUX_1056 )
  );
  X_BUF   \loops<3>/DYMUX  (
    .I(Mcount_loops2),
    .O(\loops<3>/DYMUX_1042 )
  );
  X_BUF   \loops<3>/SRINV  (
    .I(CLR_IBUF_801),
    .O(\loops<3>/SRINV_1033 )
  );
  X_BUF   \loops<3>/CLKINV  (
    .I(add_BUFGP),
    .O(\loops<3>/CLKINV_1032 )
  );
  X_LUT4 #(
    .INIT ( 16'h6466 ))
  \C1/Mcount_Q_xor<1>11  (
    .ADR0(\C1/Q [0]),
    .ADR1(\C1/Q [1]),
    .ADR2(\C1/Q [2]),
    .ADR3(\C1/Q [3]),
    .O(\C1/Mcount_Q1 )
  );
  X_BUF   \EN_or0000/YUSED  (
    .I(EN_or0000),
    .O(EN_or0000_0)
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  alarm_or00001 (
    .ADR0(N01),
    .ADR1(emergency_IBUF_788),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(alarm_OBUF_1096)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  off_mux000011 (
    .ADR0(times[3]),
    .ADR1(times[2]),
    .ADR2(times[1]),
    .ADR3(times[0]),
    .O(N01_pack_1)
  );
  X_BUF   \alarm_OBUF/YUSED  (
    .I(N01_pack_1),
    .O(N01)
  );
  X_ZERO   \U0/Count_DIV<0>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<0>/LOGIC_ZERO_1436 )
  );
  X_ONE   \U0/Count_DIV<0>/LOGIC_ONE  (
    .O(\U0/Count_DIV<0>/LOGIC_ONE_1458 )
  );
  X_BUF   \U0/Count_DIV<0>/DXMUX  (
    .I(\U0/Count_DIV<0>/XORF_1459 ),
    .O(\U0/Count_DIV<0>/DXMUX_1461 )
  );
  X_XOR2   \U0/Count_DIV<0>/XORF  (
    .I0(\U0/Count_DIV<0>/CYINIT_1457 ),
    .I1(\U0/Mcount_Count_DIV_lut [0]),
    .O(\U0/Count_DIV<0>/XORF_1459 )
  );
  X_MUX2   \U0/Count_DIV<0>/CYMUXF  (
    .IA(\U0/Count_DIV<0>/LOGIC_ONE_1458 ),
    .IB(\U0/Count_DIV<0>/CYINIT_1457 ),
    .SEL(\U0/Count_DIV<0>/CYSELF_1448 ),
    .O(\U0/Mcount_Count_DIV_cy [0])
  );
  X_BUF   \U0/Count_DIV<0>/CYINIT  (
    .I(\U0/Count_DIV<0>/BXINV_1446 ),
    .O(\U0/Count_DIV<0>/CYINIT_1457 )
  );
  X_BUF   \U0/Count_DIV<0>/CYSELF  (
    .I(\U0/Mcount_Count_DIV_lut [0]),
    .O(\U0/Count_DIV<0>/CYSELF_1448 )
  );
  X_BUF   \U0/Count_DIV<0>/BXINV  (
    .I(1'b0),
    .O(\U0/Count_DIV<0>/BXINV_1446 )
  );
  X_BUF   \U0/Count_DIV<0>/DYMUX  (
    .I(\U0/Count_DIV<0>/XORG_1439 ),
    .O(\U0/Count_DIV<0>/DYMUX_1441 )
  );
  X_XOR2   \U0/Count_DIV<0>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [0]),
    .I1(\U0/Count_DIV<0>/G ),
    .O(\U0/Count_DIV<0>/XORG_1439 )
  );
  X_BUF   \U0/Count_DIV<0>/COUTUSED  (
    .I(\U0/Count_DIV<0>/CYMUXG_1438 ),
    .O(\U0/Mcount_Count_DIV_cy [1])
  );
  X_MUX2   \U0/Count_DIV<0>/CYMUXG  (
    .IA(\U0/Count_DIV<0>/LOGIC_ZERO_1436 ),
    .IB(\U0/Mcount_Count_DIV_cy [0]),
    .SEL(\U0/Count_DIV<0>/CYSELG_1427 ),
    .O(\U0/Count_DIV<0>/CYMUXG_1438 )
  );
  X_BUF   \U0/Count_DIV<0>/CYSELG  (
    .I(\U0/Count_DIV<0>/G ),
    .O(\U0/Count_DIV<0>/CYSELG_1427 )
  );
  X_BUF   \U0/Count_DIV<0>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<0>/SRINV_1425 )
  );
  X_BUF   \U0/Count_DIV<0>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<0>/CLKINV_1424 )
  );
  X_ZERO   \U0/Count_DIV<4>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<4>/LOGIC_ZERO_1538 )
  );
  X_BUF   \U0/Count_DIV<4>/DXMUX  (
    .I(\U0/Count_DIV<4>/XORF_1563 ),
    .O(\U0/Count_DIV<4>/DXMUX_1565 )
  );
  X_XOR2   \U0/Count_DIV<4>/XORF  (
    .I0(\U0/Count_DIV<4>/CYINIT_1562 ),
    .I1(\U0/Count_DIV<4>/F ),
    .O(\U0/Count_DIV<4>/XORF_1563 )
  );
  X_MUX2   \U0/Count_DIV<4>/CYMUXF  (
    .IA(\U0/Count_DIV<4>/LOGIC_ZERO_1538 ),
    .IB(\U0/Count_DIV<4>/CYINIT_1562 ),
    .SEL(\U0/Count_DIV<4>/CYSELF_1544 ),
    .O(\U0/Mcount_Count_DIV_cy [4])
  );
  X_MUX2   \U0/Count_DIV<4>/CYMUXF2  (
    .IA(\U0/Count_DIV<4>/LOGIC_ZERO_1538 ),
    .IB(\U0/Count_DIV<4>/LOGIC_ZERO_1538 ),
    .SEL(\U0/Count_DIV<4>/CYSELF_1544 ),
    .O(\U0/Count_DIV<4>/CYMUXF2_1539 )
  );
  X_BUF   \U0/Count_DIV<4>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [3]),
    .O(\U0/Count_DIV<4>/CYINIT_1562 )
  );
  X_BUF   \U0/Count_DIV<4>/CYSELF  (
    .I(\U0/Count_DIV<4>/F ),
    .O(\U0/Count_DIV<4>/CYSELF_1544 )
  );
  X_BUF   \U0/Count_DIV<4>/DYMUX  (
    .I(\U0/Count_DIV<4>/XORG_1546 ),
    .O(\U0/Count_DIV<4>/DYMUX_1548 )
  );
  X_XOR2   \U0/Count_DIV<4>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [4]),
    .I1(\U0/Count_DIV<4>/G ),
    .O(\U0/Count_DIV<4>/XORG_1546 )
  );
  X_BUF   \U0/Count_DIV<4>/COUTUSED  (
    .I(\U0/Count_DIV<4>/CYMUXFAST_1543 ),
    .O(\U0/Mcount_Count_DIV_cy [5])
  );
  X_BUF   \U0/Count_DIV<4>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [3]),
    .O(\U0/Count_DIV<4>/FASTCARRY_1541 )
  );
  X_AND2   \U0/Count_DIV<4>/CYAND  (
    .I0(\U0/Count_DIV<4>/CYSELG_1529 ),
    .I1(\U0/Count_DIV<4>/CYSELF_1544 ),
    .O(\U0/Count_DIV<4>/CYAND_1542 )
  );
  X_MUX2   \U0/Count_DIV<4>/CYMUXFAST  (
    .IA(\U0/Count_DIV<4>/CYMUXG2_1540 ),
    .IB(\U0/Count_DIV<4>/FASTCARRY_1541 ),
    .SEL(\U0/Count_DIV<4>/CYAND_1542 ),
    .O(\U0/Count_DIV<4>/CYMUXFAST_1543 )
  );
  X_MUX2   \U0/Count_DIV<4>/CYMUXG2  (
    .IA(\U0/Count_DIV<4>/LOGIC_ZERO_1538 ),
    .IB(\U0/Count_DIV<4>/CYMUXF2_1539 ),
    .SEL(\U0/Count_DIV<4>/CYSELG_1529 ),
    .O(\U0/Count_DIV<4>/CYMUXG2_1540 )
  );
  X_BUF   \U0/Count_DIV<4>/CYSELG  (
    .I(\U0/Count_DIV<4>/G ),
    .O(\U0/Count_DIV<4>/CYSELG_1529 )
  );
  X_BUF   \U0/Count_DIV<4>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<4>/SRINV_1527 )
  );
  X_BUF   \U0/Count_DIV<4>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<4>/CLKINV_1526 )
  );
  X_INV   \D0/clk/DYMUX  (
    .I(\D0/clk_821 ),
    .O(\D0/clk/DYMUX_1411 )
  );
  X_BUF   \D0/clk/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/clk/CLKINV_1409 )
  );
  X_BUF   \D0/clk/CEINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/clk/CEINV_1408 )
  );
  X_ZERO   \U0/Count_DIV<2>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<2>/LOGIC_ZERO_1486 )
  );
  X_BUF   \U0/Count_DIV<2>/DXMUX  (
    .I(\U0/Count_DIV<2>/XORF_1511 ),
    .O(\U0/Count_DIV<2>/DXMUX_1513 )
  );
  X_XOR2   \U0/Count_DIV<2>/XORF  (
    .I0(\U0/Count_DIV<2>/CYINIT_1510 ),
    .I1(\U0/Count_DIV<2>/F ),
    .O(\U0/Count_DIV<2>/XORF_1511 )
  );
  X_MUX2   \U0/Count_DIV<2>/CYMUXF  (
    .IA(\U0/Count_DIV<2>/LOGIC_ZERO_1486 ),
    .IB(\U0/Count_DIV<2>/CYINIT_1510 ),
    .SEL(\U0/Count_DIV<2>/CYSELF_1492 ),
    .O(\U0/Mcount_Count_DIV_cy [2])
  );
  X_MUX2   \U0/Count_DIV<2>/CYMUXF2  (
    .IA(\U0/Count_DIV<2>/LOGIC_ZERO_1486 ),
    .IB(\U0/Count_DIV<2>/LOGIC_ZERO_1486 ),
    .SEL(\U0/Count_DIV<2>/CYSELF_1492 ),
    .O(\U0/Count_DIV<2>/CYMUXF2_1487 )
  );
  X_BUF   \U0/Count_DIV<2>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [1]),
    .O(\U0/Count_DIV<2>/CYINIT_1510 )
  );
  X_BUF   \U0/Count_DIV<2>/CYSELF  (
    .I(\U0/Count_DIV<2>/F ),
    .O(\U0/Count_DIV<2>/CYSELF_1492 )
  );
  X_BUF   \U0/Count_DIV<2>/DYMUX  (
    .I(\U0/Count_DIV<2>/XORG_1494 ),
    .O(\U0/Count_DIV<2>/DYMUX_1496 )
  );
  X_XOR2   \U0/Count_DIV<2>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [2]),
    .I1(\U0/Count_DIV<2>/G ),
    .O(\U0/Count_DIV<2>/XORG_1494 )
  );
  X_BUF   \U0/Count_DIV<2>/COUTUSED  (
    .I(\U0/Count_DIV<2>/CYMUXFAST_1491 ),
    .O(\U0/Mcount_Count_DIV_cy [3])
  );
  X_BUF   \U0/Count_DIV<2>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [1]),
    .O(\U0/Count_DIV<2>/FASTCARRY_1489 )
  );
  X_AND2   \U0/Count_DIV<2>/CYAND  (
    .I0(\U0/Count_DIV<2>/CYSELG_1477 ),
    .I1(\U0/Count_DIV<2>/CYSELF_1492 ),
    .O(\U0/Count_DIV<2>/CYAND_1490 )
  );
  X_MUX2   \U0/Count_DIV<2>/CYMUXFAST  (
    .IA(\U0/Count_DIV<2>/CYMUXG2_1488 ),
    .IB(\U0/Count_DIV<2>/FASTCARRY_1489 ),
    .SEL(\U0/Count_DIV<2>/CYAND_1490 ),
    .O(\U0/Count_DIV<2>/CYMUXFAST_1491 )
  );
  X_MUX2   \U0/Count_DIV<2>/CYMUXG2  (
    .IA(\U0/Count_DIV<2>/LOGIC_ZERO_1486 ),
    .IB(\U0/Count_DIV<2>/CYMUXF2_1487 ),
    .SEL(\U0/Count_DIV<2>/CYSELG_1477 ),
    .O(\U0/Count_DIV<2>/CYMUXG2_1488 )
  );
  X_BUF   \U0/Count_DIV<2>/CYSELG  (
    .I(\U0/Count_DIV<2>/G ),
    .O(\U0/Count_DIV<2>/CYSELG_1477 )
  );
  X_BUF   \U0/Count_DIV<2>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<2>/SRINV_1475 )
  );
  X_BUF   \U0/Count_DIV<2>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<2>/CLKINV_1474 )
  );
  X_ZERO   \U0/Count_DIV<6>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<6>/LOGIC_ZERO_1590 )
  );
  X_BUF   \U0/Count_DIV<6>/DXMUX  (
    .I(\U0/Count_DIV<6>/XORF_1615 ),
    .O(\U0/Count_DIV<6>/DXMUX_1617 )
  );
  X_XOR2   \U0/Count_DIV<6>/XORF  (
    .I0(\U0/Count_DIV<6>/CYINIT_1614 ),
    .I1(\U0/Count_DIV<6>/F ),
    .O(\U0/Count_DIV<6>/XORF_1615 )
  );
  X_MUX2   \U0/Count_DIV<6>/CYMUXF  (
    .IA(\U0/Count_DIV<6>/LOGIC_ZERO_1590 ),
    .IB(\U0/Count_DIV<6>/CYINIT_1614 ),
    .SEL(\U0/Count_DIV<6>/CYSELF_1596 ),
    .O(\U0/Mcount_Count_DIV_cy [6])
  );
  X_MUX2   \U0/Count_DIV<6>/CYMUXF2  (
    .IA(\U0/Count_DIV<6>/LOGIC_ZERO_1590 ),
    .IB(\U0/Count_DIV<6>/LOGIC_ZERO_1590 ),
    .SEL(\U0/Count_DIV<6>/CYSELF_1596 ),
    .O(\U0/Count_DIV<6>/CYMUXF2_1591 )
  );
  X_BUF   \U0/Count_DIV<6>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [5]),
    .O(\U0/Count_DIV<6>/CYINIT_1614 )
  );
  X_BUF   \U0/Count_DIV<6>/CYSELF  (
    .I(\U0/Count_DIV<6>/F ),
    .O(\U0/Count_DIV<6>/CYSELF_1596 )
  );
  X_BUF   \U0/Count_DIV<6>/DYMUX  (
    .I(\U0/Count_DIV<6>/XORG_1598 ),
    .O(\U0/Count_DIV<6>/DYMUX_1600 )
  );
  X_XOR2   \U0/Count_DIV<6>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [6]),
    .I1(\U0/Count_DIV<6>/G ),
    .O(\U0/Count_DIV<6>/XORG_1598 )
  );
  X_BUF   \U0/Count_DIV<6>/COUTUSED  (
    .I(\U0/Count_DIV<6>/CYMUXFAST_1595 ),
    .O(\U0/Mcount_Count_DIV_cy [7])
  );
  X_BUF   \U0/Count_DIV<6>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [5]),
    .O(\U0/Count_DIV<6>/FASTCARRY_1593 )
  );
  X_AND2   \U0/Count_DIV<6>/CYAND  (
    .I0(\U0/Count_DIV<6>/CYSELG_1581 ),
    .I1(\U0/Count_DIV<6>/CYSELF_1596 ),
    .O(\U0/Count_DIV<6>/CYAND_1594 )
  );
  X_MUX2   \U0/Count_DIV<6>/CYMUXFAST  (
    .IA(\U0/Count_DIV<6>/CYMUXG2_1592 ),
    .IB(\U0/Count_DIV<6>/FASTCARRY_1593 ),
    .SEL(\U0/Count_DIV<6>/CYAND_1594 ),
    .O(\U0/Count_DIV<6>/CYMUXFAST_1595 )
  );
  X_MUX2   \U0/Count_DIV<6>/CYMUXG2  (
    .IA(\U0/Count_DIV<6>/LOGIC_ZERO_1590 ),
    .IB(\U0/Count_DIV<6>/CYMUXF2_1591 ),
    .SEL(\U0/Count_DIV<6>/CYSELG_1581 ),
    .O(\U0/Count_DIV<6>/CYMUXG2_1592 )
  );
  X_BUF   \U0/Count_DIV<6>/CYSELG  (
    .I(\U0/Count_DIV<6>/G ),
    .O(\U0/Count_DIV<6>/CYSELG_1581 )
  );
  X_BUF   \U0/Count_DIV<6>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<6>/SRINV_1579 )
  );
  X_BUF   \U0/Count_DIV<6>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<6>/CLKINV_1578 )
  );
  X_ZERO   \U0/Count_DIV<10>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<10>/LOGIC_ZERO_1694 )
  );
  X_BUF   \U0/Count_DIV<10>/DXMUX  (
    .I(\U0/Count_DIV<10>/XORF_1719 ),
    .O(\U0/Count_DIV<10>/DXMUX_1721 )
  );
  X_XOR2   \U0/Count_DIV<10>/XORF  (
    .I0(\U0/Count_DIV<10>/CYINIT_1718 ),
    .I1(\U0/Count_DIV<10>/F ),
    .O(\U0/Count_DIV<10>/XORF_1719 )
  );
  X_MUX2   \U0/Count_DIV<10>/CYMUXF  (
    .IA(\U0/Count_DIV<10>/LOGIC_ZERO_1694 ),
    .IB(\U0/Count_DIV<10>/CYINIT_1718 ),
    .SEL(\U0/Count_DIV<10>/CYSELF_1700 ),
    .O(\U0/Mcount_Count_DIV_cy [10])
  );
  X_MUX2   \U0/Count_DIV<10>/CYMUXF2  (
    .IA(\U0/Count_DIV<10>/LOGIC_ZERO_1694 ),
    .IB(\U0/Count_DIV<10>/LOGIC_ZERO_1694 ),
    .SEL(\U0/Count_DIV<10>/CYSELF_1700 ),
    .O(\U0/Count_DIV<10>/CYMUXF2_1695 )
  );
  X_BUF   \U0/Count_DIV<10>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [9]),
    .O(\U0/Count_DIV<10>/CYINIT_1718 )
  );
  X_BUF   \U0/Count_DIV<10>/CYSELF  (
    .I(\U0/Count_DIV<10>/F ),
    .O(\U0/Count_DIV<10>/CYSELF_1700 )
  );
  X_BUF   \U0/Count_DIV<10>/DYMUX  (
    .I(\U0/Count_DIV<10>/XORG_1702 ),
    .O(\U0/Count_DIV<10>/DYMUX_1704 )
  );
  X_XOR2   \U0/Count_DIV<10>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [10]),
    .I1(\U0/Count_DIV<10>/G ),
    .O(\U0/Count_DIV<10>/XORG_1702 )
  );
  X_BUF   \U0/Count_DIV<10>/COUTUSED  (
    .I(\U0/Count_DIV<10>/CYMUXFAST_1699 ),
    .O(\U0/Mcount_Count_DIV_cy [11])
  );
  X_BUF   \U0/Count_DIV<10>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [9]),
    .O(\U0/Count_DIV<10>/FASTCARRY_1697 )
  );
  X_AND2   \U0/Count_DIV<10>/CYAND  (
    .I0(\U0/Count_DIV<10>/CYSELG_1685 ),
    .I1(\U0/Count_DIV<10>/CYSELF_1700 ),
    .O(\U0/Count_DIV<10>/CYAND_1698 )
  );
  X_MUX2   \U0/Count_DIV<10>/CYMUXFAST  (
    .IA(\U0/Count_DIV<10>/CYMUXG2_1696 ),
    .IB(\U0/Count_DIV<10>/FASTCARRY_1697 ),
    .SEL(\U0/Count_DIV<10>/CYAND_1698 ),
    .O(\U0/Count_DIV<10>/CYMUXFAST_1699 )
  );
  X_MUX2   \U0/Count_DIV<10>/CYMUXG2  (
    .IA(\U0/Count_DIV<10>/LOGIC_ZERO_1694 ),
    .IB(\U0/Count_DIV<10>/CYMUXF2_1695 ),
    .SEL(\U0/Count_DIV<10>/CYSELG_1685 ),
    .O(\U0/Count_DIV<10>/CYMUXG2_1696 )
  );
  X_BUF   \U0/Count_DIV<10>/CYSELG  (
    .I(\U0/Count_DIV<10>/G ),
    .O(\U0/Count_DIV<10>/CYSELG_1685 )
  );
  X_BUF   \U0/Count_DIV<10>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<10>/SRINV_1683 )
  );
  X_BUF   \U0/Count_DIV<10>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<10>/CLKINV_1682 )
  );
  X_ZERO   \U0/Count_DIV<12>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<12>/LOGIC_ZERO_1746 )
  );
  X_BUF   \U0/Count_DIV<12>/DXMUX  (
    .I(\U0/Count_DIV<12>/XORF_1771 ),
    .O(\U0/Count_DIV<12>/DXMUX_1773 )
  );
  X_XOR2   \U0/Count_DIV<12>/XORF  (
    .I0(\U0/Count_DIV<12>/CYINIT_1770 ),
    .I1(\U0/Count_DIV<12>/F ),
    .O(\U0/Count_DIV<12>/XORF_1771 )
  );
  X_MUX2   \U0/Count_DIV<12>/CYMUXF  (
    .IA(\U0/Count_DIV<12>/LOGIC_ZERO_1746 ),
    .IB(\U0/Count_DIV<12>/CYINIT_1770 ),
    .SEL(\U0/Count_DIV<12>/CYSELF_1752 ),
    .O(\U0/Mcount_Count_DIV_cy [12])
  );
  X_MUX2   \U0/Count_DIV<12>/CYMUXF2  (
    .IA(\U0/Count_DIV<12>/LOGIC_ZERO_1746 ),
    .IB(\U0/Count_DIV<12>/LOGIC_ZERO_1746 ),
    .SEL(\U0/Count_DIV<12>/CYSELF_1752 ),
    .O(\U0/Count_DIV<12>/CYMUXF2_1747 )
  );
  X_BUF   \U0/Count_DIV<12>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [11]),
    .O(\U0/Count_DIV<12>/CYINIT_1770 )
  );
  X_BUF   \U0/Count_DIV<12>/CYSELF  (
    .I(\U0/Count_DIV<12>/F ),
    .O(\U0/Count_DIV<12>/CYSELF_1752 )
  );
  X_BUF   \U0/Count_DIV<12>/DYMUX  (
    .I(\U0/Count_DIV<12>/XORG_1754 ),
    .O(\U0/Count_DIV<12>/DYMUX_1756 )
  );
  X_XOR2   \U0/Count_DIV<12>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [12]),
    .I1(\U0/Count_DIV<12>/G ),
    .O(\U0/Count_DIV<12>/XORG_1754 )
  );
  X_BUF   \U0/Count_DIV<12>/COUTUSED  (
    .I(\U0/Count_DIV<12>/CYMUXFAST_1751 ),
    .O(\U0/Mcount_Count_DIV_cy [13])
  );
  X_BUF   \U0/Count_DIV<12>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [11]),
    .O(\U0/Count_DIV<12>/FASTCARRY_1749 )
  );
  X_AND2   \U0/Count_DIV<12>/CYAND  (
    .I0(\U0/Count_DIV<12>/CYSELG_1737 ),
    .I1(\U0/Count_DIV<12>/CYSELF_1752 ),
    .O(\U0/Count_DIV<12>/CYAND_1750 )
  );
  X_MUX2   \U0/Count_DIV<12>/CYMUXFAST  (
    .IA(\U0/Count_DIV<12>/CYMUXG2_1748 ),
    .IB(\U0/Count_DIV<12>/FASTCARRY_1749 ),
    .SEL(\U0/Count_DIV<12>/CYAND_1750 ),
    .O(\U0/Count_DIV<12>/CYMUXFAST_1751 )
  );
  X_MUX2   \U0/Count_DIV<12>/CYMUXG2  (
    .IA(\U0/Count_DIV<12>/LOGIC_ZERO_1746 ),
    .IB(\U0/Count_DIV<12>/CYMUXF2_1747 ),
    .SEL(\U0/Count_DIV<12>/CYSELG_1737 ),
    .O(\U0/Count_DIV<12>/CYMUXG2_1748 )
  );
  X_BUF   \U0/Count_DIV<12>/CYSELG  (
    .I(\U0/Count_DIV<12>/G ),
    .O(\U0/Count_DIV<12>/CYSELG_1737 )
  );
  X_BUF   \U0/Count_DIV<12>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<12>/SRINV_1735 )
  );
  X_BUF   \U0/Count_DIV<12>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<12>/CLKINV_1734 )
  );
  X_ZERO   \U0/Count_DIV<8>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<8>/LOGIC_ZERO_1642 )
  );
  X_BUF   \U0/Count_DIV<8>/DXMUX  (
    .I(\U0/Count_DIV<8>/XORF_1667 ),
    .O(\U0/Count_DIV<8>/DXMUX_1669 )
  );
  X_XOR2   \U0/Count_DIV<8>/XORF  (
    .I0(\U0/Count_DIV<8>/CYINIT_1666 ),
    .I1(\U0/Count_DIV<8>/F ),
    .O(\U0/Count_DIV<8>/XORF_1667 )
  );
  X_MUX2   \U0/Count_DIV<8>/CYMUXF  (
    .IA(\U0/Count_DIV<8>/LOGIC_ZERO_1642 ),
    .IB(\U0/Count_DIV<8>/CYINIT_1666 ),
    .SEL(\U0/Count_DIV<8>/CYSELF_1648 ),
    .O(\U0/Mcount_Count_DIV_cy [8])
  );
  X_MUX2   \U0/Count_DIV<8>/CYMUXF2  (
    .IA(\U0/Count_DIV<8>/LOGIC_ZERO_1642 ),
    .IB(\U0/Count_DIV<8>/LOGIC_ZERO_1642 ),
    .SEL(\U0/Count_DIV<8>/CYSELF_1648 ),
    .O(\U0/Count_DIV<8>/CYMUXF2_1643 )
  );
  X_BUF   \U0/Count_DIV<8>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [7]),
    .O(\U0/Count_DIV<8>/CYINIT_1666 )
  );
  X_BUF   \U0/Count_DIV<8>/CYSELF  (
    .I(\U0/Count_DIV<8>/F ),
    .O(\U0/Count_DIV<8>/CYSELF_1648 )
  );
  X_BUF   \U0/Count_DIV<8>/DYMUX  (
    .I(\U0/Count_DIV<8>/XORG_1650 ),
    .O(\U0/Count_DIV<8>/DYMUX_1652 )
  );
  X_XOR2   \U0/Count_DIV<8>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [8]),
    .I1(\U0/Count_DIV<8>/G ),
    .O(\U0/Count_DIV<8>/XORG_1650 )
  );
  X_BUF   \U0/Count_DIV<8>/COUTUSED  (
    .I(\U0/Count_DIV<8>/CYMUXFAST_1647 ),
    .O(\U0/Mcount_Count_DIV_cy [9])
  );
  X_BUF   \U0/Count_DIV<8>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [7]),
    .O(\U0/Count_DIV<8>/FASTCARRY_1645 )
  );
  X_AND2   \U0/Count_DIV<8>/CYAND  (
    .I0(\U0/Count_DIV<8>/CYSELG_1633 ),
    .I1(\U0/Count_DIV<8>/CYSELF_1648 ),
    .O(\U0/Count_DIV<8>/CYAND_1646 )
  );
  X_MUX2   \U0/Count_DIV<8>/CYMUXFAST  (
    .IA(\U0/Count_DIV<8>/CYMUXG2_1644 ),
    .IB(\U0/Count_DIV<8>/FASTCARRY_1645 ),
    .SEL(\U0/Count_DIV<8>/CYAND_1646 ),
    .O(\U0/Count_DIV<8>/CYMUXFAST_1647 )
  );
  X_MUX2   \U0/Count_DIV<8>/CYMUXG2  (
    .IA(\U0/Count_DIV<8>/LOGIC_ZERO_1642 ),
    .IB(\U0/Count_DIV<8>/CYMUXF2_1643 ),
    .SEL(\U0/Count_DIV<8>/CYSELG_1633 ),
    .O(\U0/Count_DIV<8>/CYMUXG2_1644 )
  );
  X_BUF   \U0/Count_DIV<8>/CYSELG  (
    .I(\U0/Count_DIV<8>/G ),
    .O(\U0/Count_DIV<8>/CYSELG_1633 )
  );
  X_BUF   \U0/Count_DIV<8>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<8>/SRINV_1631 )
  );
  X_BUF   \U0/Count_DIV<8>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<8>/CLKINV_1630 )
  );
  X_ZERO   \U0/Count_DIV<14>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<14>/LOGIC_ZERO_1798 )
  );
  X_BUF   \U0/Count_DIV<14>/DXMUX  (
    .I(\U0/Count_DIV<14>/XORF_1823 ),
    .O(\U0/Count_DIV<14>/DXMUX_1825 )
  );
  X_XOR2   \U0/Count_DIV<14>/XORF  (
    .I0(\U0/Count_DIV<14>/CYINIT_1822 ),
    .I1(\U0/Count_DIV<14>/F ),
    .O(\U0/Count_DIV<14>/XORF_1823 )
  );
  X_MUX2   \U0/Count_DIV<14>/CYMUXF  (
    .IA(\U0/Count_DIV<14>/LOGIC_ZERO_1798 ),
    .IB(\U0/Count_DIV<14>/CYINIT_1822 ),
    .SEL(\U0/Count_DIV<14>/CYSELF_1804 ),
    .O(\U0/Mcount_Count_DIV_cy [14])
  );
  X_MUX2   \U0/Count_DIV<14>/CYMUXF2  (
    .IA(\U0/Count_DIV<14>/LOGIC_ZERO_1798 ),
    .IB(\U0/Count_DIV<14>/LOGIC_ZERO_1798 ),
    .SEL(\U0/Count_DIV<14>/CYSELF_1804 ),
    .O(\U0/Count_DIV<14>/CYMUXF2_1799 )
  );
  X_BUF   \U0/Count_DIV<14>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [13]),
    .O(\U0/Count_DIV<14>/CYINIT_1822 )
  );
  X_BUF   \U0/Count_DIV<14>/CYSELF  (
    .I(\U0/Count_DIV<14>/F ),
    .O(\U0/Count_DIV<14>/CYSELF_1804 )
  );
  X_BUF   \U0/Count_DIV<14>/DYMUX  (
    .I(\U0/Count_DIV<14>/XORG_1806 ),
    .O(\U0/Count_DIV<14>/DYMUX_1808 )
  );
  X_XOR2   \U0/Count_DIV<14>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [14]),
    .I1(\U0/Count_DIV<14>/G ),
    .O(\U0/Count_DIV<14>/XORG_1806 )
  );
  X_BUF   \U0/Count_DIV<14>/COUTUSED  (
    .I(\U0/Count_DIV<14>/CYMUXFAST_1803 ),
    .O(\U0/Mcount_Count_DIV_cy [15])
  );
  X_BUF   \U0/Count_DIV<14>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [13]),
    .O(\U0/Count_DIV<14>/FASTCARRY_1801 )
  );
  X_AND2   \U0/Count_DIV<14>/CYAND  (
    .I0(\U0/Count_DIV<14>/CYSELG_1789 ),
    .I1(\U0/Count_DIV<14>/CYSELF_1804 ),
    .O(\U0/Count_DIV<14>/CYAND_1802 )
  );
  X_MUX2   \U0/Count_DIV<14>/CYMUXFAST  (
    .IA(\U0/Count_DIV<14>/CYMUXG2_1800 ),
    .IB(\U0/Count_DIV<14>/FASTCARRY_1801 ),
    .SEL(\U0/Count_DIV<14>/CYAND_1802 ),
    .O(\U0/Count_DIV<14>/CYMUXFAST_1803 )
  );
  X_MUX2   \U0/Count_DIV<14>/CYMUXG2  (
    .IA(\U0/Count_DIV<14>/LOGIC_ZERO_1798 ),
    .IB(\U0/Count_DIV<14>/CYMUXF2_1799 ),
    .SEL(\U0/Count_DIV<14>/CYSELG_1789 ),
    .O(\U0/Count_DIV<14>/CYMUXG2_1800 )
  );
  X_BUF   \U0/Count_DIV<14>/CYSELG  (
    .I(\U0/Count_DIV<14>/G ),
    .O(\U0/Count_DIV<14>/CYSELG_1789 )
  );
  X_BUF   \U0/Count_DIV<14>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<14>/SRINV_1787 )
  );
  X_BUF   \U0/Count_DIV<14>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<14>/CLKINV_1786 )
  );
  X_ZERO   \U0/Count_DIV<18>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<18>/LOGIC_ZERO_1902 )
  );
  X_BUF   \U0/Count_DIV<18>/DXMUX  (
    .I(\U0/Count_DIV<18>/XORF_1927 ),
    .O(\U0/Count_DIV<18>/DXMUX_1929 )
  );
  X_XOR2   \U0/Count_DIV<18>/XORF  (
    .I0(\U0/Count_DIV<18>/CYINIT_1926 ),
    .I1(\U0/Count_DIV<18>/F ),
    .O(\U0/Count_DIV<18>/XORF_1927 )
  );
  X_MUX2   \U0/Count_DIV<18>/CYMUXF  (
    .IA(\U0/Count_DIV<18>/LOGIC_ZERO_1902 ),
    .IB(\U0/Count_DIV<18>/CYINIT_1926 ),
    .SEL(\U0/Count_DIV<18>/CYSELF_1908 ),
    .O(\U0/Mcount_Count_DIV_cy [18])
  );
  X_MUX2   \U0/Count_DIV<18>/CYMUXF2  (
    .IA(\U0/Count_DIV<18>/LOGIC_ZERO_1902 ),
    .IB(\U0/Count_DIV<18>/LOGIC_ZERO_1902 ),
    .SEL(\U0/Count_DIV<18>/CYSELF_1908 ),
    .O(\U0/Count_DIV<18>/CYMUXF2_1903 )
  );
  X_BUF   \U0/Count_DIV<18>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [17]),
    .O(\U0/Count_DIV<18>/CYINIT_1926 )
  );
  X_BUF   \U0/Count_DIV<18>/CYSELF  (
    .I(\U0/Count_DIV<18>/F ),
    .O(\U0/Count_DIV<18>/CYSELF_1908 )
  );
  X_BUF   \U0/Count_DIV<18>/DYMUX  (
    .I(\U0/Count_DIV<18>/XORG_1910 ),
    .O(\U0/Count_DIV<18>/DYMUX_1912 )
  );
  X_XOR2   \U0/Count_DIV<18>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [18]),
    .I1(\U0/Count_DIV<18>/G ),
    .O(\U0/Count_DIV<18>/XORG_1910 )
  );
  X_BUF   \U0/Count_DIV<18>/COUTUSED  (
    .I(\U0/Count_DIV<18>/CYMUXFAST_1907 ),
    .O(\U0/Mcount_Count_DIV_cy [19])
  );
  X_BUF   \U0/Count_DIV<18>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [17]),
    .O(\U0/Count_DIV<18>/FASTCARRY_1905 )
  );
  X_AND2   \U0/Count_DIV<18>/CYAND  (
    .I0(\U0/Count_DIV<18>/CYSELG_1893 ),
    .I1(\U0/Count_DIV<18>/CYSELF_1908 ),
    .O(\U0/Count_DIV<18>/CYAND_1906 )
  );
  X_MUX2   \U0/Count_DIV<18>/CYMUXFAST  (
    .IA(\U0/Count_DIV<18>/CYMUXG2_1904 ),
    .IB(\U0/Count_DIV<18>/FASTCARRY_1905 ),
    .SEL(\U0/Count_DIV<18>/CYAND_1906 ),
    .O(\U0/Count_DIV<18>/CYMUXFAST_1907 )
  );
  X_MUX2   \U0/Count_DIV<18>/CYMUXG2  (
    .IA(\U0/Count_DIV<18>/LOGIC_ZERO_1902 ),
    .IB(\U0/Count_DIV<18>/CYMUXF2_1903 ),
    .SEL(\U0/Count_DIV<18>/CYSELG_1893 ),
    .O(\U0/Count_DIV<18>/CYMUXG2_1904 )
  );
  X_BUF   \U0/Count_DIV<18>/CYSELG  (
    .I(\U0/Count_DIV<18>/G ),
    .O(\U0/Count_DIV<18>/CYSELG_1893 )
  );
  X_BUF   \U0/Count_DIV<18>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<18>/SRINV_1891 )
  );
  X_BUF   \U0/Count_DIV<18>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<18>/CLKINV_1890 )
  );
  X_ZERO   \U0/Count_DIV<16>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<16>/LOGIC_ZERO_1850 )
  );
  X_BUF   \U0/Count_DIV<16>/DXMUX  (
    .I(\U0/Count_DIV<16>/XORF_1875 ),
    .O(\U0/Count_DIV<16>/DXMUX_1877 )
  );
  X_XOR2   \U0/Count_DIV<16>/XORF  (
    .I0(\U0/Count_DIV<16>/CYINIT_1874 ),
    .I1(\U0/Count_DIV<16>/F ),
    .O(\U0/Count_DIV<16>/XORF_1875 )
  );
  X_MUX2   \U0/Count_DIV<16>/CYMUXF  (
    .IA(\U0/Count_DIV<16>/LOGIC_ZERO_1850 ),
    .IB(\U0/Count_DIV<16>/CYINIT_1874 ),
    .SEL(\U0/Count_DIV<16>/CYSELF_1856 ),
    .O(\U0/Mcount_Count_DIV_cy [16])
  );
  X_MUX2   \U0/Count_DIV<16>/CYMUXF2  (
    .IA(\U0/Count_DIV<16>/LOGIC_ZERO_1850 ),
    .IB(\U0/Count_DIV<16>/LOGIC_ZERO_1850 ),
    .SEL(\U0/Count_DIV<16>/CYSELF_1856 ),
    .O(\U0/Count_DIV<16>/CYMUXF2_1851 )
  );
  X_BUF   \U0/Count_DIV<16>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [15]),
    .O(\U0/Count_DIV<16>/CYINIT_1874 )
  );
  X_BUF   \U0/Count_DIV<16>/CYSELF  (
    .I(\U0/Count_DIV<16>/F ),
    .O(\U0/Count_DIV<16>/CYSELF_1856 )
  );
  X_BUF   \U0/Count_DIV<16>/DYMUX  (
    .I(\U0/Count_DIV<16>/XORG_1858 ),
    .O(\U0/Count_DIV<16>/DYMUX_1860 )
  );
  X_XOR2   \U0/Count_DIV<16>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [16]),
    .I1(\U0/Count_DIV<16>/G ),
    .O(\U0/Count_DIV<16>/XORG_1858 )
  );
  X_BUF   \U0/Count_DIV<16>/COUTUSED  (
    .I(\U0/Count_DIV<16>/CYMUXFAST_1855 ),
    .O(\U0/Mcount_Count_DIV_cy [17])
  );
  X_BUF   \U0/Count_DIV<16>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [15]),
    .O(\U0/Count_DIV<16>/FASTCARRY_1853 )
  );
  X_AND2   \U0/Count_DIV<16>/CYAND  (
    .I0(\U0/Count_DIV<16>/CYSELG_1841 ),
    .I1(\U0/Count_DIV<16>/CYSELF_1856 ),
    .O(\U0/Count_DIV<16>/CYAND_1854 )
  );
  X_MUX2   \U0/Count_DIV<16>/CYMUXFAST  (
    .IA(\U0/Count_DIV<16>/CYMUXG2_1852 ),
    .IB(\U0/Count_DIV<16>/FASTCARRY_1853 ),
    .SEL(\U0/Count_DIV<16>/CYAND_1854 ),
    .O(\U0/Count_DIV<16>/CYMUXFAST_1855 )
  );
  X_MUX2   \U0/Count_DIV<16>/CYMUXG2  (
    .IA(\U0/Count_DIV<16>/LOGIC_ZERO_1850 ),
    .IB(\U0/Count_DIV<16>/CYMUXF2_1851 ),
    .SEL(\U0/Count_DIV<16>/CYSELG_1841 ),
    .O(\U0/Count_DIV<16>/CYMUXG2_1852 )
  );
  X_BUF   \U0/Count_DIV<16>/CYSELG  (
    .I(\U0/Count_DIV<16>/G ),
    .O(\U0/Count_DIV<16>/CYSELG_1841 )
  );
  X_BUF   \U0/Count_DIV<16>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<16>/SRINV_1839 )
  );
  X_BUF   \U0/Count_DIV<16>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<16>/CLKINV_1838 )
  );
  X_ZERO   \U0/Count_DIV<20>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<20>/LOGIC_ZERO_1954 )
  );
  X_BUF   \U0/Count_DIV<20>/DXMUX  (
    .I(\U0/Count_DIV<20>/XORF_1979 ),
    .O(\U0/Count_DIV<20>/DXMUX_1981 )
  );
  X_XOR2   \U0/Count_DIV<20>/XORF  (
    .I0(\U0/Count_DIV<20>/CYINIT_1978 ),
    .I1(\U0/Count_DIV<20>/F ),
    .O(\U0/Count_DIV<20>/XORF_1979 )
  );
  X_MUX2   \U0/Count_DIV<20>/CYMUXF  (
    .IA(\U0/Count_DIV<20>/LOGIC_ZERO_1954 ),
    .IB(\U0/Count_DIV<20>/CYINIT_1978 ),
    .SEL(\U0/Count_DIV<20>/CYSELF_1960 ),
    .O(\U0/Mcount_Count_DIV_cy [20])
  );
  X_MUX2   \U0/Count_DIV<20>/CYMUXF2  (
    .IA(\U0/Count_DIV<20>/LOGIC_ZERO_1954 ),
    .IB(\U0/Count_DIV<20>/LOGIC_ZERO_1954 ),
    .SEL(\U0/Count_DIV<20>/CYSELF_1960 ),
    .O(\U0/Count_DIV<20>/CYMUXF2_1955 )
  );
  X_BUF   \U0/Count_DIV<20>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [19]),
    .O(\U0/Count_DIV<20>/CYINIT_1978 )
  );
  X_BUF   \U0/Count_DIV<20>/CYSELF  (
    .I(\U0/Count_DIV<20>/F ),
    .O(\U0/Count_DIV<20>/CYSELF_1960 )
  );
  X_BUF   \U0/Count_DIV<20>/DYMUX  (
    .I(\U0/Count_DIV<20>/XORG_1962 ),
    .O(\U0/Count_DIV<20>/DYMUX_1964 )
  );
  X_XOR2   \U0/Count_DIV<20>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [20]),
    .I1(\U0/Count_DIV<20>/G ),
    .O(\U0/Count_DIV<20>/XORG_1962 )
  );
  X_BUF   \U0/Count_DIV<20>/COUTUSED  (
    .I(\U0/Count_DIV<20>/CYMUXFAST_1959 ),
    .O(\U0/Mcount_Count_DIV_cy [21])
  );
  X_BUF   \U0/Count_DIV<20>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [19]),
    .O(\U0/Count_DIV<20>/FASTCARRY_1957 )
  );
  X_AND2   \U0/Count_DIV<20>/CYAND  (
    .I0(\U0/Count_DIV<20>/CYSELG_1945 ),
    .I1(\U0/Count_DIV<20>/CYSELF_1960 ),
    .O(\U0/Count_DIV<20>/CYAND_1958 )
  );
  X_MUX2   \U0/Count_DIV<20>/CYMUXFAST  (
    .IA(\U0/Count_DIV<20>/CYMUXG2_1956 ),
    .IB(\U0/Count_DIV<20>/FASTCARRY_1957 ),
    .SEL(\U0/Count_DIV<20>/CYAND_1958 ),
    .O(\U0/Count_DIV<20>/CYMUXFAST_1959 )
  );
  X_MUX2   \U0/Count_DIV<20>/CYMUXG2  (
    .IA(\U0/Count_DIV<20>/LOGIC_ZERO_1954 ),
    .IB(\U0/Count_DIV<20>/CYMUXF2_1955 ),
    .SEL(\U0/Count_DIV<20>/CYSELG_1945 ),
    .O(\U0/Count_DIV<20>/CYMUXG2_1956 )
  );
  X_BUF   \U0/Count_DIV<20>/CYSELG  (
    .I(\U0/Count_DIV<20>/G ),
    .O(\U0/Count_DIV<20>/CYSELG_1945 )
  );
  X_BUF   \U0/Count_DIV<20>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<20>/SRINV_1943 )
  );
  X_BUF   \U0/Count_DIV<20>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<20>/CLKINV_1942 )
  );
  X_ZERO   \U0/Count_DIV<22>/LOGIC_ZERO  (
    .O(\U0/Count_DIV<22>/LOGIC_ZERO_2006 )
  );
  X_BUF   \U0/Count_DIV<22>/DXMUX  (
    .I(\U0/Count_DIV<22>/XORF_2031 ),
    .O(\U0/Count_DIV<22>/DXMUX_2033 )
  );
  X_XOR2   \U0/Count_DIV<22>/XORF  (
    .I0(\U0/Count_DIV<22>/CYINIT_2030 ),
    .I1(\U0/Count_DIV<22>/F ),
    .O(\U0/Count_DIV<22>/XORF_2031 )
  );
  X_MUX2   \U0/Count_DIV<22>/CYMUXF  (
    .IA(\U0/Count_DIV<22>/LOGIC_ZERO_2006 ),
    .IB(\U0/Count_DIV<22>/CYINIT_2030 ),
    .SEL(\U0/Count_DIV<22>/CYSELF_2012 ),
    .O(\U0/Mcount_Count_DIV_cy [22])
  );
  X_MUX2   \U0/Count_DIV<22>/CYMUXF2  (
    .IA(\U0/Count_DIV<22>/LOGIC_ZERO_2006 ),
    .IB(\U0/Count_DIV<22>/LOGIC_ZERO_2006 ),
    .SEL(\U0/Count_DIV<22>/CYSELF_2012 ),
    .O(\U0/Count_DIV<22>/CYMUXF2_2007 )
  );
  X_BUF   \U0/Count_DIV<22>/CYINIT  (
    .I(\U0/Mcount_Count_DIV_cy [21]),
    .O(\U0/Count_DIV<22>/CYINIT_2030 )
  );
  X_BUF   \U0/Count_DIV<22>/CYSELF  (
    .I(\U0/Count_DIV<22>/F ),
    .O(\U0/Count_DIV<22>/CYSELF_2012 )
  );
  X_BUF   \U0/Count_DIV<22>/DYMUX  (
    .I(\U0/Count_DIV<22>/XORG_2014 ),
    .O(\U0/Count_DIV<22>/DYMUX_2016 )
  );
  X_XOR2   \U0/Count_DIV<22>/XORG  (
    .I0(\U0/Mcount_Count_DIV_cy [22]),
    .I1(\U0/Count_DIV<22>/G ),
    .O(\U0/Count_DIV<22>/XORG_2014 )
  );
  X_BUF   \U0/Count_DIV<22>/FASTCARRY  (
    .I(\U0/Mcount_Count_DIV_cy [21]),
    .O(\U0/Count_DIV<22>/FASTCARRY_2009 )
  );
  X_AND2   \U0/Count_DIV<22>/CYAND  (
    .I0(\U0/Count_DIV<22>/CYSELG_1997 ),
    .I1(\U0/Count_DIV<22>/CYSELF_2012 ),
    .O(\U0/Count_DIV<22>/CYAND_2010 )
  );
  X_MUX2   \U0/Count_DIV<22>/CYMUXFAST  (
    .IA(\U0/Count_DIV<22>/CYMUXG2_2008 ),
    .IB(\U0/Count_DIV<22>/FASTCARRY_2009 ),
    .SEL(\U0/Count_DIV<22>/CYAND_2010 ),
    .O(\U0/Count_DIV<22>/CYMUXFAST_2011 )
  );
  X_MUX2   \U0/Count_DIV<22>/CYMUXG2  (
    .IA(\U0/Count_DIV<22>/LOGIC_ZERO_2006 ),
    .IB(\U0/Count_DIV<22>/CYMUXF2_2007 ),
    .SEL(\U0/Count_DIV<22>/CYSELG_1997 ),
    .O(\U0/Count_DIV<22>/CYMUXG2_2008 )
  );
  X_BUF   \U0/Count_DIV<22>/CYSELG  (
    .I(\U0/Count_DIV<22>/G ),
    .O(\U0/Count_DIV<22>/CYSELG_1997 )
  );
  X_BUF   \U0/Count_DIV<22>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<22>/SRINV_1995 )
  );
  X_BUF   \U0/Count_DIV<22>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<22>/CLKINV_1994 )
  );
  X_BUF   \U0/Count_DIV<24>/DXMUX  (
    .I(\U0/Count_DIV<24>/XORF_2055 ),
    .O(\U0/Count_DIV<24>/DXMUX_2057 )
  );
  X_XOR2   \U0/Count_DIV<24>/XORF  (
    .I0(\U0/Count_DIV<24>/CYINIT_2054 ),
    .I1(\U0/Count_DIV<24>_rt_2052 ),
    .O(\U0/Count_DIV<24>/XORF_2055 )
  );
  X_BUF   \U0/Count_DIV<24>/CYINIT  (
    .I(\U0/Count_DIV<22>/CYMUXFAST_2011 ),
    .O(\U0/Count_DIV<24>/CYINIT_2054 )
  );
  X_BUF   \U0/Count_DIV<24>/SRINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/Count_DIV<24>/SRINV_2044 )
  );
  X_BUF   \U0/Count_DIV<24>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/Count_DIV<24>/CLKINV_2043 )
  );
  X_ZERO   \D0/count<0>/LOGIC_ZERO  (
    .O(\D0/count<0>/LOGIC_ZERO_2082 )
  );
  X_ONE   \D0/count<0>/LOGIC_ONE  (
    .O(\D0/count<0>/LOGIC_ONE_2104 )
  );
  X_BUF   \D0/count<0>/DXMUX  (
    .I(\D0/count<0>/XORF_2105 ),
    .O(\D0/count<0>/DXMUX_2107 )
  );
  X_XOR2   \D0/count<0>/XORF  (
    .I0(\D0/count<0>/CYINIT_2103 ),
    .I1(\D0/Mcount_count_lut [0]),
    .O(\D0/count<0>/XORF_2105 )
  );
  X_MUX2   \D0/count<0>/CYMUXF  (
    .IA(\D0/count<0>/LOGIC_ONE_2104 ),
    .IB(\D0/count<0>/CYINIT_2103 ),
    .SEL(\D0/count<0>/CYSELF_2094 ),
    .O(\D0/Mcount_count_cy[0] )
  );
  X_BUF   \D0/count<0>/CYINIT  (
    .I(\D0/count<0>/BXINV_2092 ),
    .O(\D0/count<0>/CYINIT_2103 )
  );
  X_BUF   \D0/count<0>/CYSELF  (
    .I(\D0/Mcount_count_lut [0]),
    .O(\D0/count<0>/CYSELF_2094 )
  );
  X_BUF   \D0/count<0>/BXINV  (
    .I(1'b0),
    .O(\D0/count<0>/BXINV_2092 )
  );
  X_BUF   \D0/count<0>/DYMUX  (
    .I(\D0/count<0>/XORG_2085 ),
    .O(\D0/count<0>/DYMUX_2087 )
  );
  X_XOR2   \D0/count<0>/XORG  (
    .I0(\D0/Mcount_count_cy[0] ),
    .I1(\D0/count<0>/G ),
    .O(\D0/count<0>/XORG_2085 )
  );
  X_BUF   \D0/count<0>/COUTUSED  (
    .I(\D0/count<0>/CYMUXG_2084 ),
    .O(\D0/Mcount_count_cy[1] )
  );
  X_MUX2   \D0/count<0>/CYMUXG  (
    .IA(\D0/count<0>/LOGIC_ZERO_2082 ),
    .IB(\D0/Mcount_count_cy[0] ),
    .SEL(\D0/count<0>/CYSELG_2073 ),
    .O(\D0/count<0>/CYMUXG_2084 )
  );
  X_BUF   \D0/count<0>/CYSELG  (
    .I(\D0/count<0>/G ),
    .O(\D0/count<0>/CYSELG_2073 )
  );
  X_BUF   \D0/count<0>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<0>/SRINV_2071 )
  );
  X_BUF   \D0/count<0>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<0>/CLKINV_2070 )
  );
  X_ZERO   \D0/count<2>/LOGIC_ZERO  (
    .O(\D0/count<2>/LOGIC_ZERO_2132 )
  );
  X_BUF   \D0/count<2>/DXMUX  (
    .I(\D0/count<2>/XORF_2157 ),
    .O(\D0/count<2>/DXMUX_2159 )
  );
  X_XOR2   \D0/count<2>/XORF  (
    .I0(\D0/count<2>/CYINIT_2156 ),
    .I1(\D0/count<2>/F ),
    .O(\D0/count<2>/XORF_2157 )
  );
  X_MUX2   \D0/count<2>/CYMUXF  (
    .IA(\D0/count<2>/LOGIC_ZERO_2132 ),
    .IB(\D0/count<2>/CYINIT_2156 ),
    .SEL(\D0/count<2>/CYSELF_2138 ),
    .O(\D0/Mcount_count_cy[2] )
  );
  X_MUX2   \D0/count<2>/CYMUXF2  (
    .IA(\D0/count<2>/LOGIC_ZERO_2132 ),
    .IB(\D0/count<2>/LOGIC_ZERO_2132 ),
    .SEL(\D0/count<2>/CYSELF_2138 ),
    .O(\D0/count<2>/CYMUXF2_2133 )
  );
  X_BUF   \D0/count<2>/CYINIT  (
    .I(\D0/Mcount_count_cy[1] ),
    .O(\D0/count<2>/CYINIT_2156 )
  );
  X_BUF   \D0/count<2>/CYSELF  (
    .I(\D0/count<2>/F ),
    .O(\D0/count<2>/CYSELF_2138 )
  );
  X_BUF   \D0/count<2>/DYMUX  (
    .I(\D0/count<2>/XORG_2140 ),
    .O(\D0/count<2>/DYMUX_2142 )
  );
  X_XOR2   \D0/count<2>/XORG  (
    .I0(\D0/Mcount_count_cy[2] ),
    .I1(\D0/count<2>/G ),
    .O(\D0/count<2>/XORG_2140 )
  );
  X_BUF   \D0/count<2>/COUTUSED  (
    .I(\D0/count<2>/CYMUXFAST_2137 ),
    .O(\D0/Mcount_count_cy[3] )
  );
  X_BUF   \D0/count<2>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[1] ),
    .O(\D0/count<2>/FASTCARRY_2135 )
  );
  X_AND2   \D0/count<2>/CYAND  (
    .I0(\D0/count<2>/CYSELG_2123 ),
    .I1(\D0/count<2>/CYSELF_2138 ),
    .O(\D0/count<2>/CYAND_2136 )
  );
  X_MUX2   \D0/count<2>/CYMUXFAST  (
    .IA(\D0/count<2>/CYMUXG2_2134 ),
    .IB(\D0/count<2>/FASTCARRY_2135 ),
    .SEL(\D0/count<2>/CYAND_2136 ),
    .O(\D0/count<2>/CYMUXFAST_2137 )
  );
  X_MUX2   \D0/count<2>/CYMUXG2  (
    .IA(\D0/count<2>/LOGIC_ZERO_2132 ),
    .IB(\D0/count<2>/CYMUXF2_2133 ),
    .SEL(\D0/count<2>/CYSELG_2123 ),
    .O(\D0/count<2>/CYMUXG2_2134 )
  );
  X_BUF   \D0/count<2>/CYSELG  (
    .I(\D0/count<2>/G ),
    .O(\D0/count<2>/CYSELG_2123 )
  );
  X_BUF   \D0/count<2>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<2>/SRINV_2121 )
  );
  X_BUF   \D0/count<2>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<2>/CLKINV_2120 )
  );
  X_ZERO   \D0/count<8>/LOGIC_ZERO  (
    .O(\D0/count<8>/LOGIC_ZERO_2288 )
  );
  X_BUF   \D0/count<8>/DXMUX  (
    .I(\D0/count<8>/XORF_2313 ),
    .O(\D0/count<8>/DXMUX_2315 )
  );
  X_XOR2   \D0/count<8>/XORF  (
    .I0(\D0/count<8>/CYINIT_2312 ),
    .I1(\D0/count<8>/F ),
    .O(\D0/count<8>/XORF_2313 )
  );
  X_MUX2   \D0/count<8>/CYMUXF  (
    .IA(\D0/count<8>/LOGIC_ZERO_2288 ),
    .IB(\D0/count<8>/CYINIT_2312 ),
    .SEL(\D0/count<8>/CYSELF_2294 ),
    .O(\D0/Mcount_count_cy[8] )
  );
  X_MUX2   \D0/count<8>/CYMUXF2  (
    .IA(\D0/count<8>/LOGIC_ZERO_2288 ),
    .IB(\D0/count<8>/LOGIC_ZERO_2288 ),
    .SEL(\D0/count<8>/CYSELF_2294 ),
    .O(\D0/count<8>/CYMUXF2_2289 )
  );
  X_BUF   \D0/count<8>/CYINIT  (
    .I(\D0/Mcount_count_cy[7] ),
    .O(\D0/count<8>/CYINIT_2312 )
  );
  X_BUF   \D0/count<8>/CYSELF  (
    .I(\D0/count<8>/F ),
    .O(\D0/count<8>/CYSELF_2294 )
  );
  X_BUF   \D0/count<8>/DYMUX  (
    .I(\D0/count<8>/XORG_2296 ),
    .O(\D0/count<8>/DYMUX_2298 )
  );
  X_XOR2   \D0/count<8>/XORG  (
    .I0(\D0/Mcount_count_cy[8] ),
    .I1(\D0/count<8>/G ),
    .O(\D0/count<8>/XORG_2296 )
  );
  X_BUF   \D0/count<8>/COUTUSED  (
    .I(\D0/count<8>/CYMUXFAST_2293 ),
    .O(\D0/Mcount_count_cy[9] )
  );
  X_BUF   \D0/count<8>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[7] ),
    .O(\D0/count<8>/FASTCARRY_2291 )
  );
  X_AND2   \D0/count<8>/CYAND  (
    .I0(\D0/count<8>/CYSELG_2279 ),
    .I1(\D0/count<8>/CYSELF_2294 ),
    .O(\D0/count<8>/CYAND_2292 )
  );
  X_MUX2   \D0/count<8>/CYMUXFAST  (
    .IA(\D0/count<8>/CYMUXG2_2290 ),
    .IB(\D0/count<8>/FASTCARRY_2291 ),
    .SEL(\D0/count<8>/CYAND_2292 ),
    .O(\D0/count<8>/CYMUXFAST_2293 )
  );
  X_MUX2   \D0/count<8>/CYMUXG2  (
    .IA(\D0/count<8>/LOGIC_ZERO_2288 ),
    .IB(\D0/count<8>/CYMUXF2_2289 ),
    .SEL(\D0/count<8>/CYSELG_2279 ),
    .O(\D0/count<8>/CYMUXG2_2290 )
  );
  X_BUF   \D0/count<8>/CYSELG  (
    .I(\D0/count<8>/G ),
    .O(\D0/count<8>/CYSELG_2279 )
  );
  X_BUF   \D0/count<8>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<8>/SRINV_2277 )
  );
  X_BUF   \D0/count<8>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<8>/CLKINV_2276 )
  );
  X_ZERO   \D0/count<4>/LOGIC_ZERO  (
    .O(\D0/count<4>/LOGIC_ZERO_2184 )
  );
  X_BUF   \D0/count<4>/DXMUX  (
    .I(\D0/count<4>/XORF_2209 ),
    .O(\D0/count<4>/DXMUX_2211 )
  );
  X_XOR2   \D0/count<4>/XORF  (
    .I0(\D0/count<4>/CYINIT_2208 ),
    .I1(\D0/count<4>/F ),
    .O(\D0/count<4>/XORF_2209 )
  );
  X_MUX2   \D0/count<4>/CYMUXF  (
    .IA(\D0/count<4>/LOGIC_ZERO_2184 ),
    .IB(\D0/count<4>/CYINIT_2208 ),
    .SEL(\D0/count<4>/CYSELF_2190 ),
    .O(\D0/Mcount_count_cy[4] )
  );
  X_MUX2   \D0/count<4>/CYMUXF2  (
    .IA(\D0/count<4>/LOGIC_ZERO_2184 ),
    .IB(\D0/count<4>/LOGIC_ZERO_2184 ),
    .SEL(\D0/count<4>/CYSELF_2190 ),
    .O(\D0/count<4>/CYMUXF2_2185 )
  );
  X_BUF   \D0/count<4>/CYINIT  (
    .I(\D0/Mcount_count_cy[3] ),
    .O(\D0/count<4>/CYINIT_2208 )
  );
  X_BUF   \D0/count<4>/CYSELF  (
    .I(\D0/count<4>/F ),
    .O(\D0/count<4>/CYSELF_2190 )
  );
  X_BUF   \D0/count<4>/DYMUX  (
    .I(\D0/count<4>/XORG_2192 ),
    .O(\D0/count<4>/DYMUX_2194 )
  );
  X_XOR2   \D0/count<4>/XORG  (
    .I0(\D0/Mcount_count_cy[4] ),
    .I1(\D0/count<4>/G ),
    .O(\D0/count<4>/XORG_2192 )
  );
  X_BUF   \D0/count<4>/COUTUSED  (
    .I(\D0/count<4>/CYMUXFAST_2189 ),
    .O(\D0/Mcount_count_cy[5] )
  );
  X_BUF   \D0/count<4>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[3] ),
    .O(\D0/count<4>/FASTCARRY_2187 )
  );
  X_AND2   \D0/count<4>/CYAND  (
    .I0(\D0/count<4>/CYSELG_2175 ),
    .I1(\D0/count<4>/CYSELF_2190 ),
    .O(\D0/count<4>/CYAND_2188 )
  );
  X_MUX2   \D0/count<4>/CYMUXFAST  (
    .IA(\D0/count<4>/CYMUXG2_2186 ),
    .IB(\D0/count<4>/FASTCARRY_2187 ),
    .SEL(\D0/count<4>/CYAND_2188 ),
    .O(\D0/count<4>/CYMUXFAST_2189 )
  );
  X_MUX2   \D0/count<4>/CYMUXG2  (
    .IA(\D0/count<4>/LOGIC_ZERO_2184 ),
    .IB(\D0/count<4>/CYMUXF2_2185 ),
    .SEL(\D0/count<4>/CYSELG_2175 ),
    .O(\D0/count<4>/CYMUXG2_2186 )
  );
  X_BUF   \D0/count<4>/CYSELG  (
    .I(\D0/count<4>/G ),
    .O(\D0/count<4>/CYSELG_2175 )
  );
  X_BUF   \D0/count<4>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<4>/SRINV_2173 )
  );
  X_BUF   \D0/count<4>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<4>/CLKINV_2172 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_11  (
    .I(\D0/count<10>/DYMUX_2350 ),
    .CE(VCC),
    .CLK(\D0/count<10>/CLKINV_2328 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<10>/SRINV_2329 ),
    .O(\D0/count [11])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_10  (
    .I(\D0/count<10>/DXMUX_2367 ),
    .CE(VCC),
    .CLK(\D0/count<10>/CLKINV_2328 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<10>/SRINV_2329 ),
    .O(\D0/count [10])
  );
  X_ZERO   \D0/count<10>/LOGIC_ZERO  (
    .O(\D0/count<10>/LOGIC_ZERO_2340 )
  );
  X_BUF   \D0/count<10>/DXMUX  (
    .I(\D0/count<10>/XORF_2365 ),
    .O(\D0/count<10>/DXMUX_2367 )
  );
  X_XOR2   \D0/count<10>/XORF  (
    .I0(\D0/count<10>/CYINIT_2364 ),
    .I1(\D0/count<10>/F ),
    .O(\D0/count<10>/XORF_2365 )
  );
  X_MUX2   \D0/count<10>/CYMUXF  (
    .IA(\D0/count<10>/LOGIC_ZERO_2340 ),
    .IB(\D0/count<10>/CYINIT_2364 ),
    .SEL(\D0/count<10>/CYSELF_2346 ),
    .O(\D0/Mcount_count_cy[10] )
  );
  X_MUX2   \D0/count<10>/CYMUXF2  (
    .IA(\D0/count<10>/LOGIC_ZERO_2340 ),
    .IB(\D0/count<10>/LOGIC_ZERO_2340 ),
    .SEL(\D0/count<10>/CYSELF_2346 ),
    .O(\D0/count<10>/CYMUXF2_2341 )
  );
  X_BUF   \D0/count<10>/CYINIT  (
    .I(\D0/Mcount_count_cy[9] ),
    .O(\D0/count<10>/CYINIT_2364 )
  );
  X_BUF   \D0/count<10>/CYSELF  (
    .I(\D0/count<10>/F ),
    .O(\D0/count<10>/CYSELF_2346 )
  );
  X_BUF   \D0/count<10>/DYMUX  (
    .I(\D0/count<10>/XORG_2348 ),
    .O(\D0/count<10>/DYMUX_2350 )
  );
  X_XOR2   \D0/count<10>/XORG  (
    .I0(\D0/Mcount_count_cy[10] ),
    .I1(\D0/count<10>/G ),
    .O(\D0/count<10>/XORG_2348 )
  );
  X_BUF   \D0/count<10>/COUTUSED  (
    .I(\D0/count<10>/CYMUXFAST_2345 ),
    .O(\D0/Mcount_count_cy[11] )
  );
  X_BUF   \D0/count<10>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[9] ),
    .O(\D0/count<10>/FASTCARRY_2343 )
  );
  X_AND2   \D0/count<10>/CYAND  (
    .I0(\D0/count<10>/CYSELG_2331 ),
    .I1(\D0/count<10>/CYSELF_2346 ),
    .O(\D0/count<10>/CYAND_2344 )
  );
  X_MUX2   \D0/count<10>/CYMUXFAST  (
    .IA(\D0/count<10>/CYMUXG2_2342 ),
    .IB(\D0/count<10>/FASTCARRY_2343 ),
    .SEL(\D0/count<10>/CYAND_2344 ),
    .O(\D0/count<10>/CYMUXFAST_2345 )
  );
  X_MUX2   \D0/count<10>/CYMUXG2  (
    .IA(\D0/count<10>/LOGIC_ZERO_2340 ),
    .IB(\D0/count<10>/CYMUXF2_2341 ),
    .SEL(\D0/count<10>/CYSELG_2331 ),
    .O(\D0/count<10>/CYMUXG2_2342 )
  );
  X_BUF   \D0/count<10>/CYSELG  (
    .I(\D0/count<10>/G ),
    .O(\D0/count<10>/CYSELG_2331 )
  );
  X_BUF   \D0/count<10>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<10>/SRINV_2329 )
  );
  X_BUF   \D0/count<10>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<10>/CLKINV_2328 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_13  (
    .I(\D0/count<12>/DYMUX_2402 ),
    .CE(VCC),
    .CLK(\D0/count<12>/CLKINV_2380 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<12>/SRINV_2381 ),
    .O(\D0/count [13])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_12  (
    .I(\D0/count<12>/DXMUX_2419 ),
    .CE(VCC),
    .CLK(\D0/count<12>/CLKINV_2380 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<12>/SRINV_2381 ),
    .O(\D0/count [12])
  );
  X_ZERO   \D0/count<12>/LOGIC_ZERO  (
    .O(\D0/count<12>/LOGIC_ZERO_2392 )
  );
  X_BUF   \D0/count<12>/DXMUX  (
    .I(\D0/count<12>/XORF_2417 ),
    .O(\D0/count<12>/DXMUX_2419 )
  );
  X_XOR2   \D0/count<12>/XORF  (
    .I0(\D0/count<12>/CYINIT_2416 ),
    .I1(\D0/count<12>/F ),
    .O(\D0/count<12>/XORF_2417 )
  );
  X_MUX2   \D0/count<12>/CYMUXF  (
    .IA(\D0/count<12>/LOGIC_ZERO_2392 ),
    .IB(\D0/count<12>/CYINIT_2416 ),
    .SEL(\D0/count<12>/CYSELF_2398 ),
    .O(\D0/Mcount_count_cy[12] )
  );
  X_MUX2   \D0/count<12>/CYMUXF2  (
    .IA(\D0/count<12>/LOGIC_ZERO_2392 ),
    .IB(\D0/count<12>/LOGIC_ZERO_2392 ),
    .SEL(\D0/count<12>/CYSELF_2398 ),
    .O(\D0/count<12>/CYMUXF2_2393 )
  );
  X_BUF   \D0/count<12>/CYINIT  (
    .I(\D0/Mcount_count_cy[11] ),
    .O(\D0/count<12>/CYINIT_2416 )
  );
  X_BUF   \D0/count<12>/CYSELF  (
    .I(\D0/count<12>/F ),
    .O(\D0/count<12>/CYSELF_2398 )
  );
  X_BUF   \D0/count<12>/DYMUX  (
    .I(\D0/count<12>/XORG_2400 ),
    .O(\D0/count<12>/DYMUX_2402 )
  );
  X_XOR2   \D0/count<12>/XORG  (
    .I0(\D0/Mcount_count_cy[12] ),
    .I1(\D0/count<12>/G ),
    .O(\D0/count<12>/XORG_2400 )
  );
  X_BUF   \D0/count<12>/COUTUSED  (
    .I(\D0/count<12>/CYMUXFAST_2397 ),
    .O(\D0/Mcount_count_cy[13] )
  );
  X_BUF   \D0/count<12>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[11] ),
    .O(\D0/count<12>/FASTCARRY_2395 )
  );
  X_AND2   \D0/count<12>/CYAND  (
    .I0(\D0/count<12>/CYSELG_2383 ),
    .I1(\D0/count<12>/CYSELF_2398 ),
    .O(\D0/count<12>/CYAND_2396 )
  );
  X_MUX2   \D0/count<12>/CYMUXFAST  (
    .IA(\D0/count<12>/CYMUXG2_2394 ),
    .IB(\D0/count<12>/FASTCARRY_2395 ),
    .SEL(\D0/count<12>/CYAND_2396 ),
    .O(\D0/count<12>/CYMUXFAST_2397 )
  );
  X_MUX2   \D0/count<12>/CYMUXG2  (
    .IA(\D0/count<12>/LOGIC_ZERO_2392 ),
    .IB(\D0/count<12>/CYMUXF2_2393 ),
    .SEL(\D0/count<12>/CYSELG_2383 ),
    .O(\D0/count<12>/CYMUXG2_2394 )
  );
  X_BUF   \D0/count<12>/CYSELG  (
    .I(\D0/count<12>/G ),
    .O(\D0/count<12>/CYSELG_2383 )
  );
  X_BUF   \D0/count<12>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<12>/SRINV_2381 )
  );
  X_BUF   \D0/count<12>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<12>/CLKINV_2380 )
  );
  X_ZERO   \D0/count<6>/LOGIC_ZERO  (
    .O(\D0/count<6>/LOGIC_ZERO_2236 )
  );
  X_BUF   \D0/count<6>/DXMUX  (
    .I(\D0/count<6>/XORF_2261 ),
    .O(\D0/count<6>/DXMUX_2263 )
  );
  X_XOR2   \D0/count<6>/XORF  (
    .I0(\D0/count<6>/CYINIT_2260 ),
    .I1(\D0/count<6>/F ),
    .O(\D0/count<6>/XORF_2261 )
  );
  X_MUX2   \D0/count<6>/CYMUXF  (
    .IA(\D0/count<6>/LOGIC_ZERO_2236 ),
    .IB(\D0/count<6>/CYINIT_2260 ),
    .SEL(\D0/count<6>/CYSELF_2242 ),
    .O(\D0/Mcount_count_cy[6] )
  );
  X_MUX2   \D0/count<6>/CYMUXF2  (
    .IA(\D0/count<6>/LOGIC_ZERO_2236 ),
    .IB(\D0/count<6>/LOGIC_ZERO_2236 ),
    .SEL(\D0/count<6>/CYSELF_2242 ),
    .O(\D0/count<6>/CYMUXF2_2237 )
  );
  X_BUF   \D0/count<6>/CYINIT  (
    .I(\D0/Mcount_count_cy[5] ),
    .O(\D0/count<6>/CYINIT_2260 )
  );
  X_BUF   \D0/count<6>/CYSELF  (
    .I(\D0/count<6>/F ),
    .O(\D0/count<6>/CYSELF_2242 )
  );
  X_BUF   \D0/count<6>/DYMUX  (
    .I(\D0/count<6>/XORG_2244 ),
    .O(\D0/count<6>/DYMUX_2246 )
  );
  X_XOR2   \D0/count<6>/XORG  (
    .I0(\D0/Mcount_count_cy[6] ),
    .I1(\D0/count<6>/G ),
    .O(\D0/count<6>/XORG_2244 )
  );
  X_BUF   \D0/count<6>/COUTUSED  (
    .I(\D0/count<6>/CYMUXFAST_2241 ),
    .O(\D0/Mcount_count_cy[7] )
  );
  X_BUF   \D0/count<6>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[5] ),
    .O(\D0/count<6>/FASTCARRY_2239 )
  );
  X_AND2   \D0/count<6>/CYAND  (
    .I0(\D0/count<6>/CYSELG_2227 ),
    .I1(\D0/count<6>/CYSELF_2242 ),
    .O(\D0/count<6>/CYAND_2240 )
  );
  X_MUX2   \D0/count<6>/CYMUXFAST  (
    .IA(\D0/count<6>/CYMUXG2_2238 ),
    .IB(\D0/count<6>/FASTCARRY_2239 ),
    .SEL(\D0/count<6>/CYAND_2240 ),
    .O(\D0/count<6>/CYMUXFAST_2241 )
  );
  X_MUX2   \D0/count<6>/CYMUXG2  (
    .IA(\D0/count<6>/LOGIC_ZERO_2236 ),
    .IB(\D0/count<6>/CYMUXF2_2237 ),
    .SEL(\D0/count<6>/CYSELG_2227 ),
    .O(\D0/count<6>/CYMUXG2_2238 )
  );
  X_BUF   \D0/count<6>/CYSELG  (
    .I(\D0/count<6>/G ),
    .O(\D0/count<6>/CYSELG_2227 )
  );
  X_BUF   \D0/count<6>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<6>/SRINV_2225 )
  );
  X_BUF   \D0/count<6>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<6>/CLKINV_2224 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \D0/count_cmp_eq0000_wg_lut<2>  (
    .ADR0(\D0/count [11]),
    .ADR1(\D0/count [1]),
    .ADR2(\D0/count [13]),
    .ADR3(\D0/count [10]),
    .O(\D0/count_cmp_eq0000_wg_lut [2])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \D0/count_cmp_eq0000_wg_lut<3>  (
    .ADR0(\D0/count [14]),
    .ADR1(\D0/count [17]),
    .ADR2(\D0/count [0]),
    .ADR3(\D0/count [15]),
    .O(\D0/count_cmp_eq0000_wg_lut [3])
  );
  X_ZERO   \D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO  (
    .O(\D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_2619 )
  );
  X_MUX2   \D0/count_cmp_eq0000_wg_cy<3>/CYMUXF2  (
    .IA(\D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_2619 ),
    .IB(\D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_2619 ),
    .SEL(\D0/count_cmp_eq0000_wg_cy<3>/CYSELF_2625 ),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXF2_2620 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<3>/CYSELF  (
    .I(\D0/count_cmp_eq0000_wg_lut [2]),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYSELF_2625 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<3>/FASTCARRY  (
    .I(\D0/count_cmp_eq0000_wg_cy<1>/CYMUXG_2592 ),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/FASTCARRY_2622 )
  );
  X_AND2   \D0/count_cmp_eq0000_wg_cy<3>/CYAND  (
    .I0(\D0/count_cmp_eq0000_wg_cy<3>/CYSELG_2613 ),
    .I1(\D0/count_cmp_eq0000_wg_cy<3>/CYSELF_2625 ),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYAND_2623 )
  );
  X_MUX2   \D0/count_cmp_eq0000_wg_cy<3>/CYMUXFAST  (
    .IA(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXG2_2621 ),
    .IB(\D0/count_cmp_eq0000_wg_cy<3>/FASTCARRY_2622 ),
    .SEL(\D0/count_cmp_eq0000_wg_cy<3>/CYAND_2623 ),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXFAST_2624 )
  );
  X_MUX2   \D0/count_cmp_eq0000_wg_cy<3>/CYMUXG2  (
    .IA(\D0/count_cmp_eq0000_wg_cy<3>/LOGIC_ZERO_2619 ),
    .IB(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXF2_2620 ),
    .SEL(\D0/count_cmp_eq0000_wg_cy<3>/CYSELG_2613 ),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXG2_2621 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<3>/CYSELG  (
    .I(\D0/count_cmp_eq0000_wg_lut [3]),
    .O(\D0/count_cmp_eq0000_wg_cy<3>/CYSELG_2613 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_16  (
    .I(\D0/count<16>/DXMUX_2523 ),
    .CE(VCC),
    .CLK(\D0/count<16>/CLKINV_2484 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<16>/SRINV_2485 ),
    .O(\D0/count [16])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_17  (
    .I(\D0/count<16>/DYMUX_2506 ),
    .CE(VCC),
    .CLK(\D0/count<16>/CLKINV_2484 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<16>/SRINV_2485 ),
    .O(\D0/count [17])
  );
  X_ZERO   \D0/count<16>/LOGIC_ZERO  (
    .O(\D0/count<16>/LOGIC_ZERO_2496 )
  );
  X_BUF   \D0/count<16>/DXMUX  (
    .I(\D0/count<16>/XORF_2521 ),
    .O(\D0/count<16>/DXMUX_2523 )
  );
  X_XOR2   \D0/count<16>/XORF  (
    .I0(\D0/count<16>/CYINIT_2520 ),
    .I1(\D0/count<16>/F ),
    .O(\D0/count<16>/XORF_2521 )
  );
  X_MUX2   \D0/count<16>/CYMUXF  (
    .IA(\D0/count<16>/LOGIC_ZERO_2496 ),
    .IB(\D0/count<16>/CYINIT_2520 ),
    .SEL(\D0/count<16>/CYSELF_2502 ),
    .O(\D0/Mcount_count_cy[16] )
  );
  X_MUX2   \D0/count<16>/CYMUXF2  (
    .IA(\D0/count<16>/LOGIC_ZERO_2496 ),
    .IB(\D0/count<16>/LOGIC_ZERO_2496 ),
    .SEL(\D0/count<16>/CYSELF_2502 ),
    .O(\D0/count<16>/CYMUXF2_2497 )
  );
  X_BUF   \D0/count<16>/CYINIT  (
    .I(\D0/Mcount_count_cy[15] ),
    .O(\D0/count<16>/CYINIT_2520 )
  );
  X_BUF   \D0/count<16>/CYSELF  (
    .I(\D0/count<16>/F ),
    .O(\D0/count<16>/CYSELF_2502 )
  );
  X_BUF   \D0/count<16>/DYMUX  (
    .I(\D0/count<16>/XORG_2504 ),
    .O(\D0/count<16>/DYMUX_2506 )
  );
  X_XOR2   \D0/count<16>/XORG  (
    .I0(\D0/Mcount_count_cy[16] ),
    .I1(\D0/count<16>/G ),
    .O(\D0/count<16>/XORG_2504 )
  );
  X_BUF   \D0/count<16>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[15] ),
    .O(\D0/count<16>/FASTCARRY_2499 )
  );
  X_AND2   \D0/count<16>/CYAND  (
    .I0(\D0/count<16>/CYSELG_2487 ),
    .I1(\D0/count<16>/CYSELF_2502 ),
    .O(\D0/count<16>/CYAND_2500 )
  );
  X_MUX2   \D0/count<16>/CYMUXFAST  (
    .IA(\D0/count<16>/CYMUXG2_2498 ),
    .IB(\D0/count<16>/FASTCARRY_2499 ),
    .SEL(\D0/count<16>/CYAND_2500 ),
    .O(\D0/count<16>/CYMUXFAST_2501 )
  );
  X_MUX2   \D0/count<16>/CYMUXG2  (
    .IA(\D0/count<16>/LOGIC_ZERO_2496 ),
    .IB(\D0/count<16>/CYMUXF2_2497 ),
    .SEL(\D0/count<16>/CYSELG_2487 ),
    .O(\D0/count<16>/CYMUXG2_2498 )
  );
  X_BUF   \D0/count<16>/CYSELG  (
    .I(\D0/count<16>/G ),
    .O(\D0/count<16>/CYSELG_2487 )
  );
  X_BUF   \D0/count<16>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<16>/SRINV_2485 )
  );
  X_BUF   \D0/count<16>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<16>/CLKINV_2484 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<0>  (
    .ADR0(\U0/Count_DIV [0]),
    .ADR1(\U0/Count_DIV [1]),
    .ADR2(\U0/Count_DIV [2]),
    .ADR3(\U0/Count_DIV [3]),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[0] )
  );
  X_ZERO   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/LOGIC_ZERO  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/LOGIC_ZERO_2664 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYMUXF  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/LOGIC_ZERO_2664 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYINIT_2675 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELF_2669 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[0] )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYINIT  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/BXINV_2667 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYINIT_2675 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELF  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[0] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELF_2669 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/BXINV  (
    .I(1'b1),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/BXINV_2667 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYMUXG  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/LOGIC_ZERO_2664 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[0] ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELG_2656 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYMUXG_2666 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELG  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[1] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYSELG_2656 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<19>_rt  (
    .ADR0(\D0/count [19]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<19>_rt_2544 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_18  (
    .I(\D0/count<18>/DXMUX_2568 ),
    .CE(VCC),
    .CLK(\D0/count<18>/CLKINV_2535 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<18>/SRINV_2536 ),
    .O(\D0/count [18])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_19  (
    .I(\D0/count<18>/DYMUX_2549 ),
    .CE(VCC),
    .CLK(\D0/count<18>/CLKINV_2535 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<18>/SRINV_2536 ),
    .O(\D0/count [19])
  );
  X_ZERO   \D0/count<18>/LOGIC_ZERO  (
    .O(\D0/count<18>/LOGIC_ZERO_2565 )
  );
  X_BUF   \D0/count<18>/DXMUX  (
    .I(\D0/count<18>/XORF_2566 ),
    .O(\D0/count<18>/DXMUX_2568 )
  );
  X_XOR2   \D0/count<18>/XORF  (
    .I0(\D0/count<18>/CYINIT_2564 ),
    .I1(\D0/count<18>/F ),
    .O(\D0/count<18>/XORF_2566 )
  );
  X_MUX2   \D0/count<18>/CYMUXF  (
    .IA(\D0/count<18>/LOGIC_ZERO_2565 ),
    .IB(\D0/count<18>/CYINIT_2564 ),
    .SEL(\D0/count<18>/CYSELF_2555 ),
    .O(\D0/Mcount_count_cy[18] )
  );
  X_BUF   \D0/count<18>/CYINIT  (
    .I(\D0/count<16>/CYMUXFAST_2501 ),
    .O(\D0/count<18>/CYINIT_2564 )
  );
  X_BUF   \D0/count<18>/CYSELF  (
    .I(\D0/count<18>/F ),
    .O(\D0/count<18>/CYSELF_2555 )
  );
  X_BUF   \D0/count<18>/DYMUX  (
    .I(\D0/count<18>/XORG_2547 ),
    .O(\D0/count<18>/DYMUX_2549 )
  );
  X_XOR2   \D0/count<18>/XORG  (
    .I0(\D0/Mcount_count_cy[18] ),
    .I1(\D0/count<19>_rt_2544 ),
    .O(\D0/count<18>/XORG_2547 )
  );
  X_BUF   \D0/count<18>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<18>/SRINV_2536 )
  );
  X_BUF   \D0/count<18>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<18>/CLKINV_2535 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_14  (
    .I(\D0/count<14>/DXMUX_2471 ),
    .CE(VCC),
    .CLK(\D0/count<14>/CLKINV_2432 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<14>/SRINV_2433 ),
    .O(\D0/count [14])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_15  (
    .I(\D0/count<14>/DYMUX_2454 ),
    .CE(VCC),
    .CLK(\D0/count<14>/CLKINV_2432 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<14>/SRINV_2433 ),
    .O(\D0/count [15])
  );
  X_ZERO   \D0/count<14>/LOGIC_ZERO  (
    .O(\D0/count<14>/LOGIC_ZERO_2444 )
  );
  X_BUF   \D0/count<14>/DXMUX  (
    .I(\D0/count<14>/XORF_2469 ),
    .O(\D0/count<14>/DXMUX_2471 )
  );
  X_XOR2   \D0/count<14>/XORF  (
    .I0(\D0/count<14>/CYINIT_2468 ),
    .I1(\D0/count<14>/F ),
    .O(\D0/count<14>/XORF_2469 )
  );
  X_MUX2   \D0/count<14>/CYMUXF  (
    .IA(\D0/count<14>/LOGIC_ZERO_2444 ),
    .IB(\D0/count<14>/CYINIT_2468 ),
    .SEL(\D0/count<14>/CYSELF_2450 ),
    .O(\D0/Mcount_count_cy[14] )
  );
  X_MUX2   \D0/count<14>/CYMUXF2  (
    .IA(\D0/count<14>/LOGIC_ZERO_2444 ),
    .IB(\D0/count<14>/LOGIC_ZERO_2444 ),
    .SEL(\D0/count<14>/CYSELF_2450 ),
    .O(\D0/count<14>/CYMUXF2_2445 )
  );
  X_BUF   \D0/count<14>/CYINIT  (
    .I(\D0/Mcount_count_cy[13] ),
    .O(\D0/count<14>/CYINIT_2468 )
  );
  X_BUF   \D0/count<14>/CYSELF  (
    .I(\D0/count<14>/F ),
    .O(\D0/count<14>/CYSELF_2450 )
  );
  X_BUF   \D0/count<14>/DYMUX  (
    .I(\D0/count<14>/XORG_2452 ),
    .O(\D0/count<14>/DYMUX_2454 )
  );
  X_XOR2   \D0/count<14>/XORG  (
    .I0(\D0/Mcount_count_cy[14] ),
    .I1(\D0/count<14>/G ),
    .O(\D0/count<14>/XORG_2452 )
  );
  X_BUF   \D0/count<14>/COUTUSED  (
    .I(\D0/count<14>/CYMUXFAST_2449 ),
    .O(\D0/Mcount_count_cy[15] )
  );
  X_BUF   \D0/count<14>/FASTCARRY  (
    .I(\D0/Mcount_count_cy[13] ),
    .O(\D0/count<14>/FASTCARRY_2447 )
  );
  X_AND2   \D0/count<14>/CYAND  (
    .I0(\D0/count<14>/CYSELG_2435 ),
    .I1(\D0/count<14>/CYSELF_2450 ),
    .O(\D0/count<14>/CYAND_2448 )
  );
  X_MUX2   \D0/count<14>/CYMUXFAST  (
    .IA(\D0/count<14>/CYMUXG2_2446 ),
    .IB(\D0/count<14>/FASTCARRY_2447 ),
    .SEL(\D0/count<14>/CYAND_2448 ),
    .O(\D0/count<14>/CYMUXFAST_2449 )
  );
  X_MUX2   \D0/count<14>/CYMUXG2  (
    .IA(\D0/count<14>/LOGIC_ZERO_2444 ),
    .IB(\D0/count<14>/CYMUXF2_2445 ),
    .SEL(\D0/count<14>/CYSELG_2435 ),
    .O(\D0/count<14>/CYMUXG2_2446 )
  );
  X_BUF   \D0/count<14>/CYSELG  (
    .I(\D0/count<14>/G ),
    .O(\D0/count<14>/CYSELG_2435 )
  );
  X_BUF   \D0/count<14>/SRINV  (
    .I(\D0/count_cmp_eq0000 ),
    .O(\D0/count<14>/SRINV_2433 )
  );
  X_BUF   \D0/count<14>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\D0/count<14>/CLKINV_2432 )
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \D0/count_cmp_eq0000_wg_lut<4>  (
    .ADR0(\D0/count [18]),
    .ADR1(\D0/count [2]),
    .ADR2(\D0/count [19]),
    .ADR3(\D0/count [16]),
    .O(\D0/count_cmp_eq0000_wg_lut [4])
  );
  X_ZERO   \D0/count_cmp_eq0000/LOGIC_ZERO  (
    .O(\D0/count_cmp_eq0000/LOGIC_ZERO_2646 )
  );
  X_MUX2   \D0/count_cmp_eq0000/CYMUXF  (
    .IA(\D0/count_cmp_eq0000/LOGIC_ZERO_2646 ),
    .IB(\D0/count_cmp_eq0000/CYINIT_2645 ),
    .SEL(\D0/count_cmp_eq0000/CYSELF_2639 ),
    .O(\D0/count_cmp_eq0000 )
  );
  X_BUF   \D0/count_cmp_eq0000/CYINIT  (
    .I(\D0/count_cmp_eq0000_wg_cy<3>/CYMUXFAST_2624 ),
    .O(\D0/count_cmp_eq0000/CYINIT_2645 )
  );
  X_BUF   \D0/count_cmp_eq0000/CYSELF  (
    .I(\D0/count_cmp_eq0000_wg_lut [4]),
    .O(\D0/count_cmp_eq0000/CYSELF_2639 )
  );
  X_LUT4 #(
    .INIT ( 16'h8888 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<1>  (
    .ADR0(\U0/Count_DIV [4]),
    .ADR1(\U0/Count_DIV [5]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[1] )
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  \D0/count_cmp_eq0000_wg_lut<0>  (
    .ADR0(\D0/count [5]),
    .ADR1(\D0/count [4]),
    .ADR2(\D0/count [7]),
    .ADR3(\D0/count [6]),
    .O(\D0/count_cmp_eq0000_wg_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \D0/count_cmp_eq0000_wg_lut<1>  (
    .ADR0(\D0/count [8]),
    .ADR1(\D0/count [3]),
    .ADR2(\D0/count [12]),
    .ADR3(\D0/count [9]),
    .O(\D0/count_cmp_eq0000_wg_lut [1])
  );
  X_ZERO   \D0/count_cmp_eq0000_wg_cy<1>/LOGIC_ZERO  (
    .O(\D0/count_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_2590 )
  );
  X_MUX2   \D0/count_cmp_eq0000_wg_cy<1>/CYMUXF  (
    .IA(\D0/count_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_2590 ),
    .IB(\D0/count_cmp_eq0000_wg_cy<1>/CYINIT_2601 ),
    .SEL(\D0/count_cmp_eq0000_wg_cy<1>/CYSELF_2595 ),
    .O(\D0/count_cmp_eq0000_wg_cy [0])
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<1>/CYINIT  (
    .I(\D0/count_cmp_eq0000_wg_cy<1>/BXINV_2593 ),
    .O(\D0/count_cmp_eq0000_wg_cy<1>/CYINIT_2601 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<1>/CYSELF  (
    .I(\D0/count_cmp_eq0000_wg_lut [0]),
    .O(\D0/count_cmp_eq0000_wg_cy<1>/CYSELF_2595 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<1>/BXINV  (
    .I(1'b1),
    .O(\D0/count_cmp_eq0000_wg_cy<1>/BXINV_2593 )
  );
  X_MUX2   \D0/count_cmp_eq0000_wg_cy<1>/CYMUXG  (
    .IA(\D0/count_cmp_eq0000_wg_cy<1>/LOGIC_ZERO_2590 ),
    .IB(\D0/count_cmp_eq0000_wg_cy [0]),
    .SEL(\D0/count_cmp_eq0000_wg_cy<1>/CYSELG_2584 ),
    .O(\D0/count_cmp_eq0000_wg_cy<1>/CYMUXG_2592 )
  );
  X_BUF   \D0/count_cmp_eq0000_wg_cy<1>/CYSELG  (
    .I(\D0/count_cmp_eq0000_wg_lut [1]),
    .O(\D0/count_cmp_eq0000_wg_cy<1>/CYSELG_2584 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<2>  (
    .ADR0(\U0/Count_DIV [6]),
    .ADR1(\U0/Count_DIV [7]),
    .ADR2(\U0/Count_DIV [8]),
    .ADR3(\U0/Count_DIV [9]),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[2] )
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<3>_INV_0  (
    .ADR0(\U0/Count_DIV [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[3] )
  );
  X_ONE   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE_2693 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXF2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE_2693 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE_2693 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELF_2699 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXF2_2694 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELF  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[2] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELF_2699 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/FASTCARRY  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<1>/CYMUXG_2666 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/FASTCARRY_2696 )
  );
  X_AND2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYAND  (
    .I0(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELG_2684 ),
    .I1(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELF_2699 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYAND_2697 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXFAST  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXG2_2695 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/FASTCARRY_2696 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYAND_2697 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXFAST_2698 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXG2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/LOGIC_ONE_2693 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXF2_2694 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELG_2684 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXG2_2695 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELG  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[3] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYSELG_2684 )
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<5>_INV_0  (
    .ADR0(\U0/Count_DIV [15]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[5] )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<4>  (
    .ADR0(\U0/Count_DIV [11]),
    .ADR1(\U0/Count_DIV [12]),
    .ADR2(\U0/Count_DIV [13]),
    .ADR3(\U0/Count_DIV [14]),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[4] )
  );
  X_ONE   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ONE  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ONE_2723 )
  );
  X_ZERO   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ZERO  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ZERO_2736 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXF2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ZERO_2736 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ZERO_2736 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELF_2729 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXF2_2724 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELF  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[4] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELF_2729 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/FASTCARRY  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<3>/CYMUXFAST_2698 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/FASTCARRY_2726 )
  );
  X_AND2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYAND  (
    .I0(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELG_2714 ),
    .I1(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELF_2729 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYAND_2727 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXFAST  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXG2_2725 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/FASTCARRY_2726 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYAND_2727 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXFAST_2728 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXG2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/LOGIC_ONE_2723 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXF2_2724 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELG_2714 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXG2_2725 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELG  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[5] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYSELG_2714 )
  );
  X_INV   \loops<0>/DXMUX  (
    .I(loops[0]),
    .O(\loops<0>/DXMUX_1397 )
  );
  X_BUF   \loops<0>/DYMUX  (
    .I(Mcount_loops1),
    .O(\loops<0>/DYMUX_1389 )
  );
  X_BUF   \loops<0>/SRINV  (
    .I(CLR_IBUF_801),
    .O(\loops<0>/SRINV_1379 )
  );
  X_BUF   \loops<0>/CLKINV  (
    .I(add_BUFGP),
    .O(\loops<0>/CLKINV_1378 )
  );
  X_BUF   \HEX0_5_OBUF/YUSED  (
    .I(\D0/iDIG<2>_pack_1 ),
    .O(\D0/iDIG [2])
  );
  X_BUF   \HEX0_2_OBUF/YUSED  (
    .I(\D0/iDIG<0>_pack_1 ),
    .O(\D0/iDIG [0])
  );
  X_BUF   \HEX0_4_OBUF/YUSED  (
    .I(\D0/iDIG<1>_pack_1 ),
    .O(\D0/iDIG [1])
  );
  X_BUF   \backward_OBUF/DXMUX  (
    .I(backward_mux0000),
    .O(\backward_OBUF/DXMUX_1366 )
  );
  X_BUF   \backward_OBUF/YUSED  (
    .I(state_cmp_eq0001_pack_1),
    .O(state_cmp_eq0001)
  );
  X_BUF   \backward_OBUF/SRINV  (
    .I(EN_or0000_0),
    .O(\backward_OBUF/SRINV_1351 )
  );
  X_BUF   \backward_OBUF/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\backward_OBUF/CLKINV_1350 )
  );
  X_BUF   \HEX0_1_OBUF/YUSED  (
    .I(\D0/iDIG<3>_pack_1 ),
    .O(\D0/iDIG [3])
  );
  X_INV   \C2/Q<0>/DXMUX  (
    .I(\C2/Q [0]),
    .O(\C2/Q<0>/DXMUX_1201 )
  );
  X_BUF   \C2/Q<0>/DYMUX  (
    .I(\C2/Mcount_Q1 ),
    .O(\C2/Q<0>/DYMUX_1192 )
  );
  X_INV   \C2/Q<0>/SRINV  (
    .I(nCR_783),
    .O(\C2/Q<0>/SRINVNOT )
  );
  X_BUF   \C2/Q<0>/CLKINV  (
    .I(\U0/CLK_1HzOut_782 ),
    .O(\C2/Q<0>/CLKINV_1183 )
  );
  X_BUF   \C2/Q<0>/CEINV  (
    .I(\C1/Q_cmp_eq0000_0 ),
    .O(\C2/Q<0>/CEINV_1182 )
  );
  X_INV   \U0/CLK_1HzOut/DYMUX  (
    .I(\U0/CLK_1HzOut_782 ),
    .O(\U0/CLK_1HzOut/DYMUX_1237 )
  );
  X_BUF   \U0/CLK_1HzOut/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\U0/CLK_1HzOut/CLKINV_1235 )
  );
  X_BUF   \U0/CLK_1HzOut/CEINV  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] ),
    .O(\U0/CLK_1HzOut/CEINV_1234 )
  );
  X_INV   \D0/scan_0/DYMUX  (
    .I(\D0/scan_0_820 ),
    .O(\D0/scan_0/DYMUX_1226 )
  );
  X_BUF   \D0/scan_0/CLKINV  (
    .I(\D0/clk_821 ),
    .O(\D0/scan_0/CLKINV_1224 )
  );
  X_OPAD   \alarm/PAD  (
    .PAD(alarm)
  );
  X_OBUF   alarm_OBUF (
    .I(\alarm/O ),
    .O(alarm)
  );
  X_OPAD   \HEX0<4>/PAD  (
    .PAD(HEX0[4])
  );
  X_OBUF   HEX0_4_OBUF (
    .I(\HEX0<4>/O ),
    .O(HEX0[4])
  );
  X_OPAD   \HEX0<5>/PAD  (
    .PAD(HEX0[5])
  );
  X_OBUF   HEX0_5_OBUF (
    .I(\HEX0<5>/O ),
    .O(HEX0[5])
  );
  X_OPAD   \SEL<0>/PAD  (
    .PAD(SEL[0])
  );
  X_OBUF   SEL_0_OBUF (
    .I(\SEL<0>/O ),
    .O(SEL[0])
  );
  X_OPAD   \HEX0<6>/PAD  (
    .PAD(HEX0[6])
  );
  X_OBUF   HEX0_6_OBUF (
    .I(\HEX0<6>/O ),
    .O(HEX0[6])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<16>_rt.1  (
    .ADR0(\U0/Count_DIV [16]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<16>_rt )
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<7>_INV_0  (
    .ADR0(\U0/Count_DIV [17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[7] )
  );
  X_ONE   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ONE  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ONE_2751 )
  );
  X_ZERO   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ZERO  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ZERO_2767 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXF2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ZERO_2767 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ZERO_2767 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELF_2757 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXF2_2752 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELF  (
    .I(\U0/Count_DIV<16>_rt ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELF_2757 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/FASTCARRY  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<5>/CYMUXFAST_2728 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/FASTCARRY_2754 )
  );
  X_AND2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYAND  (
    .I0(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELG_2742 ),
    .I1(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELF_2757 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYAND_2755 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXFAST  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXG2_2753 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/FASTCARRY_2754 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYAND_2755 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXFAST_2756 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXG2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/LOGIC_ONE_2751 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXF2_2752 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELG_2742 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXG2_2753 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELG  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[7] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYSELG_2742 )
  );
  X_OPAD   \HEX0<1>/PAD  (
    .PAD(HEX0[1])
  );
  X_OBUF   HEX0_1_OBUF (
    .I(\HEX0<1>/O ),
    .O(HEX0[1])
  );
  X_OPAD   \HEX0<2>/PAD  (
    .PAD(HEX0[2])
  );
  X_OBUF   HEX0_2_OBUF (
    .I(\HEX0<2>/O ),
    .O(HEX0[2])
  );
  X_OPAD   \off/PAD  (
    .PAD(off)
  );
  X_OBUF   off_OBUF (
    .I(\off/O ),
    .O(off)
  );
  X_OPAD   \SEL<1>/PAD  (
    .PAD(SEL[1])
  );
  X_OBUF   SEL_1_OBUF (
    .I(\SEL<1>/O ),
    .O(SEL[1])
  );
  X_OPAD   \HEX0<3>/PAD  (
    .PAD(HEX0[3])
  );
  X_OBUF   HEX0_3_OBUF (
    .I(\HEX0<3>/O ),
    .O(HEX0[3])
  );
  X_OPAD   \HEX0<0>/PAD  (
    .PAD(HEX0[0])
  );
  X_OBUF   HEX0_0_OBUF (
    .I(\HEX0<0>/O ),
    .O(HEX0[0])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<8>  (
    .ADR0(\U0/Count_DIV [18]),
    .ADR1(\U0/Count_DIV [19]),
    .ADR2(\U0/Count_DIV [20]),
    .ADR3(\U0/Count_DIV [21]),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[8] )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<22>_rt.1  (
    .ADR0(\U0/Count_DIV [22]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<22>_rt )
  );
  X_ZERO   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO_2785 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXF2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO_2785 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO_2785 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELF_2791 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXF2_2786 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELF  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[8] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELF_2791 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/FASTCARRY  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<7>/CYMUXFAST_2756 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/FASTCARRY_2788 )
  );
  X_AND2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYAND  (
    .I0(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELG_2776 ),
    .I1(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELF_2791 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYAND_2789 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXFAST  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXG2_2787 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/FASTCARRY_2788 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYAND_2789 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXFAST_2790 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXG2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/LOGIC_ZERO_2785 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXF2_2786 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELG_2776 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXG2_2787 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELG  (
    .I(\U0/Count_DIV<22>_rt ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYSELG_2776 )
  );
  X_IPAD   \CLK_50/PAD  (
    .PAD(CLK_50)
  );
  X_BUF   \CLK_50_BUFGP/IBUFG  (
    .I(CLK_50),
    .O(\CLK_50/INBUF )
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut<10>_INV_0  (
    .ADR0(\U0/Count_DIV [23]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[10] )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<24>_rt.1  (
    .ADR0(\U0/Count_DIV [24]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/G )
  );
  X_ZERO   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ZERO  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ZERO_2812 )
  );
  X_ONE   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ONE  (
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ONE_2828 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXF2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ONE_2828 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ONE_2828 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELF_2818 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXF2_2813 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELF  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_lut[10] ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELF_2818 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/COUTUSED  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXFAST_2817 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy[11] )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/FASTCARRY  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<9>/CYMUXFAST_2790 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/FASTCARRY_2815 )
  );
  X_AND2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYAND  (
    .I0(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELG_2803 ),
    .I1(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELF_2818 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYAND_2816 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXFAST  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXG2_2814 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/FASTCARRY_2815 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYAND_2816 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXFAST_2817 )
  );
  X_MUX2   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXG2  (
    .IA(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/LOGIC_ZERO_2812 ),
    .IB(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXF2_2813 ),
    .SEL(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELG_2803 ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYMUXG2_2814 )
  );
  X_BUF   \U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELG  (
    .I(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/G ),
    .O(\U0/Mcompar_CLK_1HzOut_cmp_lt0000_cy<11>/CYSELG_2803 )
  );
  X_BUF   \emergency/IFF/IMUX  (
    .I(\emergency/INBUF ),
    .O(emergency_IBUF_788)
  );
  X_IPAD   \emergency/PAD  (
    .PAD(emergency)
  );
  X_BUF   emergency_IBUF (
    .I(emergency),
    .O(\emergency/INBUF )
  );
  X_BUF   \start/IFF/IMUX  (
    .I(\start/INBUF ),
    .O(start_IBUF_790)
  );
  X_IPAD   \start/PAD  (
    .PAD(start)
  );
  X_BUF   start_IBUF (
    .I(start),
    .O(\start/INBUF )
  );
  X_OPAD   \backward/PAD  (
    .PAD(backward)
  );
  X_OBUF   backward_OBUF (
    .I(\backward/O ),
    .O(backward)
  );
  X_OPAD   \forward/PAD  (
    .PAD(forward)
  );
  X_OBUF   forward_OBUF (
    .I(\forward/O ),
    .O(forward)
  );
  X_BUF   \C1/Q<3>/DXMUX  (
    .I(\C1/Mcount_Q3 ),
    .O(\C1/Q<3>/DXMUX_3278 )
  );
  X_BUF   \C1/Q<3>/DYMUX  (
    .I(\C1/Mcount_Q2 ),
    .O(\C1/Q<3>/DYMUX_3263 )
  );
  X_INV   \C1/Q<3>/SRINV  (
    .I(nCR_783),
    .O(\C1/Q<3>/SRINVNOT )
  );
  X_BUF   \C1/Q<3>/CLKINV  (
    .I(\U0/CLK_1HzOut_782 ),
    .O(\C1/Q<3>/CLKINV_3253 )
  );
  X_BUF   \C1/Q<3>/CEINV  (
    .I(EN_809),
    .O(\C1/Q<3>/CEINV_3252 )
  );
  X_IPAD   \CLR/PAD  (
    .PAD(CLR)
  );
  X_BUF   CLR_IBUF (
    .I(CLR),
    .O(\CLR/INBUF )
  );
  X_BUFGMUX   \CLK_50_BUFGP/BUFG  (
    .I0(\CLK_50_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\CLK_50_BUFGP/BUFG/S_INVNOT ),
    .O(CLK_50_BUFGP)
  );
  X_INV   \CLK_50_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\CLK_50_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \CLK_50_BUFGP/BUFG/I0_USED  (
    .I(\CLK_50/INBUF ),
    .O(\CLK_50_BUFGP/BUFG/I0_INV )
  );
  X_BUF   \state_cmp_eq0002/XUSED  (
    .I(\state_cmp_eq0002/F5MUX_3030 ),
    .O(state_cmp_eq0002)
  );
  X_MUX2   \state_cmp_eq0002/F5MUX  (
    .IA(state_cmp_eq00021_3017),
    .IB(\state_cmp_eq0002/F ),
    .SEL(\state_cmp_eq0002/BXINV_3019 ),
    .O(\state_cmp_eq0002/F5MUX_3030 )
  );
  X_BUF   \state_cmp_eq0002/BXINV  (
    .I(\C2/Q [3]),
    .O(\state_cmp_eq0002/BXINV_3019 )
  );
  X_IPAD   \add/PAD  (
    .PAD(add)
  );
  X_BUF   \add_BUFGP/IBUFG  (
    .I(add),
    .O(\add/INBUF )
  );
  X_BUF   \CLR/IFF/IMUX  (
    .I(\CLR/INBUF ),
    .O(CLR_IBUF_801)
  );
  X_BUF   \off_OBUF/DXMUX  (
    .I(\off_OBUF/F5MUX_3062 ),
    .O(\off_OBUF/DXMUX_3064 )
  );
  X_MUX2   \off_OBUF/F5MUX  (
    .IA(N36),
    .IB(N37),
    .SEL(\off_OBUF/BXINV_3055 ),
    .O(\off_OBUF/F5MUX_3062 )
  );
  X_BUF   \off_OBUF/BXINV  (
    .I(N01),
    .O(\off_OBUF/BXINV_3055 )
  );
  X_BUF   \off_OBUF/REVUSED  (
    .I(emergency_IBUF_788),
    .O(\off_OBUF/REVUSED_3054 )
  );
  X_INV   \off_OBUF/SRINV  (
    .I(start_IBUF_790),
    .O(\off_OBUF/SRINVNOT )
  );
  X_BUF   \off_OBUF/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\off_OBUF/CLKINV_3045 )
  );
  X_BUF   \times_not0001/XUSED  (
    .I(\times_not0001/F5MUX_3093 ),
    .O(times_not0001)
  );
  X_MUX2   \times_not0001/F5MUX  (
    .IA(times_not00012_3081),
    .IB(times_not00011),
    .SEL(\times_not0001/BXINV_3083 ),
    .O(\times_not0001/F5MUX_3093 )
  );
  X_BUF   \times_not0001/BXINV  (
    .I(state_FSM_FFd2_792),
    .O(\times_not0001/BXINV_3083 )
  );
  X_BUFGMUX   \add_BUFGP/BUFG  (
    .I0(\add_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\add_BUFGP/BUFG/S_INVNOT ),
    .O(add_BUFGP)
  );
  X_INV   \add_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\add_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF   \add_BUFGP/BUFG/I0_USED  (
    .I(\add/INBUF ),
    .O(\add_BUFGP/BUFG/I0_INV )
  );
  X_LUT4 #(
    .INIT ( 16'h2020 ))
  forward_mux00002 (
    .ADR0(state_cmp_eq0001),
    .ADR1(state_FSM_FFd1_791),
    .ADR2(N01),
    .ADR3(VCC),
    .O(forward_mux00002_2989)
  );
  X_BUF   \forward_OBUF/DXMUX  (
    .I(\forward_OBUF/F5MUX_3000 ),
    .O(\forward_OBUF/DXMUX_3002 )
  );
  X_MUX2   \forward_OBUF/F5MUX  (
    .IA(forward_mux00002_2989),
    .IB(forward_mux00001_2998),
    .SEL(\forward_OBUF/BXINV_2991 ),
    .O(\forward_OBUF/F5MUX_3000 )
  );
  X_BUF   \forward_OBUF/BXINV  (
    .I(state_FSM_FFd2_792),
    .O(\forward_OBUF/BXINV_2991 )
  );
  X_BUF   \forward_OBUF/SRINV  (
    .I(EN_or0000_0),
    .O(\forward_OBUF/SRINV_2983 )
  );
  X_BUF   \forward_OBUF/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\forward_OBUF/CLKINV_2982 )
  );
  X_BUF   \times<3>/DXMUX  (
    .I(Mcount_times3),
    .O(\times<3>/DXMUX_3193 )
  );
  X_BUF   \times<3>/YUSED  (
    .I(\Mcount_times_xor<3>1_SW1/O_pack_2 ),
    .O(\Mcount_times_xor<3>1_SW1/O )
  );
  X_BUF   \times<3>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\times<3>/CLKINV_3177 )
  );
  X_BUF   \times<3>/CEINV  (
    .I(times_not0001),
    .O(\times<3>/CEINV_3176 )
  );
  X_BUF   \EN/XUSED  (
    .I(\EN_mux0000_SW0/O_pack_1 ),
    .O(\EN_mux0000_SW0/O )
  );
  X_BUF   \EN/REVUSED  (
    .I(times[3]),
    .O(\EN/REVUSED_3151 )
  );
  X_BUF   \EN/DYMUX  (
    .I(EN_mux00001_3147),
    .O(\EN/DYMUX_3150 )
  );
  X_BUF   \EN/SRINV  (
    .I(EN_or0000_0),
    .O(\EN/SRINV_3140 )
  );
  X_BUF   \EN/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\EN/CLKINV_3139 )
  );
  X_BUF   \state_FSM_FFd2/DXMUX  (
    .I(\state_FSM_FFd2-In ),
    .O(\state_FSM_FFd2/DXMUX_3234 )
  );
  X_BUF   \state_FSM_FFd2/DYMUX  (
    .I(\state_FSM_FFd1-In ),
    .O(\state_FSM_FFd2/DYMUX_3221 )
  );
  X_INV   \state_FSM_FFd2/SRINV  (
    .I(start_IBUF_790),
    .O(\state_FSM_FFd2/SRINVNOT )
  );
  X_BUF   \state_FSM_FFd2/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\state_FSM_FFd2/CLKINV_3211 )
  );
  X_INV   \state_FSM_FFd2/CEINV  (
    .I(emergency_IBUF_788),
    .O(\state_FSM_FFd2/CEINVNOT )
  );
  X_BUF   \times<2>/DXMUX  (
    .I(Mcount_times2),
    .O(\times<2>/DXMUX_3123 )
  );
  X_BUF   \times<2>/YUSED  (
    .I(\Mcount_times_xor<2>1_SW0/O_pack_2 ),
    .O(\Mcount_times_xor<2>1_SW0/O )
  );
  X_BUF   \times<2>/CLKINV  (
    .I(CLK_50_BUFGP),
    .O(\times<2>/CLKINV_3106 )
  );
  X_BUF   \times<2>/CEINV  (
    .I(times_not0001),
    .O(\times<2>/CEINV_3105 )
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ))
  \Mcount_loops_xor<3>11  (
    .ADR0(loops[1]),
    .ADR1(loops[3]),
    .ADR2(loops[0]),
    .ADR3(loops[2]),
    .O(Mcount_loops3)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  loops_3 (
    .I(\loops<3>/DXMUX_1056 ),
    .CE(VCC),
    .CLK(\loops<3>/CLKINV_1032 ),
    .SET(GND),
    .RST(\loops<3>/SRINV_1033 ),
    .O(loops[3])
  );
  X_LUT4 #(
    .INIT ( 16'hDDDD ))
  EN_or00001 (
    .ADR0(start_IBUF_790),
    .ADR1(emergency_IBUF_788),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(EN_or0000)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  times_0 (
    .I(\times<1>/DYMUX_1004 ),
    .CE(\times<1>/CEINV_994 ),
    .CLK(\times<1>/CLKINV_995 ),
    .SET(GND),
    .RST(GND),
    .O(times[0])
  );
  X_LUT4 #(
    .INIT ( 16'h6CCC ))
  \C2/Mcount_Q_xor<3>11  (
    .ADR0(\C2/Q [1]),
    .ADR1(\C2/Q [3]),
    .ADR2(\C2/Q [0]),
    .ADR3(\C2/Q [2]),
    .O(\C2/Mcount_Q3 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  times_1 (
    .I(\times<1>/DXMUX_1016 ),
    .CE(\times<1>/CEINV_994 ),
    .CLK(\times<1>/CLKINV_995 ),
    .SET(GND),
    .RST(GND),
    .O(times[1])
  );
  X_LUT4 #(
    .INIT ( 16'h0020 ))
  state_cmp_eq000211 (
    .ADR0(\C1/Q [3]),
    .ADR1(\C1/Q [1]),
    .ADR2(\C1/Q [0]),
    .ADR3(\C1/Q [2]),
    .O(\C1/Q_cmp_eq0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ))
  \Mcount_loops_xor<2>11  (
    .ADR0(loops[2]),
    .ADR1(loops[1]),
    .ADR2(loops[0]),
    .ADR3(VCC),
    .O(Mcount_loops2)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  loops_2 (
    .I(\loops<3>/DYMUX_1042 ),
    .CE(VCC),
    .CLK(\loops<3>/CLKINV_1032 ),
    .SET(GND),
    .RST(\loops<3>/SRINV_1033 ),
    .O(loops[2])
  );
  X_LUT4 #(
    .INIT ( 16'h6F6E ))
  nCR_mux00001 (
    .ADR0(state_FSM_FFd1_791),
    .ADR1(state_FSM_FFd2_792),
    .ADR2(state_cmp_eq0001),
    .ADR3(N01),
    .O(nCR_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'hD782 ))
  \Mcount_times_xor<1>11  (
    .ADR0(start_IBUF_790),
    .ADR1(times[0]),
    .ADR2(times[1]),
    .ADR3(loops[1]),
    .O(Mcount_times1)
  );
  X_LUT4 #(
    .INIT ( 16'h6C64 ))
  \C2/Mcount_Q_xor<2>11  (
    .ADR0(\C2/Q [0]),
    .ADR1(\C2/Q [2]),
    .ADR2(\C2/Q [1]),
    .ADR3(\C2/Q [3]),
    .O(\C2/Mcount_Q2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C2/Q_2  (
    .I(\C2/Q<3>/DYMUX_935 ),
    .CE(\C2/Q<3>/CEINV_925 ),
    .CLK(\C2/Q<3>/CLKINV_926 ),
    .SET(GND),
    .RST(\C2/Q<3>/SRINVNOT ),
    .O(\C2/Q [2])
  );
  X_LUT4 #(
    .INIT ( 16'h4E4E ))
  \Mcount_times_xor<0>11  (
    .ADR0(start_IBUF_790),
    .ADR1(loops[0]),
    .ADR2(times[0]),
    .ADR3(VCC),
    .O(Mcount_times)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C2/Q_3  (
    .I(\C2/Q<3>/DXMUX_950 ),
    .CE(\C2/Q<3>/CEINV_925 ),
    .CLK(\C2/Q<3>/CLKINV_926 ),
    .SET(GND),
    .RST(\C2/Q<3>/SRINVNOT ),
    .O(\C2/Q [3])
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  nCR (
    .I(\nCR/DYMUX_976 ),
    .CE(VCC),
    .CLK(\nCR/CLKINV_966 ),
    .SET(GND),
    .RST(GND),
    .SSET(\nCR/REVUSED_977 ),
    .SRST(\nCR/SRINVNOT ),
    .O(nCR_783)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_2  (
    .I(\U0/Count_DIV<2>/DXMUX_1513 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<2>/CLKINV_1474 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<2>/SRINV_1475 ),
    .O(\U0/Count_DIV [2])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_3  (
    .I(\U0/Count_DIV<2>/DYMUX_1496 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<2>/CLKINV_1474 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<2>/SRINV_1475 ),
    .O(\U0/Count_DIV [3])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_5  (
    .I(\U0/Count_DIV<4>/DYMUX_1548 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<4>/CLKINV_1526 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<4>/SRINV_1527 ),
    .O(\U0/Count_DIV [5])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_4  (
    .I(\U0/Count_DIV<4>/DXMUX_1565 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<4>/CLKINV_1526 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<4>/SRINV_1527 ),
    .O(\U0/Count_DIV [4])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_7  (
    .I(\U0/Count_DIV<6>/DYMUX_1600 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<6>/CLKINV_1578 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<6>/SRINV_1579 ),
    .O(\U0/Count_DIV [7])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_11  (
    .I(\U0/Count_DIV<10>/DYMUX_1704 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<10>/CLKINV_1682 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<10>/SRINV_1683 ),
    .O(\U0/Count_DIV [11])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_9  (
    .I(\U0/Count_DIV<8>/DYMUX_1652 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<8>/CLKINV_1630 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<8>/SRINV_1631 ),
    .O(\U0/Count_DIV [9])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_8  (
    .I(\U0/Count_DIV<8>/DXMUX_1669 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<8>/CLKINV_1630 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<8>/SRINV_1631 ),
    .O(\U0/Count_DIV [8])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_6  (
    .I(\U0/Count_DIV<6>/DXMUX_1617 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<6>/CLKINV_1578 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<6>/SRINV_1579 ),
    .O(\U0/Count_DIV [6])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_13  (
    .I(\U0/Count_DIV<12>/DYMUX_1756 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<12>/CLKINV_1734 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<12>/SRINV_1735 ),
    .O(\U0/Count_DIV [13])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_12  (
    .I(\U0/Count_DIV<12>/DXMUX_1773 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<12>/CLKINV_1734 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<12>/SRINV_1735 ),
    .O(\U0/Count_DIV [12])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_15  (
    .I(\U0/Count_DIV<14>/DYMUX_1808 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<14>/CLKINV_1786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<14>/SRINV_1787 ),
    .O(\U0/Count_DIV [15])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_10  (
    .I(\U0/Count_DIV<10>/DXMUX_1721 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<10>/CLKINV_1682 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<10>/SRINV_1683 ),
    .O(\U0/Count_DIV [10])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_18  (
    .I(\U0/Count_DIV<18>/DXMUX_1929 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<18>/CLKINV_1890 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<18>/SRINV_1891 ),
    .O(\U0/Count_DIV [18])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_16  (
    .I(\U0/Count_DIV<16>/DXMUX_1877 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<16>/CLKINV_1838 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<16>/SRINV_1839 ),
    .O(\U0/Count_DIV [16])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_19  (
    .I(\U0/Count_DIV<18>/DYMUX_1912 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<18>/CLKINV_1890 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<18>/SRINV_1891 ),
    .O(\U0/Count_DIV [19])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_17  (
    .I(\U0/Count_DIV<16>/DYMUX_1860 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<16>/CLKINV_1838 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<16>/SRINV_1839 ),
    .O(\U0/Count_DIV [17])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_14  (
    .I(\U0/Count_DIV<14>/DXMUX_1825 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<14>/CLKINV_1786 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<14>/SRINV_1787 ),
    .O(\U0/Count_DIV [14])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_20  (
    .I(\U0/Count_DIV<20>/DXMUX_1981 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<20>/CLKINV_1942 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<20>/SRINV_1943 ),
    .O(\U0/Count_DIV [20])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_21  (
    .I(\U0/Count_DIV<20>/DYMUX_1964 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<20>/CLKINV_1942 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<20>/SRINV_1943 ),
    .O(\U0/Count_DIV [21])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_22  (
    .I(\U0/Count_DIV<22>/DXMUX_2033 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<22>/CLKINV_1994 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<22>/SRINV_1995 ),
    .O(\U0/Count_DIV [22])
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<24>_rt  (
    .ADR0(\U0/Count_DIV [24]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<24>_rt_2052 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_24  (
    .I(\U0/Count_DIV<24>/DXMUX_2057 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<24>/CLKINV_2043 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<24>/SRINV_2044 ),
    .O(\U0/Count_DIV [24])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_23  (
    .I(\U0/Count_DIV<22>/DYMUX_2016 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<22>/CLKINV_1994 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<22>/SRINV_1995 ),
    .O(\U0/Count_DIV [23])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_0  (
    .I(\D0/count<0>/DXMUX_2107 ),
    .CE(VCC),
    .CLK(\D0/count<0>/CLKINV_2070 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<0>/SRINV_2071 ),
    .O(\D0/count [0])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \D0/Mcount_count_lut<0>_INV_0  (
    .ADR0(\D0/count [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/Mcount_count_lut [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_2  (
    .I(\D0/count<2>/DXMUX_2159 ),
    .CE(VCC),
    .CLK(\D0/count<2>/CLKINV_2120 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<2>/SRINV_2121 ),
    .O(\D0/count [2])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_3  (
    .I(\D0/count<2>/DYMUX_2142 ),
    .CE(VCC),
    .CLK(\D0/count<2>/CLKINV_2120 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<2>/SRINV_2121 ),
    .O(\D0/count [3])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_5  (
    .I(\D0/count<4>/DYMUX_2194 ),
    .CE(VCC),
    .CLK(\D0/count<4>/CLKINV_2172 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<4>/SRINV_2173 ),
    .O(\D0/count [5])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_1  (
    .I(\D0/count<0>/DYMUX_2087 ),
    .CE(VCC),
    .CLK(\D0/count<0>/CLKINV_2070 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<0>/SRINV_2071 ),
    .O(\D0/count [1])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_7  (
    .I(\D0/count<6>/DYMUX_2246 ),
    .CE(VCC),
    .CLK(\D0/count<6>/CLKINV_2224 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<6>/SRINV_2225 ),
    .O(\D0/count [7])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_6  (
    .I(\D0/count<6>/DXMUX_2263 ),
    .CE(VCC),
    .CLK(\D0/count<6>/CLKINV_2224 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<6>/SRINV_2225 ),
    .O(\D0/count [6])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_9  (
    .I(\D0/count<8>/DYMUX_2298 ),
    .CE(VCC),
    .CLK(\D0/count<8>/CLKINV_2276 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<8>/SRINV_2277 ),
    .O(\D0/count [9])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_8  (
    .I(\D0/count<8>/DXMUX_2315 ),
    .CE(VCC),
    .CLK(\D0/count<8>/CLKINV_2276 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<8>/SRINV_2277 ),
    .O(\D0/count [8])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \D0/count_4  (
    .I(\D0/count<4>/DXMUX_2211 ),
    .CE(VCC),
    .CLK(\D0/count<4>/CLKINV_2172 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\D0/count<4>/SRINV_2173 ),
    .O(\D0/count [4])
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ))
  \D0/iDIG<1>1  (
    .ADR0(\D0/scan_0_820 ),
    .ADR1(\C2/Q [1]),
    .ADR2(\C1/Q [1]),
    .ADR3(VCC),
    .O(\D0/iDIG<1>_pack_1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C2/Q_0  (
    .I(\C2/Q<0>/DXMUX_1201 ),
    .CE(\C2/Q<0>/CEINV_1182 ),
    .CLK(\C2/Q<0>/CLKINV_1183 ),
    .SET(GND),
    .RST(\C2/Q<0>/SRINVNOT ),
    .O(\C2/Q [0])
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ))
  \D0/iDIG<2>1  (
    .ADR0(\D0/scan_0_820 ),
    .ADR1(\C2/Q [2]),
    .ADR2(\C1/Q [2]),
    .ADR3(VCC),
    .O(\D0/iDIG<2>_pack_1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U0/CLK_1HzOut  (
    .I(\U0/CLK_1HzOut/DYMUX_1237 ),
    .CE(\U0/CLK_1HzOut/CEINV_1234 ),
    .CLK(\U0/CLK_1HzOut/CLKINV_1235 ),
    .SET(GND),
    .RST(GND),
    .O(\U0/CLK_1HzOut_782 )
  );
  X_LUT4 #(
    .INIT ( 16'h0941 ))
  \D0/Mrom_oSEG61  (
    .ADR0(\D0/iDIG [1]),
    .ADR1(\D0/iDIG [2]),
    .ADR2(\D0/iDIG [3]),
    .ADR3(\D0/iDIG [0]),
    .O(HEX0_6_OBUF_1218)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C1/Q_0  (
    .I(\C1/Q<0>/DXMUX_1140 ),
    .CE(\C1/Q<0>/CEINV_1114 ),
    .CLK(\C1/Q<0>/CLKINV_1115 ),
    .SET(GND),
    .RST(\C1/Q<0>/SRINVNOT ),
    .O(\C1/Q [0])
  );
  X_LUT4 #(
    .INIT ( 16'h8692 ))
  \D0/Mrom_oSEG31  (
    .ADR0(\D0/iDIG [0]),
    .ADR1(\D0/iDIG [1]),
    .ADR2(\D0/iDIG [2]),
    .ADR3(\D0/iDIG [3]),
    .O(HEX0_3_OBUF_1169)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \D0/scan_0  (
    .I(\D0/scan_0/DYMUX_1226 ),
    .CE(VCC),
    .CLK(\D0/scan_0/CLKINV_1224 ),
    .SET(GND),
    .RST(GND),
    .O(\D0/scan_0_820 )
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ))
  \D0/iDIG<0>1  (
    .ADR0(\D0/scan_0_820 ),
    .ADR1(\C2/Q [0]),
    .ADR2(\C1/Q [0]),
    .ADR3(VCC),
    .O(\D0/iDIG<0>_pack_1 )
  );
  X_LUT4 #(
    .INIT ( 16'h2812 ))
  \D0/Mrom_oSEG11  (
    .ADR0(\D0/iDIG [0]),
    .ADR1(\D0/iDIG [1]),
    .ADR2(\D0/iDIG [2]),
    .ADR3(\D0/iDIG [3]),
    .O(HEX0_0_OBUF_1162)
  );
  X_LUT4 #(
    .INIT ( 16'h6466 ))
  \C2/Mcount_Q_xor<1>11  (
    .ADR0(\C2/Q [0]),
    .ADR1(\C2/Q [1]),
    .ADR2(\C2/Q [3]),
    .ADR3(\C2/Q [2]),
    .O(\C2/Mcount_Q1 )
  );
  X_LUT4 #(
    .INIT ( 16'h80C2 ))
  \D0/Mrom_oSEG21  (
    .ADR0(\D0/iDIG [1]),
    .ADR1(\D0/iDIG [3]),
    .ADR2(\D0/iDIG [2]),
    .ADR3(\D0/iDIG [0]),
    .O(HEX0_2_OBUF_1263)
  );
  X_LUT4 #(
    .INIT ( 16'h445C ))
  \D0/Mrom_oSEG41  (
    .ADR0(\D0/iDIG [3]),
    .ADR1(\D0/iDIG [0]),
    .ADR2(\D0/iDIG [2]),
    .ADR3(\D0/iDIG [1]),
    .O(HEX0_4_OBUF_1287)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C2/Q_1  (
    .I(\C2/Q<0>/DYMUX_1192 ),
    .CE(\C2/Q<0>/CEINV_1182 ),
    .CLK(\C2/Q<0>/CLKINV_1183 ),
    .SET(GND),
    .RST(\C2/Q<0>/SRINVNOT ),
    .O(\C2/Q [1])
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  state_cmp_eq00011 (
    .ADR0(\C1/Q [1]),
    .ADR1(\C1/Q [0]),
    .ADR2(\C1/Q [3]),
    .ADR3(\C1/Q [2]),
    .O(state_cmp_eq0001_pack_1)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  backward_645 (
    .I(\backward_OBUF/DXMUX_1366 ),
    .CE(VCC),
    .CLK(\backward_OBUF/CLKINV_1350 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\backward_OBUF/SRINV_1351 ),
    .O(backward_OBUF_828)
  );
  X_LUT4 #(
    .INIT ( 16'h8A02 ))
  backward_mux00001 (
    .ADR0(state_FSM_FFd1_791),
    .ADR1(state_FSM_FFd2_792),
    .ADR2(state_cmp_eq0002),
    .ADR3(state_cmp_eq0001),
    .O(backward_mux0000)
  );
  X_LUT4 #(
    .INIT ( 16'h6666 ))
  \Mcount_loops_xor<1>11  (
    .ADR0(loops[0]),
    .ADR1(loops[1]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(Mcount_loops1)
  );
  X_LUT4 #(
    .INIT ( 16'hE448 ))
  \D0/Mrom_oSEG111  (
    .ADR0(\D0/iDIG [0]),
    .ADR1(\D0/iDIG [2]),
    .ADR2(\D0/iDIG [1]),
    .ADR3(\D0/iDIG [3]),
    .O(HEX0_1_OBUF_1335)
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ))
  \D0/iDIG<3>1  (
    .ADR0(\D0/scan_0_820 ),
    .ADR1(\C2/Q [3]),
    .ADR2(\C1/Q [3]),
    .ADR3(VCC),
    .O(\D0/iDIG<3>_pack_1 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \D0/clk  (
    .I(\D0/clk/DYMUX_1411 ),
    .CE(\D0/clk/CEINV_1408 ),
    .CLK(\D0/clk/CLKINV_1409 ),
    .SET(GND),
    .RST(GND),
    .O(\D0/clk_821 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  loops_0 (
    .I(\loops<0>/DXMUX_1397 ),
    .CE(VCC),
    .CLK(\loops<0>/CLKINV_1378 ),
    .SET(GND),
    .RST(\loops<0>/SRINV_1379 ),
    .O(loops[0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  loops_1 (
    .I(\loops<0>/DYMUX_1389 ),
    .CE(VCC),
    .CLK(\loops<0>/CLKINV_1378 ),
    .SET(GND),
    .RST(\loops<0>/SRINV_1379 ),
    .O(loops[1])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_1  (
    .I(\U0/Count_DIV<0>/DYMUX_1441 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<0>/CLKINV_1424 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<0>/SRINV_1425 ),
    .O(\U0/Count_DIV [1])
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  \U0/Mcount_Count_DIV_lut<0>_INV_0  (
    .ADR0(\U0/Count_DIV [0]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Mcount_Count_DIV_lut [0])
  );
  X_LUT4 #(
    .INIT ( 16'h6032 ))
  \D0/Mrom_oSEG51  (
    .ADR0(\D0/iDIG [1]),
    .ADR1(\D0/iDIG [3]),
    .ADR2(\D0/iDIG [0]),
    .ADR3(\D0/iDIG [2]),
    .O(HEX0_5_OBUF_1311)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U0/Count_DIV_0  (
    .I(\U0/Count_DIV<0>/DXMUX_1461 ),
    .CE(VCC),
    .CLK(\U0/Count_DIV<0>/CLKINV_1424 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\U0/Count_DIV<0>/SRINV_1425 ),
    .O(\U0/Count_DIV [0])
  );
  X_LUT4 #(
    .INIT ( 16'h20A8 ))
  off_mux0000_F (
    .ADR0(state_FSM_FFd2_792),
    .ADR1(state_FSM_FFd1_791),
    .ADR2(state_cmp_eq0002),
    .ADR3(state_cmp_eq0001),
    .O(N36)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  EN_mux00001 (
    .ADR0(times[2]),
    .ADR1(times[1]),
    .ADR2(\EN_mux0000_SW0/O ),
    .ADR3(VCC),
    .O(EN_mux00001_3147)
  );
  X_LUT4 #(
    .INIT ( 16'h5D55 ))
  times_not00012 (
    .ADR0(start_IBUF_790),
    .ADR1(state_FSM_FFd1_791),
    .ADR2(emergency_IBUF_788),
    .ADR3(state_cmp_eq0002),
    .O(times_not00012_3081)
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  EN_mux0000_SW0 (
    .ADR0(times[0]),
    .ADR1(state_FSM_FFd2_792),
    .ADR2(state_FSM_FFd1_791),
    .ADR3(VCC),
    .O(\EN_mux0000_SW0/O_pack_1 )
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  EN (
    .I(\EN/DYMUX_3150 ),
    .CE(VCC),
    .CLK(\EN/CLKINV_3139 ),
    .SET(GND),
    .RST(GND),
    .SSET(\EN/REVUSED_3151 ),
    .SRST(\EN/SRINV_3140 ),
    .O(EN_809)
  );
  X_LUT4 #(
    .INIT ( 16'h5555 ))
  times_not00011_INV_0 (
    .ADR0(start_IBUF_790),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(times_not00011)
  );
  X_LUT4 #(
    .INIT ( 16'h20B9 ))
  off_mux0000_G (
    .ADR0(state_FSM_FFd2_792),
    .ADR1(state_FSM_FFd1_791),
    .ADR2(state_cmp_eq0002),
    .ADR3(state_cmp_eq0001),
    .O(N37)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  forward_1492 (
    .I(\forward_OBUF/DXMUX_3002 ),
    .CE(VCC),
    .CLK(\forward_OBUF/CLKINV_2982 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\forward_OBUF/SRINV_2983 ),
    .O(forward_OBUF_907)
  );
  X_LUT4 #(
    .INIT ( 16'hD782 ))
  \Mcount_times_xor<2>1  (
    .ADR0(start_IBUF_790),
    .ADR1(times[2]),
    .ADR2(\Mcount_times_xor<2>1_SW0/O ),
    .ADR3(loops[2]),
    .O(Mcount_times2)
  );
  X_LUT4 #(
    .INIT ( 16'hEEEE ))
  \Mcount_times_xor<2>1_SW0  (
    .ADR0(times[1]),
    .ADR1(times[0]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\Mcount_times_xor<2>1_SW0/O_pack_2 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  times_2 (
    .I(\times<2>/DXMUX_3123 ),
    .CE(\times<2>/CEINV_3105 ),
    .CLK(\times<2>/CLKINV_3106 ),
    .SET(GND),
    .RST(GND),
    .O(times[2])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  off_1514 (
    .I(\off_OBUF/DXMUX_3064 ),
    .CE(VCC),
    .CLK(\off_OBUF/CLKINV_3045 ),
    .SET(GND),
    .RST(GND),
    .SSET(\off_OBUF/REVUSED_3054 ),
    .SRST(\off_OBUF/SRINVNOT ),
    .O(off_OBUF_906)
  );
  X_LUT4 #(
    .INIT ( 16'h1111 ))
  forward_mux00001 (
    .ADR0(state_FSM_FFd1_791),
    .ADR1(state_cmp_eq0002),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(forward_mux00001_2998)
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  state_cmp_eq00021 (
    .ADR0(\C1/Q_cmp_eq0000_0 ),
    .ADR1(\C2/Q [2]),
    .ADR2(\C2/Q [0]),
    .ADR3(\C2/Q [1]),
    .O(state_cmp_eq00021_3017)
  );
  X_LUT4 #(
    .INIT ( 16'h3A2A ))
  \state_FSM_FFd2-In1  (
    .ADR0(state_FSM_FFd2_792),
    .ADR1(state_FSM_FFd1_791),
    .ADR2(state_cmp_eq0001),
    .ADR3(N01),
    .O(\state_FSM_FFd2-In )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  times_3 (
    .I(\times<3>/DXMUX_3193 ),
    .CE(\times<3>/CEINV_3176 ),
    .CLK(\times<3>/CLKINV_3177 ),
    .SET(GND),
    .RST(GND),
    .O(times[3])
  );
  X_LUT4 #(
    .INIT ( 16'h6A6A ))
  \C1/Mcount_Q_xor<2>11  (
    .ADR0(\C1/Q [2]),
    .ADR1(\C1/Q [1]),
    .ADR2(\C1/Q [0]),
    .ADR3(VCC),
    .O(\C1/Mcount_Q2 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ))
  \Mcount_times_xor<3>1_SW1  (
    .ADR0(times[0]),
    .ADR1(times[1]),
    .ADR2(times[2]),
    .ADR3(VCC),
    .O(\Mcount_times_xor<3>1_SW1/O_pack_2 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd2 (
    .I(\state_FSM_FFd2/DXMUX_3234 ),
    .CE(\state_FSM_FFd2/CEINVNOT ),
    .CLK(\state_FSM_FFd2/CLKINV_3211 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd2/SRINVNOT ),
    .O(state_FSM_FFd2_792)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C1/Q_2  (
    .I(\C1/Q<3>/DYMUX_3263 ),
    .CE(\C1/Q<3>/CEINV_3252 ),
    .CLK(\C1/Q<3>/CLKINV_3253 ),
    .SET(GND),
    .RST(\C1/Q<3>/SRINVNOT ),
    .O(\C1/Q [2])
  );
  X_LUT4 #(
    .INIT ( 16'hD8D8 ))
  \state_FSM_FFd1-In1  (
    .ADR0(state_cmp_eq0002),
    .ADR1(state_FSM_FFd2_792),
    .ADR2(state_FSM_FFd1_791),
    .ADR3(VCC),
    .O(\state_FSM_FFd1-In )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  state_FSM_FFd1 (
    .I(\state_FSM_FFd2/DYMUX_3221 ),
    .CE(\state_FSM_FFd2/CEINVNOT ),
    .CLK(\state_FSM_FFd2/CLKINV_3211 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(\state_FSM_FFd2/SRINVNOT ),
    .O(state_FSM_FFd1_791)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \C1/Q_3  (
    .I(\C1/Q<3>/DXMUX_3278 ),
    .CE(\C1/Q<3>/CEINV_3252 ),
    .CLK(\C1/Q<3>/CLKINV_3253 ),
    .SET(GND),
    .RST(\C1/Q<3>/SRINVNOT ),
    .O(\C1/Q [3])
  );
  X_LUT4 #(
    .INIT ( 16'hD782 ))
  \Mcount_times_xor<3>1  (
    .ADR0(start_IBUF_790),
    .ADR1(times[3]),
    .ADR2(\Mcount_times_xor<3>1_SW1/O ),
    .ADR3(loops[3]),
    .O(Mcount_times3)
  );
  X_LUT4 #(
    .INIT ( 16'h6CC4 ))
  \C1/Mcount_Q_xor<3>11  (
    .ADR0(\C1/Q [0]),
    .ADR1(\C1/Q [3]),
    .ADR2(\C1/Q [1]),
    .ADR3(\C1/Q [2]),
    .O(\C1/Mcount_Q3 )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<0>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<4>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<4>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<2>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<2>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<6>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [6]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<6>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<10>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<10>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<12>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [12]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<12>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [13]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<8>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<8>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<14>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<14>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<14>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [15]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<14>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<18>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [18]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<18>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<18>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [19]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<18>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<16>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [16]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<16>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<16>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<16>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<20>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [20]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<20>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<20>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [21]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<20>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<22>/F/X_LUT4  (
    .ADR0(\U0/Count_DIV [22]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<22>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \U0/Count_DIV<22>/G/X_LUT4  (
    .ADR0(\U0/Count_DIV [23]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\U0/Count_DIV<22>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<0>/G/X_LUT4  (
    .ADR0(\D0/count [1]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<0>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<2>/F/X_LUT4  (
    .ADR0(\D0/count [2]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<2>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<2>/G/X_LUT4  (
    .ADR0(\D0/count [3]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<2>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<8>/F/X_LUT4  (
    .ADR0(\D0/count [8]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<8>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<8>/G/X_LUT4  (
    .ADR0(\D0/count [9]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<8>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<4>/F/X_LUT4  (
    .ADR0(\D0/count [4]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<4>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<4>/G/X_LUT4  (
    .ADR0(\D0/count [5]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<4>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<10>/F/X_LUT4  (
    .ADR0(\D0/count [10]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<10>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<10>/G/X_LUT4  (
    .ADR0(\D0/count [11]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<10>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<12>/F/X_LUT4  (
    .ADR0(\D0/count [12]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<12>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<12>/G/X_LUT4  (
    .ADR0(\D0/count [13]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<12>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<6>/F/X_LUT4  (
    .ADR0(\D0/count [6]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<6>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<6>/G/X_LUT4  (
    .ADR0(\D0/count [7]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<6>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<16>/F/X_LUT4  (
    .ADR0(\D0/count [16]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<16>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<16>/G/X_LUT4  (
    .ADR0(\D0/count [17]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<16>/G )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<18>/F/X_LUT4  (
    .ADR0(\D0/count [18]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<18>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<14>/F/X_LUT4  (
    .ADR0(\D0/count [14]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<14>/F )
  );
  X_LUT4 #(
    .INIT ( 16'hAAAA ))
  \D0/count<14>/G/X_LUT4  (
    .ADR0(\D0/count [15]),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\D0/count<14>/G )
  );
  X_BUF   \alarm/OUTPUT/OFF/OMUX  (
    .I(alarm_OBUF_1096),
    .O(\alarm/O )
  );
  X_BUF   \HEX0<4>/OUTPUT/OFF/OMUX  (
    .I(HEX0_4_OBUF_1287),
    .O(\HEX0<4>/O )
  );
  X_BUF   \HEX0<5>/OUTPUT/OFF/OMUX  (
    .I(HEX0_5_OBUF_1311),
    .O(\HEX0<5>/O )
  );
  X_BUF   \SEL<0>/OUTPUT/OFF/OMUX  (
    .I(\D0/scan_0_820 ),
    .O(\SEL<0>/O )
  );
  X_BUF   \HEX0<6>/OUTPUT/OFF/OMUX  (
    .I(HEX0_6_OBUF_1218),
    .O(\HEX0<6>/O )
  );
  X_BUF   \HEX0<1>/OUTPUT/OFF/OMUX  (
    .I(HEX0_1_OBUF_1335),
    .O(\HEX0<1>/O )
  );
  X_BUF   \HEX0<2>/OUTPUT/OFF/OMUX  (
    .I(HEX0_2_OBUF_1263),
    .O(\HEX0<2>/O )
  );
  X_BUF   \off/OUTPUT/OFF/OMUX  (
    .I(off_OBUF_906),
    .O(\off/O )
  );
  X_INV   \SEL<1>/OUTPUT/OFF/OMUX  (
    .I(\D0/scan_0_820 ),
    .O(\SEL<1>/O )
  );
  X_BUF   \HEX0<3>/OUTPUT/OFF/OMUX  (
    .I(HEX0_3_OBUF_1169),
    .O(\HEX0<3>/O )
  );
  X_BUF   \HEX0<0>/OUTPUT/OFF/OMUX  (
    .I(HEX0_0_OBUF_1162),
    .O(\HEX0<0>/O )
  );
  X_BUF   \backward/OUTPUT/OFF/OMUX  (
    .I(backward_OBUF_828),
    .O(\backward/O )
  );
  X_BUF   \forward/OUTPUT/OFF/OMUX  (
    .I(forward_OBUF_907),
    .O(\forward/O )
  );
  X_LUT4 #(
    .INIT ( 16'h0000 ))
  \state_cmp_eq0002/F/X_LUT4  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\state_cmp_eq0002/F )
  );
  X_ZERO   NlwBlock_top_washmachine_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_washmachine_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

