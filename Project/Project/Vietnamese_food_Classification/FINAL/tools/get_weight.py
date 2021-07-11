import h5py
import numpy as np
import struct
import ctypes
from tensorflow.python.keras.layers import Input, Dense
from keras.models import load_model
from decimal import Decimal

def float_to_bin(value):
    return ''.join('{:0>8b}'.format(c) for c in struct.pack('!f', value))


def de2hex_floating_point(x):
    return hex(ctypes.c_uint.from_buffer(ctypes.c_float(x)).value)

# load model
model_done = load_model('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/tools/modelcnn.h5')

# print(list(model_done["model_weights"].keys()))

# get filter, bias weights in conv layer


for layer in model_done.layers:
    f_bias = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/bias/' + layer.name + '_bias.txt', "w")
    if 'conv' not in layer.name:
        continue
    filters, biases = layer.get_weights()  #get_weights()[0][1] 0:filter, 1:bias
    print (filters.shape)
    for bias_weight in biases:
        #f_b.writelines(format(bias_weight, ".15g")+'\n')
        f_bias.write(float_to_bin(bias_weight) +'\n')
        #f_b.writelines(ctypes.c_float(bias_weight) + '\n')
    f_bias.close()
    for channel in range(filters.shape[2]):
        for number_filter in range(filters.shape[3]):
            f_filter = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel/' + layer.name + '_channel_' + str(channel) + 'filter_' + str(number_filter) + '.txt', 'w')
            for h in range(filters.shape[0]):
                for w in range(filters.shape[1]):
                    f_filter.write(float_to_bin(filters[h][w][channel][number_filter])+'\n')
                    #f_f.writelines(format(filters[h, w, channel, number_filter], ".15g")+'\n')
                    #f_f.writelines(ctypes.c_float(filters[h, w, channel, number_filter]) + '\n')
            f_filter.close()

# get filter, bias weights in dense layer
for layer_dense in model_done.layers:
    if 'dense' not in layer_dense.name:
        continue
    filters_dense, bias_dense = layer_dense.get_weights()
    f_b = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/dense/file_' + layer_dense.name + '_bias.txt', 'w')
    for bias_weight_dense in bias_dense:
        # f_b.writelines('%s\n' % bias_weight)
        #f_b.writelines(format(bias_weight, ".15g")+'\n')
        f_b.write(float_to_bin(bias_weight_dense) +'\n')
        #f_b.writelines(ctypes.c_float(bias_weight) +'\n')
    f_b.close()
    f_f = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/dense/file_' + layer_dense.name + '_filter.txt', 'w')
    for h in range (filters_dense.shape[0]):
        for w in range (filters_dense.shape[1]):
            f_f.write(float_to_bin(filters_dense[h][w]) +'\n')
            #f_f.writelines(format(filters[h][w], ".15g")+'\n')
            #f_f.writelines(ctypes.c_float(filters[h][w])+'\n')
    f_f.close()




    