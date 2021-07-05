import h5py
import numpy as np
import struct
import ctypes
from tensorflow.python.keras.layers import Input, Dense
from keras.models import load_model
import dectofloatingpoint
from decimal import Decimal


def float_to_floatingPoint(a):
    if (a == 0):
        return '00000000000000000000000000000000'
    b = int(a)
    c = a - int(a)
    b = bin(b)
    b = b[2:len(b)]
    i = 0
    d = '0'
    while (i < 73 and c != 0):
        i = i + 1
        c = c * 2
        if c >= 1:
            c = c - 1
            d = d + '1'
        else:
            d = d + '0'
    num = b + d[1:len(d)]
    i = 0
    while (num[i] != '1'):
        i = i + 1
    t = i + 1
    ex = bin(127 + (len(b) - i - 1))
    ex = ex[2:len(ex)]
    ex = ex[::-1]
    if(len(ex) < 8):
        temp = len(ex)
        for i in range(temp, 8):
            ex = ex + '0'
    ex = ex[::-1]
    num = num[t:len(num)]
    if (len(num) > 23):
        fr = num[0:23]
    elif (len(num) < 23):
        temp = len(num)
        for i in range(temp, 23):
            num = num + '0'
        fr = num
    else:
        fr = num
    return '0' + ex + fr

def float_to_bin(value):
	#return struct.unpack('Q', struct.pack('d', value))[0]
  #return np.binary_repr(value)
  return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', value))


def de2hex_floating_point(x):
   return hex(ctypes.c_uint.from_buffer(ctypes.c_float(x)).value)

# load model
model_done = load_model('D:/IC_DESIGN1/Nhom_9/Script/cnn_model.h5')

# print(list(model_done["model_weights"].keys()))

# get filter, bias weights in conv layer
i = 0
for layer in model_done.layers:
    f_b = open('D:/IC_DESIGN1/Nhom_9/Result/bias_new/' + layer.name + '_bias.txt', "w")
    if 'conv' not in layer.name:
        continue
    filters, biases = layer.get_weights()
    for bias_weight in biases:
        f_b.writelines(format(bias_weight, ".15g")+'\n')
        # f_b.writelines(ctypes.c_float(bias_weight) + '\n')
    f_b.close()
    for channel in range(filters.shape[2]):
        for number_filter in range(filters.shape[3]):
            f_f = open('D:/IC_DESIGN1/Nhom_9/Result/kernel_new/' + layer.name + '_channel_' + str(channel) + 'filter_' + str(number_filter) + '.txt', 'w')
            for h in range(filters.shape[0]):
                for w in range(filters.shape[1]):
                    f_f.writelines(format(filters[h, w, channel, number_filter], ".15g")+'\n')
                    # f_f.writelines(ctypes.c_float(filters[h, w, channel, number_filter]) + '\n')
            f_f.close()
    i += 1

# get filter, bias weights in dense layer
for layer_dense in model_done.layers:
    if 'dense' not in layer_dense.name:
        continue
    filters, bias = layer_dense.get_weights()
    f_b = open('D:/IC_DESIGN1/Nhom_9/Result/dense_new/file_' + layer_dense.name + '_bias.txt', 'w')
    for bias_weight in bias:
        # f_b.writelines('%s\n' % bias_weight)
        f_b.writelines(format(bias_weight, ".15g")+'\n')
        # f_b.writelines(ctypes.c_float(bias_weight) +'\n')
    f_b.close()
    f_f = open('D:/IC_DESIGN1/Nhom_9/Result/dense_new/file_' + layer_dense.name + '_filter.txt', 'w')
    for h in range (filters.shape[0]):
        for w in range (filters.shape[1]):
            f_f.writelines(format(filters[h][w], ".15g")+'\n')
            # f_f.writelines(ctypes.c_float(filters[h][w])+'\n')
    f_f.close()

    