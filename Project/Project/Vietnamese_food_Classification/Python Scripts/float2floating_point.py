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
# -0.00526929227635264
# 0.152100920677185
# 0.10384625941515
# 0.214116007089615
# -0.0185113754123449
# 0.189402431249619
# -0.192998960614204
# 0.168106690049171
# 0.0379698351025581

a=float_to_floatingPoint(0.00526929227635264)
b=float_to_floatingPoint(0.152100920677185)
c=float_to_floatingPoint(0.10384625941515)
d=float_to_floatingPoint(0.214116007089615)
e=float_to_floatingPoint(0.0185113754123449)
f=float_to_floatingPoint(0.189402431249619)
g=float_to_floatingPoint(0.192998960614204)
h=float_to_floatingPoint(0.168106690049171)
i=float_to_floatingPoint(0.0379698351025581)
print(a)
print(b)
print(c)
print(d)
print(e)
print(f)
print(g)
print(h)
print(i)
# w = [0 for x in range(8)]
# f_b = open('D:/IC_DESIGN1/Nhom_9/Result/bias_new/conv2d_bias.txt', "r")
# for i in range(0, 8):  
#     a = f_b.readline()
#     a[i] = a
# f_b.close()

# print (w[2])
# f_b = open('D:/IC_DESIGN1/Nhom_9/Result/bias_floating_point/conv2d_bias.txt', "w")
# for i in range (0, 8):  
#     w[i] = 
#     f_b.write(str(float_to_floatingPoint(w[i])))
#     print("\n")
# f_b.close()