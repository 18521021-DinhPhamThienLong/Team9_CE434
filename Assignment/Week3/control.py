import os
os.system('python3 RGBtotxt.py')
os.system('vlog "/home/thienlong/CE434/Assignment/Week3/Floating_Point_RGBtoHSV.v" "/home/thienlong/CE434/Assignment/Week3/Floating_Point_RGBtoHSV_testbench.v"')
os.system('vsim -c -do "run -all" Floating_Point_RGBtoHSV_testbench')
os.system('python3 cvt_RGBtoHSV.py')