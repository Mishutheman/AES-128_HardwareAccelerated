transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+testbench_FSM  -L xilinx_vip -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.testbench_FSM xil_defaultlib.glbl

do {testbench_FSM.udo}

run 1000ns

endsim

quit -force
