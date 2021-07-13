import json
from jinja2 import Template
import torch

filter = 8

def get_template_sample(file_name):
    with open(file_name, 'r', encoding='UTF-8') as file:
        return file.read()
 
def save_report(content, file_name):
    with open(file_name, 'w', encoding='UTF-8') as file:
        file.write(content)

bias = []

f_bias = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/bias/conv2d_bias.txt', 'r')
for i in range(0, filter): 
    x = f_bias.readline()
    bias += [x]
f_bias.close()

def build_report(b, g , r, bias_in, index):
    # input_data = json.loads(get_input_sample())
    # read data from *.npy
    # w0,w1,w2,w3 ..
    # 

    verilog_template = get_template_sample("/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/vip_core/rtl/vip/featuremap_template_conv2d_0.v")
    jinja2_template = Template(verilog_template)
    contents = jinja2_template.render(k0   = "32'b" + b[0] ,k1  = "32'b" + b[1] ,k2  = "32'b" + b[2], k3 = "32'b" + b[3] ,k4  = "32'b" + b[4],k5  = "32'b" + b[5],k6  = "32'b" + b[6] ,k7  = "32'b"  + b[7],k8 = "32'b"  + b[8],
                                      k10  = "32'b" + g[0] ,k11 = "32'b" + g[1] ,k12 = "32'b" + g[2], k13 ="32'b" + g[3] ,k14 = "32'b" + g[4],k15 = "32'b" + g[5],k16 = "32'b" + g[6] ,k17 = "32'b" + g[7],k18 = "32'b" + g[8],
                                      k20  = "32'b" + r[0] ,k21 = "32'b" + r[1] ,k22 = "32'b" + r[2], k23 ="32'b" + r[3] ,k24 = "32'b" + r[4],k25 = "32'b" + r[5],k26 = "32'b" + r[6] ,k27 = "32'b"  + r[7],k28 = "32'b" + r[8],
                                      bias = "32'b" + bias_in)
    filename = "/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/vip_core/rtl/vip/featuremap/featuremap_conv2d_0_filter"+str(index)+".v"
    save_report(contents, filename)
    print("create  success!")

for i in range(0, filter): 
    f_b = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_0/conv2d_channel_0filter_'+ str(i) + '.txt', 'r')
    f_g = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_0/conv2d_channel_1filter_'+ str(i) + '.txt', 'r')
    f_r = open('/home/thienlong/Exercise/VIPUsingFPGA/OpenIP/data/datasets/kernel_layer_conv2d_0/conv2d_channel_2filter_'+ str(i) + '.txt', 'r')
    b = []
    g = []
    r = []
    for j in range(0, 9): 
        x1 = f_b.readline()
        x2 = f_g.readline()
        x3 = f_r.readline()
        b += [x1]
        g += [x2]
        r += [x3]
        # data = {}
        # for j1 in range(0, 3): 
        #     data['w'+str(j1)+str(j)] =  
    build_report(b, g , r, bias[i], i)
f_b.close()
f_g.close()
f_r.close()

if __name__ == "__main__":
    build_report(b,g,r,bias[i],i);
