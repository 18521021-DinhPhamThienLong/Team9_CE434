
import cv2 as cv
import numpy as np

def rgb_to_hsv(r, g, b): 
  
    # R, G, B values are divided by 255 
    # to change the range from 0..255 to 0..1: 
    r, g, b = r / 255.0, g / 255.0, b / 255.0
  
    # h, s, v = hue, saturation, value 
    cmax = max(r, g, b)    # maximum of r, g, b 
    cmin = min(r, g, b)    # minimum of r, g, b 
    diff = cmax-cmin       # diff of cmax and cmin. 

    if cmax == cmin:  
        h = 0
      
    elif cmax == r:  
        h = (60 * ((g - b) / diff) + 360) % 360

    elif cmax == g: 
        h = (60 * ((b - r) / diff) + 120) % 360

    elif cmax == b:  
        h = (60 * ((r - g) / diff) + 240) % 360

    if cmax == 0: 
        s = 0
    else: 
        s = (diff / cmax) * 100

    v = cmax * 100
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
        h_v[i][j] = round(int(a)*255/360)
        a = f.readline()  
        s_v[i][j] = round(int(a)*2.55)
        a = f.readline()
        v_v[i][j] = round(int(a)*2.55) 
f.close()
h_v = np.array(h_v)
s_v = np.array(s_v)
v_v = np.array(v_v)
hsv_v = cv.merge([h_v, s_v, v_v])

h = [[0 for x in range(width)] for y in range(height)]
s = [[0 for x in range(width)] for y in range(height)]
v = [[0 for x in range(width)] for y in range(height)]

for i in range(0,height):
    for j in range(0,width):
        (B, G, R) = img[i][j]
        h_t, s_t, v_t = rgb_to_hsv(R, G, B)
        h_t = round(255*h_t/360)
        s_t = round(s_t*2.55)
        v_t = round(v_t*2.55)
        h[i][j] = h_t
        s[i][j] = s_t
        v[i][j] = v_t

h = np.array(h)
s = np.array(s)
v = np.array(v)
hsv = cv.merge([h, s, v])

hsv_v = hsv_v.astype(np.uint8)
cv.imshow("hsv verilog", hsv_v)
hsv = hsv.astype(np.uint8)
cv.imshow("hsv python", hsv)

cv.waitKey(0)
