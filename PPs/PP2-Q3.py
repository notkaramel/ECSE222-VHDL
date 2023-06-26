# define XOR gate
def XOR(a, b):
    return (a and not b) or (not a and b)

# define NOR gate
def NOR(a, b):
    return not (a or b)

# define NAND gate
def NAND(a, b):
    return not (a and b)

# define NOT gate
def NOT(a):
    return not a


tb = [0,1]
for x1 in tb:
    for x2 in tb:
        for x3 in tb:
            print(x1,x2,x3, sep=", ", end=": ")
            canonical = (x1 or x2 or x3) and (NOT(x1) or x2 or NOT(x3)) and (x1 or NOT(x2) or NOT(x3))
            simplified = (x2 or XOR(x1, x3)) and (x1 or NOT(x2 and x3))
            print(f'{bool(canonical)} \t== {bool(simplified)} \t-> {int(canonical) == int(simplified)}')





