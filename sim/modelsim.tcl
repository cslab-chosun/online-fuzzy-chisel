proc c_SOP {} {

    set SRC_PATH "../src/"
    set TB_PATH "../tb/"
    set SRC_NAMES {"SOP_pkg.sv" "adder.sv" "cell_3_2.sv" "adder_3_2.sv" "cell_4_2.sv" "adder_4_2.sv" "dadda_reduction_tree_recursion.sv" "dadda_reduction_tree.sv" "SOP.sv"}
    set TB_NAME "SOP_tb"


    foreach SRC_NAME $SRC_NAMES {
        vlog $SRC_PATH$SRC_NAME
    }
    vlog "$TB_PATH$TB_NAME.sv"
    vsim -novopt work.$TB_NAME 

    # add wave -position insertpoint sim:/$TB_NAME/uut/dadda_reduction_tree_i/*
    add wave -position insertpoint sim:/$TB_NAME/uut/*
    add wave -position insertpoint sim:/$TB_NAME/*
    run -all 
}

c_SOP 

