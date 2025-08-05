vlib work
vlog SPI.v RAM.v top_module.v top_module_tb.v
vsim -voptargs=+acc work.top_module_tb
add wave *
run -all
#quit -sim