onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+LUT_bin -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.LUT_bin xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {LUT_bin.udo}

run -all

endsim

quit -force
