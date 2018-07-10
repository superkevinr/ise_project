
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name revertablecounter -dir "C:/Users/Kevin/Documents/ise_project/revertablecounter/planAhead_run_1" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Kevin/Documents/ise_project/revertablecounter/revertableclocktop.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Kevin/Documents/ise_project/revertablecounter} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "revertableclocktop.ucf" [current_fileset -constrset]
add_files [list {revertableclocktop.ucf}] -fileset [get_property constrset [current_run]]
link_design
