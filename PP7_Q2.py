# return the 4-bit 2's complement representation of the number
def to2complement(n):
    listnum = ["0000", "0001", "0010", "0011", "0100", "0101", "0110", "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"]
    return listnum[n]

def full_adder(a, b, c): # input a, b, c are 1-bit strings
    a = int(a)
    b = int(b)
    c = int(c)

    s = a ^ b ^ c
    carry = (a & b) | (b & c) | (c & a)
    return s, carry

def rca(a, b, c): # input a, b, c are integers
    rca_a = to2complement(a)
    rca_b = to2complement(b)
    rca_c = to2complement(c) # 0000 or 0001

    s0, c0 = full_adder(rca_a[3], rca_b[3], rca_c[3])
    s1, c1 = full_adder(rca_a[2], rca_b[2], c0)
    s2, c2 = full_adder(rca_a[1], rca_b[1], c1)
    s3, c3 = full_adder(rca_a[0], rca_b[0], c2)
    c = c3 ^ c2
    return f'{c}{s3}{s2}{s1}{s0}'
    

def main():
    a, b = map(int, input("Enter 2 number between -8 and 7: ").split())
    listnum = ["0000", "0001", "0010", "0011", "0100", "0101", "0110",
               "0111", "1000", "1001", "1010", "1011", "1100", "1101", "1110", "1111"]

    print(f'{a} + {b} = {a + b}')
    print(f'{to2complement(a)} + {to2complement(b)} = {to2complement(a + b)}, which is {listnum.index(to2complement(a + b)) if a + b < 10 else listnum.index(to2complement(a + b)) - 16}')

    print(f'{a} - {b} = {a - b}')
    print(f'{to2complement(a)} - {to2complement(b)} = {to2complement(a - b)}, which is {listnum.index(to2complement(a - b)) if a - b < 10 else listnum.index(to2complement(a - b)) - 16}')
    print(f'Using RCA: {rca(a, b, 0)}')

main()