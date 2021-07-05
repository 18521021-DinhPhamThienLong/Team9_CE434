import numpy as np
import pickle
import cv2
import time
import math

stride = 1
padding = 0
stride_pooling = 2
padding_pooling = 0
pooling_option = 1

def conv(x_matrix, filter_matrix):
    	row, col = x_matrix.shape
	y = np.zeros((row, col))

	for i in range(row):
        for j in range(col):
            y[i, j] = x_matrix[i, j]*filter_matrix[i, j]

	return y.sum()
	

def conv2(x_matrix, filter_matrix, stride, padding):
    	x_row, x_col = x_matrix.shape
	filter_row, filter_col = filter_matrix.shape 

	y_row = int(((x_row - filter_row + 2*padding)/stride) + 1)
	y_col = int(((x_col - filter_col + 2*padding)/stride) + 1)

    if(padding >= 1):
        temp_matrix = x_matrix
        x_row = x_row + 2*padding
        x_col = x_col + 2*padding
        x_matrix = np.zeros((x_row, x_col))
        x_matrix[0+padding:x_row-padding, 0+padding:x_col-padding] = temp_matrix

	y = np.zeros((y_row, y_col))

	index_row = np.arange(start=0, stop=x_row-filter_row+1, step=stride)
	index_col = np.arange(start=0, stop=x_col-filter_col+1, step=stride)
	for i in range(len(index_row)):
		for j in range(len(index_col)):
			sub_matrix = x_matrix[index_row[i]:index_row[i]+filter_row, index_col[j]:index_col[j]+filter_col]
			y[i, j] = conv(sub_matrix, filter_matrix)
	return y