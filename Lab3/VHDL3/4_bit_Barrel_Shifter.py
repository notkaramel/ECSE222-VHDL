def MUX(a, b, sel):
    return a if sel == '0' else b

string4bit = ['0000', '0001', '0010', '0011', '0100', '0101', '0110', '0111', '1000', '1001', '1010', '1011', '1100', '1101', '1110', '1111']
string2bit = ['00', '01', '10', '11']

# x: 4 bit input signal
# sel: 2 bit input signal
# y: 4 bit output signal

def Barrel_Shifter_4bit():
    p = [i for i in range(4)]
    y = [i for i in range(4)]
    for x_signal in string4bit:
        for sel_signal in string2bit:
            for i in range(4):
                # first layer of MUX
                p[i] = MUX(x_signal[i], x_signal[(i+2)% 4], sel_signal[1])
                # second layer of MUX
                y[i] = MUX(p[i], p[(i+3)% 4], sel_signal[0])
            print(f'x = {x_signal} + sel = {sel_signal} = y = {y}')

Barrel_Shifter_4bit()