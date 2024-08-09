transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+clk_wiz_0  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.clk_wiz_0 xil_defaultlib.glbl

do {clk_wiz_0.udo}

run

endsim

quit -force
