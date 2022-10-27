def Bin2Gray(b3, b2, b1, b0):
    g3 = b3
    g2 = b3 ^ b2
    g1 = b2 ^ b1
    g0 = b1 ^ b0
    return g3, g2, g1, g0

def main():
    tb = [0,1]
    for b3 in tb:
        for b2 in tb:
            for b1 in tb:
                for b0 in tb:
                    g3, g2, g1, g0 = Bin2Gray(b3, b2, b1, b0)
                    print(f'The gray code of {b3}{b2}{b1}{b0} is {g3}{g2}{g1}{g0}')

main() # Call the main function