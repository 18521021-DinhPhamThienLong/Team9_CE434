import cv2 as cv
import numpy as np

# convert from float(+) to floating point
def float_to_floatingPoint(a):
    if (a == 0):
        return '00000000000000000000000000000000'
    b = int(a)
    c = a - int(a)
    b = bin(b)
    b = b[2:len(b)]
    i = 0
    d = '0'
    while (i < 73 and c != 0):
        i = i + 1
        c = c * 2
        if c >= 1:
            c = c - 1
            d = d + '1'
        else:
            d = d + '0'
    num = b + d[1:len(d)]
    i = 0
    while (num[i] != '1'):
        i = i + 1
    t = i + 1
    ex = bin(127 + (len(b) - i - 1))
    ex = ex[2:len(ex)]
    ex = ex[::-1]
    if(len(ex) < 8):
        temp = len(ex)
        for i in range(temp, 8):
            ex = ex + '0'
    ex = ex[::-1]
    num = num[t:len(num)]
    if (len(num) > 23):
        fr = num[0:23]
    elif (len(num) < 23):
        temp = len(num)
        for i in range(temp, 23):
            num = num + '0'
        fr = num
    else:
        fr = num
    return '0' + ex + fr
           

img = cv.imread('D:/IC_DESIGN1/Nhom_9/test_image/banh_mi_test2.jpg')
img_rs = cv.resize(img,(32,32))
(height,width,depth) = img_rs.shape
print (img_rs.shape)
cv.imshow("resized", img_rs)
cv.waitKey(0)
cv.destroyAllWindows() 

f = open("D:/IC_DESIGN1/Nhom_9/Result/img_txt/img.txt","w")
for i in range(0,height):
    for j in range(0,width):
        (B, G, R) = img[i][j]
        r = float_to_floatingPoint(R/255)
        g = float_to_floatingPoint(G/255)
        b = float_to_floatingPoint(B/255)
        f.write(str(r) + str(g) + str(b) + "\n")
f.close()