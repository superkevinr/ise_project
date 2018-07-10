
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DIgitalclock -dir "C:/Users/Kevin/Documents/ise_project/DIgitalclock/planAhead_run_2" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Kevin/Documents/ise_project/DIgitalclock/top_clock.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Kevin/Documents/ise_project/DIgitalclock} }
set_property target_constrs_file "top_clock.ucf" [current_fileset -constrset]
add_files [list {top_clock.ucf}] -fileset [get_property constrset [current_run]]
link_design
