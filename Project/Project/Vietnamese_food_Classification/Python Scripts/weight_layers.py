import h5py
import numpy as np
import struct
import ctypes
from tensorflow.python.keras.layers import Input, Dense
from keras.models import load_model
import dectofloatingpoint

# def float_to_bin(value):
# 	#return struct.unpack('Q', struct.pack('d', value))[0]
#   #return np.binary_repr(value)
#   return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', value))


def de2hex_floating_point(x):
   return hex(ctypes.c_uint.from_buffer(ctypes.c_float(x)).value)

# load model
model_done = load_model('D:/IC_DESIGN1/Nhom_9/Script/cnn_model.h5')

# print(list(model_done["model_weights"].keys()))

# get filter, bias weights in conv layer
i = 0
for layer in model_done.layers:
    f_b = open('D:/IC_DESIGN1/Nhom_9/Result/bias/' + layer.name + '_bias.txt', "w")
    if 'conv' not in layer.name:
        continue
    filters, biases = layer.get_weights()
    for bias_weight in biases:
        # f_b.writelines(float_to_bin(bias_weight)+'\n')
        f_b.writelines(de2hex_floating_point(bias_weight).replace('0x', '')+'\n')
    f_b.close()
    for channel in range(filters.shape[2]):
        for number_filter in range(filters.shape[3]):
            f_f = open('D:/IC_DESIGN1/Nhom_9/Result/kernel/' + layer.name + '_channel_' + str(channel) + 'filter_' + str(number_filter) + '.txt', 'w')
            for h in range(filters.shape[0]):
                for w in range(filters.shape[1]):
                    # f_f.writelines(float_to_bin(filters[h, w, channel, number_filter])+'\n')
                    f_f.writelines(de2hex_floating_point(filters[h, w, channel, number_filter]).replace('0x', '')+'\n')
            f_f.close()
    i += 1

# get filter, bias weights in dense layer
for layer_dense in model_done.layers:
    if 'dense' not in layer_dense.name:
        continue
    filters, bias = layer_dense.get_weights()
    f_b = open('D:/IC_DESIGN1/Nhom_9/Result/dense/file_' + layer_dense.name + '_bias.txt', 'w')
    for bias_weight in bias:
        # f_b.writelines('%s\n' % bias_weight)
        # f_b.writelines(float_to_bin(bias_weight)+'\n')
        f_b.writelines(de2hex_floating_point(bias_weight).replace('0x', '')+'\n')
    f_b.close()
    f_f = open('D:/IC_DESIGN1/Nhom_9/Result/dense/file_' + layer_dense.name + '_filter.txt', 'w')
    for h in range (filters.shape[0]):
        for w in range (filters.shape[1]):
            # f_f.writelines(float_to_bin(filters[h][w])+'\n')
            f_f.writelines(de2hex_floating_point(filters[h][w]).replace('0x', '')+'\n')
    f_f.close()

    