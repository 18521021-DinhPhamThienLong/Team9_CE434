import cv2 as cv
import numpy as np
import matplotlib.pyplot as plt

#convert from binary to decimal
def bin_to_dec(binary):
    decimal = 0
    for digit in binary:
        decimal = decimal*2 + int(digit)
    return decimal

#convert from Floating point to float(+)
def FloatingPoint_to_float(fp):
    if (fp[1:len(fp)] == '0000000000000000000000000000000'):
        return 0
    ex = fp[1:9]
    fr = fp[9:len(fp)]
    ex = bin_to_dec(ex) - 127
    t = 0
    d = 0
    for i in fr:
        d = d + 1
        if i == '1':
            t = t + pow(2, -d)
    fr = t + 1
    return fr * pow(2,ex)


def rgb_to_hsv(r, g, b):
    r, g, b = r/255.0, g/255.0, b/255.0
    mx = max(r, g, b)
    mn = min(r, g, b)
    df = mx-mn
    if mx == mn:
        h = 0
    elif mx == r:
        h = (60 * ((g-b)/df) + 360) % 360
    elif mx == g:
        h = (60 * ((b-r)/df) + 120) % 360
    elif mx == b:
        h = (60 * ((r-g)/df) + 240) % 360
    if mx == 0:
        s = 0
    else:
        s = (df/mx)*100
    v = mx*100
    return h, s, v

img = cv.imread('/home/thienlong/CE434/Assignment/Week3/flowers.jpeg')
(height, width,depth) = img.shape
h_v = [[0 for x in range(width)] for y in range(height)]
s_v = [[0 for x in range(width)] for y in range(height)]
v_v = [[0 for x in range(width)] for y in range(height)]
f = open("/home/thienlong/CE434/Assignment/Week3/hsv.txt","r")
for i in range(0, height):
    for j in range(0, width):
        a = f.readline()
        h_v[i][j] = round(FloatingPoint_to_float(a)/360*255)
        a = f.readline()  
        s_v[i][j] = round(FloatingPoint_to_float(a)*255)
        a = f.readline()
        v_v[i][j] = round(FloatingPoint_to_float(a)*255) 
f.close()
h_v = np.array(h_v)
s_v = np.array(s_v)
v_v = np.array(v_v)
# hsv_v = cv.merge((h_v, s_v, v_v))

h = [[0 for x in range(width)] for y in range(height)]
s = [[0 for x in range(width)] for y in range(height)]
v = [[0 for x in range(width)] for y in range(height)]

for i in range(0,height):
    for j in range(0,width):
        (B, G, R) = img[i][j]
        h_t, s_t, v_t = rgb_to_hsv(R, G, B)
        h_t = (round(255*h_t/360))
        s_t = (round(s_t*255))
        v_t = (round(v_t*255))
        h[i][j] = h_t
        s[i][j] = s_t
        v[i][j] = v_t
h = np.array(h)
s = np.array(s)
v = np.array(v)
# hsv = cv.merge((h, s, v))
hsv_f = cv.cvtColor(img, cv.COLOR_BGR2HSV)
h_f, s_f, v_f = cv.split(hsv_f)
e_py = 0
e_v = 0
for i in range(0, height):
    for j in range(0, width):
        e_py = abs(h[i][j] - h_f[i][j]) + abs(s[i][j] - s_f[i][j]) + abs(v[i][j] - v_f[i][j]) + e_py
        e_v = abs(h_v[i][j] - h_f[i][j]) + abs(s_v[i][j] - s_f[i][j]) + abs(v_v[i][j] - v_f[i][j]) + e_v
e_v = float(e_v / (height*width*depth)/255)
e_py = float(e_py / (height*width*depth)/255)

print("Verilog Acurancy:\n",e_v)
print("Python Acurancy:\n",e_py)


