import cv2 as cv
import numpy as np
import struct
import matplotlib.pyplot as plt

def binary(num):
    return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', num))

if __name__ == "__main__":
    path = '/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/tools/banh mi95.jpg'
    x = cv.imread(path)
    x = cv.resize(x,(112,112))
    x = x /255.0
    x.shape
    print (x.shape)
    x = np.array(x)
    print (x[:,:,0])
    cv.imshow("resized", x)
    cv.waitKey(0)
    cv.destroyAllWindows() 

    f = open("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/text/banhmi95.txt","w")
    f.write(str(x.shape[0]*x.shape[1]))
    f.write('\n')
    for i in range (x.shape[0]):
        for j in range (x.shape[1]):
            b,g,r = x[i][j]
            f.write(binary(b) + binary(g) + binary(r) + "\n")
    f.close()
