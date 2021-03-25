import os
os.system('python3 RGBtotxt.py')
os.system('vlog "/home/thienlong/CE434/Assignment/Week3/rgbtohsv.v" "/home/thienlong/CE434/Assignment/Week3/rgbtohsv_tb.v"')
os.system('vsim -c -do "run -all" rgbtohsv_tb')
os.system('python3 cvt_RGBtoHSV.py')