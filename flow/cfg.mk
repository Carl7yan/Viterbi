export TB_TOP_NAME = tb
export RTL_TOP_MODULE = cmsdk_apb_timer
export PROJECT  = ${GITHUB}/bt_timer
testname  =
fsdb      =
random    =
uvm_verbo = UVM_MEDIUM
CM_LIST   =
RTL_LIST  = -f ${PROJECT}/filelist/rtl_list.f
TB_LIST   = -f ${PROJECT}/filelist/tb_list.f
REGR_LIST = ${PROJECT}/filelist/regr_list
FILELIST  = ${CM_LIST} ${RTL_LIST} ${TB_LIST}
TESTNAMES = `cat ${REGR_LIST}`

#####################################################3
SDC_FILE := ${COMMON}/6cm.sdc
SGDC_FILE := ${COMMON}/6cm.sgdc
SYN_LIST :=
#如果设计中有使用到SRAM等hard macro，则需要将这些hard macro的db文件路径添加到ADD_LINK_LIB中，如果没有的话，保持默认即可：
#Add memory and other hard macro db here
#ADD_LINK_LIB := [list \
#/xx/yy/zz.db \
#/xx/yy/aa.db \
#]
ADD_LINK_LIB := [list \
]

# common design options
# verilator, iverilog, vcs, modelsim
COM_SIM_OPTS := vcs
# user define options +define+;+incdir+
COM_USR_OPTS :=

# synthsis file list

# target libary
TARGET_LIBRARY_FILES:=
# waiver file for spyglass
WAIVER_FILE :=
