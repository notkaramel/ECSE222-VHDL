# EDIT THIS MUX FUNCTION
def MUX(a1, a0, b1, b0, c1, c0, s1, s0):
    a = not (s1 or s0)
    a1_and = a and a1
    a0_and = a and a0

    b = (not s1) and s0
    b1_and = b and b1
    b0_and = b and b0

    c = s1 and (not s0)
    c1_and = c and c1
    c0_and = c and c0

    z1 = a1_and or b1_and or c1_and
    z0 = a0_and or b0_and or c0_and

    return f'{int(z1)}{int(z0)}'

def checkMUX(a1, a0, b1, b0, c1, c0, s1, s0):
    z = MUX(a1, a0, b1, b0, c1, c0, s1, s0)
    if s1 == 0 and s0 == 0:
        assert z == f'{a1}{a0}' 
    elif s1 == 0 and s0 == 1:
        assert z == f'{b0}{b1}'
    elif s1 == 1 and s0 == 0:
        assert z == f'{c1}{c0}'

def main():
    print("Testing MUX")
    tb = [0,1]
    try:    
        for s1 in tb:
            for s0 in tb:
                for a1 in tb:
                    for a0 in tb:
                        for b1 in tb:
                            for b0 in tb:
                                for c1 in tb:
                                    for c0 in tb:                                
                                        checkMUX(a1, a0, b1, b0, c1, c0, s1, s0) 
        print("Test passed")
    except AssertionError:
        print(f'Error: a={a1}{a0} b={b1}{b0} c={c1}{c0} at sel={s1}{s0}')
        exit()
        

main()
