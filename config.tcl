#User_config
set ::env(DESIGN_NAME) CLA16
#change if need
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

#fill this
set ::env(CLOCK_PERIOD) "20.0"
set ::env(CLOCK_PORT) "CLK"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)
##synthesis setup
#default is it lib
#set ::env(LIB_SYNTH) $::
#Floorplanning
#8-100
#set ::env(FP_CORE_UTIL)
#To use specified Die Area
set ::env(FP_SIZING) "absolute"
#Allocated Die Area to this macro
set ::env(DIE_AREA) "0 0 200 200"
#Verticle stripes offset
set ::env(FP_PDN_VOFFSET) 0
#VERTICLE PDN strpies pitch
set ::env(FP_PDN_VPITCH) 100
# Cell insertion distance
set ::env(FP_TAPCELL_DISTANCE) 14
#Diode insertion distance
set ::env(DIODE_INSERTION_STRATEGY) 3
#Design is macro not core
set ::env(DESIGN_IS_CORE) 0
#no core ring for macro
set ::env(FP_PDN_CORE_RING) 0
#Make Power Grid Rails
set ::env(FP_PDN_ENABLE_RAILS) 1
#Placement
#Placement Density
set ::env(PL_TARGET_DENSITY) 0.55
#Placement is Time Driven
set ::env(PL_TIME_DRIVEN) 1
set ::env(PL_BASIC_PLACEMENT) 1
#Routing
set ::env(ROUTING_CORES) 6
#Maximum layer used routing is metal 4
#this is because this macro will be inserted in a top level (User_project_wrapper)
#where the PDN is planned on metal 5.So, to avoid having shorts between routes
#in this macro and top level metal 5 stripes, we have to restrict route to metal4.
set ::env(GLB_RT_MAXLAYER) 5
#you can draw more power domains if you need to
set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]
#source filename $:: env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
#
set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}
