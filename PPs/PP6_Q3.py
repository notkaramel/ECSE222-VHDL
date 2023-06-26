# count 1's bits in a 8 bit binary number
def count_ones(x):
    count = 0
    for i in range(8):
        if x & (1<<i):
            count += 1
    return count

def bin4(x):
    return "{0:04b}".format(x)

def truth_table():
    for i in range(256):
        print(f'{i:08b} has {bin4(count_ones(i))} ones')

def full_adder(a, b, c):
    s = a ^ b ^ c
    c = (a & b) | (b & c) | (a & c)
    return s, c

def half_adder(a, b):
    s = a ^ b
    c = a & b
    return s, c

# Edit circuit here
def counting_circuit(x):
    s123, c123 = full_adder(x[0], x[1], x[2])
    s456, c456 = full_adder(x[3], x[4], x[5])
    s78, c78 = half_adder(x[6], x[7])
    s0, c0 = full_adder(s123, s456, s78)
    s1, c1 = full_adder(c123, c456, c78)
    s2, c2 = half_adder(c0, c1)
    s3, c3 = half_adder(c2, c0)
    return c3, s3, s2, s1, s0

def bin8tolist(x):
    return [int(i) for i in f'{x:08b}']

def test_circuit():
    for i in range(256):
        x = bin8tolist(i)
        c3, s3, s2, s1, s0 = counting_circuit(x)
        print(f'{i:08b} has {s0}{s1}{s2}{c3}{s3} ones')
    
def main():
    # truth_table()
    test_circuit()

if __name__ == '__main__':
    main()
