from tensorflow import keras
import numpy as np
import cv2

base_model = keras.models.load_model('D:/IC_DESIGN1/Nhom_9/Script/cnn_model.h5')

path = 'D:/IC_DESIGN1/Nhom_9/test_image/banh_mi_test2.jpg'
x = cv2.imread(path)
x = cv2.resize(x,(64,64))
x = cv2.cvtColor(x, cv2.COLOR_BGR2RGB)
x = x /255.0
x.shape

conv1 = base_model.layers[0]
conv2 = base_model.layers[1]
conv3 = base_model.layers[2]
conv4 = base_model.layers[3]
conv5 = base_model.layers[4]
conv6 = base_model.layers[5]
conv7 = base_model.layers[6]
conv8 = base_model.layers[7]
z = conv1(x[np.newaxis,:,:,:])
w = conv2(z)
k = conv3(w)
l = conv4(k)
m = conv5(l)
n = conv6(m)
e = conv7(n)
y = conv8(e)


y = y.numpy()
y = y.squeeze()

type(y)

# y = y.numpy()
# y = y.squeeze()

y.shape
import matplotlib.pyplot as plt
from keras import backend as K

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
feature_map_show(y, "test_layer7")