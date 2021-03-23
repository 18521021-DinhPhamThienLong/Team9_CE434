import cv2 as cv
import numpy as np

img = cv.imread('./Images/flowers.jpeg')
hsv = cv.cvtColor(img, cv.COLOR_BGR2HSV)

# image dimension
print('img.shape' , img.shape)

cv.imshow('RGB', img)
cv.imshow('HSV', hsv)

#write dec file
# np.set_printoptions(threshold=np.inf)
# with open('RGB.txt', 'w') as f:
#     f.write(str(img))
# np.set_printoptions(threshold=np.inf)
# with open('HSV.txt', 'w') as f:
#     f.write(str(hsv))

convert_shape_bin = np.vectorize(np.binary_repr)
shape_bin = convert_shape_bin(np.array(img), width=13)

np.set_printoptions(threshold=np.inf)
with open('HSV.txt', 'w') as f:
     f.write(str(shape_bin))

cv.waitKey(0)     
cv.destroyAllWindows() 