
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name washmachine -dir "C:/Users/Kevin/Documents/ise_project/washmachine/planAhead_run_5" -part xc3s100ecp132-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Kevin/Documents/ise_project/washmachine/top_washmachine.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Kevin/Documents/ise_project/washmachine} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "top_washmachine.ucf" [current_fileset -constrset]
add_files [list {top_washmachine.ucf}] -fileset [get_property constrset [current_run]]
link_design
