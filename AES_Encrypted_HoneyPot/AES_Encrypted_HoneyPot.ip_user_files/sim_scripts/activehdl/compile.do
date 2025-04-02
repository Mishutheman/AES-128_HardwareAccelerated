transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xil_defaultlib \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work xil_defaultlib -93  \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/ControlUnit.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/ENC_AES.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/Rijndael_s_box.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/add_round_key.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/generate_round_keys.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/key_schedule.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/lin_transf.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/main.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/mix_columns.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/reg_8.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/register.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/shift_rows.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sources_1/new/sub_bytes.vhd" \
"../../../AES_Encrypted_HoneyPot.srcs/sim_1/new/testbench_FSM.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

