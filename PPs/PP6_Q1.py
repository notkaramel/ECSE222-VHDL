# Convert value of X to 4 bit binary
def bin4(x):
    bin_rep = ["0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"]
    return bin_rep[x%16]

# Leftshift circuit
def leftshift(x):
    return bin4(x<<1)

def half_adder(a, b):
    s = a ^ b
    c = a & b
    return s, c

def full_adder(a, b, c):
    s = a ^ b ^ c
    c = (a & b) | (b & c) | (a & c)
    return s, c

def four_to_one_mux(a, b, c, d, s):
    return a if s == "00" else b if s == "01" else c if s == "10" else d

def q1circuit(x, s):
    s0, c0 = half_adder(x[-1], 0)
    s1, c1 = full_adder(x[-2], s[-1], c0)
    s2, c2 = full_adder(x[-3], s[-2], c1)
    s3, = full_adder(x[-4], s[-3], c2)

    y0 = four_to_one_mux(x[-1], s0, s0, 0, s)
    y1 = four_to_one_mux(x[-2], s1, s1, x[-1], s)
    y2 = four_to_one_mux(x[-3], s2, s2, x[-2], s)
    y3 = four_to_one_mux(x[-4], s3, s3, x[-3], s)

    return y3, y2, y1, y0



    

for i in range(16):
    print(f'X = {bin4(i)}\tX-1 = {bin4(i+15)}\tX+1 = {bin4(i+1)}\t2X = {leftshift(i)}')

