# Convert the vehicle’s camera view of the scene into a top-down “bird’s-eye” view.

import cv2
import glob
import numpy as np 
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import CameraCalibration
import DistortionCorrection
from ThresholdedBinary import Combined_thresh

def  PerspectiveTransform(img):
    imgSize = (img.shape[1], img.shape[0])

    # Define the region of interest
    src = np.float32([[190, 700], [1110, 700], [720, 470], [570, 470]])
    
    bottom_left = src[0][0]+100, src[0][1]
    bottom_right = src[1][0]-200, src[1][1]
    top_left = src[3][0]-250, 1
    top_right = src[2][0]+200, 1

    dst = np.float32([bottom_left, bottom_right, top_left, top_right])

    # Given src and dst points, calculate the perspective transform matrix
    M = cv2.getPerspectiveTransform(src, dst)
    Minv = cv2.getPerspectiveTransform(dst, src)
    
    warped = cv2.warpPerspective(img, M, imgSize, flags = cv2.INTER_LINEAR)
    unwarped = cv2.warpPerspective(warped, Minv, (warped.shape[1], warped.shape[0]), flags=cv2.INTER_LINEAR)
    # Return the resulting image and matrix
    return warped, unwarped, M, Minv

# test
# straight = glob.glob('./Images/StraightLines/*.jpg')
# nx = 9
# ny = 6
# mtx, dist = CameraCalibration.Camera_Calibration(images, nx, ny)

# img = cv2.cvtColor(cv2.imread('./Images/StraightLines/test5.jpg'), cv2.COLOR_BGR2RGB)

# undistort_Straight = DistortionCorrection.Undistort(img, mtx, dist)

# combined, abs_bin, mag_bin, dir_bin, hls_bin = Combined_thresh(img)

# warped, unwarped, m, m_inv = PerspectiveTransform(combined)

# plt.imshow(warped, cmap='gray', vmin=0, vmax=1)
# plt.show()

# plt.imshow(unwarped, cmap='gray', vmin=0, vmax=1)
# plt.show()
