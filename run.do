#creates work library 
vlib work 

#Compile the files of the modules 
vlog DSP.v DSP_tb.v

#simulate
#-voptargs: arguments for the optimization 
#+acc:stop optimization  
vsim -voptargs=+acc work.DSP_tb 

add wave *

#run the simulation 
run -all 
 
#quit -sim 