#Step 2:  Apply a distortion correction to raw images
import cv2
import numpy as np 
import glob
import  CameraCalibration


def Undistort(img, mtx, dist):
    dst = cv2.undistort(img, mtx, dist, None, mtx)
    return dst

# images = glob.glob('./Images/CameraCalibration/*.jpg')
# straight = glob.glob('./Images/StraightLines/*.jpg')
# nx = 9
# ny = 6
# mtx, dist = CameraCalibration.Camera_Calibration(images, nx, ny)

# testing on CameraCalibration folder 
# img = cv2.imread(images[5])
# undistort = Undistort(img, mtx, dist)
# cv2.imshow('img', img)
# cv2.imshow('undistort', undistort)

# tesing on StraightLines folder
# img = cv2.cvtColor(cv2.imread(straight[4]), cv2.COLOR_BGR2RGB)
# undistort_Straight = Undistort(img, mtx, dist)
# cv2.imshow('img', img)
# cv2.imshow('undistort', undistort_Straight)

# cv2.waitKey(0)
# cv2.destroyAllWindows()