import cv2
import numpy as np 
import glob
import matplotlib.pyplot as plt

# #termination criteria
# # criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)

images = glob.glob('./Images/CameraCalibration/*.jpg')
nx = 9
ny = 6

#prepare object point , like (0,0,0), (1,0,0), (2,0,0)...., (ny.5.0)
objp = np.zeros((nx*ny, 3), np.float32) 
objp[:, :2] = np.mgrid[0:nx, 0:ny].T.reshape(-1, 2)

def Camera_Calibration(images, nx, ny):
    #Arras to store object oint and image points from all the images
    objpoints =  []  #3d point in real world space
    imgpoints = [] #2d point in image plane.

 #prepare object point , like (0,0,0), (1,0,0), (2,0,0)...., (ny.5.0)
    objp = np.zeros((nx*ny, 3), np.float32) 
    objp[:, :2] = np.mgrid[0:nx, 0:ny].T.reshape(-1, 2)

    for fname in images:
        img = cv2.imread(fname)
        gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

        #find the chess board corners
        ret, corners = cv2.findChessboardCorners(gray, (nx, ny), None)

        #if found, add object point, image points
    
        if ret == True:
            objpoints.append(objp)
            imgpoints.append(corners)
            
    ret, mtx, dist, rvects, tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)
    # return camera matrix, distortion coefficients
    return mtx, dist
