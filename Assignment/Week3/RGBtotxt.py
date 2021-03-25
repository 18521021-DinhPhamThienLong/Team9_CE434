import cv2 as cv
import numpy as np

img = cv.imread('/home/thienlong/CE434/Assignment/Week3/flowers.jpeg')
(height, width, depth) = img.shape

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

f = open("/home/thienlong/CE434/Assignment/Week3/rgb.txt","w")
for i in range(0, height):
    for j in range(0, width):
        (B, G, R) = img[i][j]
        h_t, s_t, v_t = rgb_to_hsv(R, G, B)
        b = str(B)
        g = str(G)
        r = str(R)
        f.write(r + " " + g + " " + b +"\n")
f.close()

