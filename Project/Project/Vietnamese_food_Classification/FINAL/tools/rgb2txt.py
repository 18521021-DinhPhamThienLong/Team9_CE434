import cv2 as cv
import numpy as np
import struct
import matplotlib.pyplot as plt

def binary(num):
    return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', num))

if __name__ == "__main__":
    path = '/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/tools/bm.png'
    x = cv.imread(path)
    x = cv.resize(x,(112,112))
    x = x /1.0
    x.shape
    print (x.shape)
    x = np.array(x)
    print (x[:,:,0])
    #print (x)
    cv.imshow("resized", x/255)
    cv.waitKey(0)
    cv.destroyAllWindows() 

    f = open("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/text/img.txt","w")
    for i in range (x.shape[0]):
        for j in range (x.shape[1]):
            b,g,r = x[i][j]
            f.write(binary(b) + binary(g) + binary(r) + "\n")
    f.close()
