import cv2
import numpy as np 
import glob

#termination criteria
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

#Arras to store object oint and image points from all the images
objpoints =  []  #3d point in real world space
imgpoints = [] #2d point in image plane.

#prepare object point , like (0,0,0), (1,0,0), (2,0,0)...., (6.5.0)
objp = np.zeros((9*6, 3), np.float32) 
objp[:, :2] = np.mgrid[0:9, 0:6].T.reshape(-1, 2)
#number of pictures
dem = 1
images = glob.glob('./Images/CameraCalibration/*.jpg')
for fname in images:
    img = cv2.imread(fname)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

    #find the chess board corners
    ret, corners = cv2.findChessboardCorners(gray, (9, 6), None)

    #if found, add object point, image points
   
    if ret == True:
        objpoints.append(objp)

        corners2 = cv2.cornerSubPix(gray, corners, (11, 11), (-1, -1), criteria)
        imgpoints.append(corners2)

        img = cv2.drawChessboardCorners(img, (9, 6), corners2, ret)
        cv2.imshow('img', img)
        dem = dem + 1
        ret, mtx, dist, rvects, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)
        #print camera matrix
        print(mtx)
        #print distortion coefficients
        print(dist)
        cv2.waitKey(0)

cv2.destroyAllWindows()
print (dem)
