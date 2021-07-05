import struct
from PIL import Image
img_size = 32
size = (img_size, img_size)

import matplotlib.pyplot as plt
from tensorflow import keras
import cv2
import numpy as np

base_model = keras.models.load_model('D:/IC_DESIGN1/Nhom_9/Script/cnn_model.h5')

path = 'D:/IC_DESIGN1/Nhom_9/test_image/banh_mi_test2.jpg'
x = cv2.imread(path)
x = cv2.resize(x,(32,32))
x = cv2.cvtColor(x, cv2.COLOR_BGR2RGB)
x = x *255.0
x.shape

conv1 = base_model.layers[0]
conv2 = base_model.layers[1]
y = conv1(x[np.newaxis,:,:,:])
z = conv2(y)

y = y.numpy()
y = y.squeeze()

# z = z.numpy()
# z = z.squeeze()

layer = 1

# def bintofloat(value):
#     temp = int(value, 2)
#     return struct.unpack('f', struct.pack('I', temp))[0]
# def binary_to_float(x):
#     n, d = x.shape
#     x8 = x.reshape(n * d, -1)
#     c8 = 2 * ((x8 >> np.arange(8)) & 1).astype('int8') - 1
#     return c8.astype('float32').reshape(n, d * 8)
def binaryToFloat(value):
    #    hx = hex(int(value, 2))
    return struct.unpack("d", struct.pack("Q", int(value, 2)))[0]

accu = 0

for k in range(0, layer):
  f = open('D:/IC_DESIGN1/Nhom_9/RTL/output_pipeline3.txt', 'r')
#   t = f.readline()
#   t = f.readline()
#   t = f.readline()
  for i in range(size[0]):
    for j in range(size[1]):
        t = f.readline()
        x = float(binaryToFloat(t))
        y[i][j][k] = x
  f.close()

def feature_map_show(x, title):
    num_out_channels = x.shape[2]
    num_diagram_col = 4
    if num_out_channels > 16:
        num_diagram_col = 8
    num_diagram_row = np.ceil(num_out_channels / num_diagram_col)

    num_diagram_col = int(num_diagram_col)
    num_diagram_row = int(num_diagram_row)

    fig, axs = plt.subplots(
        nrows=num_diagram_row,
        ncols=num_diagram_col,
        figsize=(7 * num_diagram_col, 5 * num_diagram_row)
    )

    for i in range(num_out_channels):
        row = i // num_diagram_col
        col = i  % num_diagram_col

        axs[row][col].imshow(x[:, :, i], cmap='gray')
        axs[row][col].axis('off')

    fig.suptitle(title, fontsize=30)
    fig.savefig('{:s}.jpg'.format(title))

feature_map_show(y, "RTL")