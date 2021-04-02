import os
os.system('python3 /home/thienlong/CE434/Assignment/Week4/python_scripts/RGBtotxt.py')
os.system('vlog /home/thienlong/CE434/Assignment/Week4/RTL/Floating_Point_RGBtoHSV.v /home/thienlong/CE434/Assignment/Week4/RTL/Floating_Point_RGBtoHSV_testbench.v')
os.system('vsim -c -do "run -all" Floating_Point_RGBtoHSV_testbench')
os.system('python3 /home/thienlong/CE434/Assignment/Week4/python_scripts/cvt_RGBtoHSV.py')