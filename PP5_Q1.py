# Half adder
def half_adder(a, b):
    a = int(a)
    b = int(b)
    s = a ^ b
    c = a & b
    return s, c

# Full adder
def full_adder(a, b, c_in):
    a = int(a)
    b = int(b)
    c_in = int(c_in)
    s, c1 = half_adder(a, b)
    s, c2 = half_adder(s, c_in)
    c_out = c1 | c2
    return s, c_out

# Jakob's Circuit
# Param: a_4bit: a list of 4 bits
# Param: b_4bit: a list of 4 bits
def jakob(a, b):
    a3_s, a3_c = half_adder(a[3], '1')
    b3_s, b3_c = half_adder(b[3], '1')
    
    a_z = half_adder(a=a3_s, b='1')[0]
    b_z = half_adder(a=b3_s, b='1')[0]

    s4, h3 = half_adder(a=a3_c, b=b3_c)

    # 3 times of subcircuit
    s3, h2 = jakob_subcircuit(a[2], a_z, b[2], b_z, h3)
    s2, h1 = jakob_subcircuit(a[1], a_z, b[1], b_z, h2)
    s1, s0 = jakob_subcircuit(a[0], a_z, b[0], b_z, h1)

    return f'{s0}{s1}{s2}{s3}{s4}'

    

def jakob_subcircuit(a_i, a_z, b_i, b_z, h_prev):
    ai_c = half_adder(a_z, a_i)[1]
    bi_c = half_adder(b_z, b_i)[1]

    si, hi = full_adder(ai_c, bi_c, h_prev)
    return si, hi

def check_circuit():
    signal_4bit = ["0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"]

    for a_4bit in signal_4bit:
        for b_4bit in signal_4bit:
            z = jakob(a_4bit, b_4bit)
            z_int = int(z, 2)
            a_int = int(a_4bit, 2)
            b_int = int(b_4bit, 2)
            try:
                if(a_int % 2 == 0 and b_int % 2 == 0):
                    assert z_int == 0
                elif(a_int % 2 == 0 and b_int % 2 == 1):
                    assert z_int == b_int
                elif(a_int % 2 == 1 and b_int % 2 == 0):
                    assert z_int == a_int
                else:
                    assert z_int == a_int + b_int
            except AssertionError:
                print(f'Error: a={a_4bit} b={b_4bit} z={z}')
                exit()

check_circuit()