import json
from jinja2 import Template
import torch

filter = 16

def get_template_sample(file_name):
    with open(file_name, 'r', encoding='UTF-8') as file:
        return file.read()
 
def save_report(content, file_name):
    with open(file_name, 'w', encoding='UTF-8') as file:
        file.write(content)

bias = []

f_bias = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/bias/conv2d_2_bias.txt', 'r')
for i in range(0, filter): 
    x = f_bias.readline()
    bias += [x]
f_bias.close()

def build_report(c0, c1, c2, c3, c4, c5, c6, c7, bias_in, index):
    # input_data = json.loads(get_input_sample())
    # read data from *.npy
    # w0,w1,w2,w3 ..
    # 

    verilog_template = get_template_sample("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/vip_core/rtl/vip/featuremap_template_conv2d_2.v")
    jinja2_template = Template(verilog_template)
    contents = jinja2_template.render(k0   = "32'b" + c0[0] ,k1  = "32'b" + c0[1] ,k2  = "32'b" + c0[2], k3  = "32'b" + c0[3] ,k4  = "32'b" + c0[4],k5  = "32'b" + c0[5],k6  = "32'b" + c0[6] ,k7  = "32'b" + c0[7],k8  = "32'b" + c0[8],
                                      k10  = "32'b" + c1[0] ,k11 = "32'b" + c1[1] ,k12 = "32'b" + c1[2], k13 = "32'b" + c1[3] ,k14 = "32'b" + c1[4],k15 = "32'b" + c1[5],k16 = "32'b" + c1[6] ,k17 = "32'b" + c1[7],k18 = "32'b" + c1[8],
                                      k20  = "32'b" + c2[0] ,k21 = "32'b" + c2[1] ,k22 = "32'b" + c2[2], k23 = "32'b" + c2[3] ,k24 = "32'b" + c2[4],k25 = "32'b" + c2[5],k26 = "32'b" + c2[6] ,k27 = "32'b" + c2[7],k28 = "32'b" + c2[8],
                                      k30  = "32'b" + c3[0] ,k31 = "32'b" + c3[1] ,k32 = "32'b" + c3[2], k33 = "32'b" + c3[3] ,k34 = "32'b" + c3[4],k35 = "32'b" + c3[5],k36 = "32'b" + c3[6] ,k37 = "32'b" + c3[7],k38 = "32'b" + c3[8],
                                      k40  = "32'b" + c4[0] ,k41 = "32'b" + c4[1] ,k42 = "32'b" + c4[2], k43 = "32'b" + c4[3] ,k44 = "32'b" + c4[4],k45 = "32'b" + c4[5],k46 = "32'b" + c4[6] ,k47 = "32'b" + c4[7],k48 = "32'b" + c4[8],
                                      k50  = "32'b" + c5[0] ,k51 = "32'b" + c5[1] ,k52 = "32'b" + c5[2], k53 = "32'b" + c5[3] ,k54 = "32'b" + c5[4],k55 = "32'b" + c5[5],k56 = "32'b" + c5[6] ,k57 = "32'b" + c5[7],k58 = "32'b" + c5[8],
                                      k60  = "32'b" + c6[0] ,k61 = "32'b" + c6[1] ,k62 = "32'b" + c6[2], k63 = "32'b" + c6[3] ,k64 = "32'b" + c6[4],k65 = "32'b" + c6[5],k66 = "32'b" + c6[6] ,k67 = "32'b" + c6[7],k68 = "32'b" + c6[8],
                                      k70  = "32'b" + c7[0] ,k71 = "32'b" + c7[1] ,k72 = "32'b" + c7[2], k73 = "32'b" + c7[3] ,k74 = "32'b" + c7[4],k75 = "32'b" + c7[5],k76 = "32'b" + c7[6] ,k77 = "32'b" + c7[7],k78 = "32'b" + c7[8],
                                      bias = "32'b" + bias_in)
    filename = "/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/vip_core/rtl/vip/featuremap/featuremap_conv2d_2_filter"+str(index)+".v"
    save_report(contents, filename)
    print("create  success!")

for i in range(0, filter): 
    f_c0 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_0filter_'+ str(i) + '.txt', 'r')
    f_c1 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_1filter_'+ str(i) + '.txt', 'r')
    f_c2 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_2filter_'+ str(i) + '.txt', 'r')
    f_c3 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_3filter_'+ str(i) + '.txt', 'r')
    f_c4 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_4filter_'+ str(i) + '.txt', 'r')
    f_c5 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_5filter_'+ str(i) + '.txt', 'r')
    f_c6 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_6filter_'+ str(i) + '.txt', 'r')
    f_c7 = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_2/conv2d_2_channel_7filter_'+ str(i) + '.txt', 'r')
    c0 = []
    c1 = []
    c2 = []
    c3 = []
    c4 = []
    c5 = []
    c6 = []
    c7 = []
    for j in range(0, 9): 
        x1 = f_c0.readline()
        x2 = f_c1.readline()
        x3 = f_c2.readline()
        x4 = f_c3.readline()
        x5 = f_c4.readline()
        x6 = f_c5.readline()
        x7 = f_c6.readline()
        x8 = f_c7.readline()
        c0 += [x1]
        c1 += [x2]
        c2 += [x3]
        c3 += [x4]
        c4 += [x5]
        c5 += [x6]
        c6 += [x7]
        c7 += [x8]
        # data = {}
        # for j1 in range(0, 3): 
        #     data['w'+str(j1)+str(j)] =  
    build_report(c0, c1, c2, c3, c4, c5, c6, c7, bias[i], i)
f_c0.close()
f_c1.close()
f_c2.close()
f_c3.close()
f_c4.close()
f_c5.close()
f_c6.close()
f_c7.close()

if __name__ == "__main__":
    build_report(c0, c1, c2, c3, c4, c5, c6, c7, bias[i], i)
