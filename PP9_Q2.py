def encoder(w0, w1, w2, w3):
    y0 = w1 ^ w3
    y1 = w2 ^ w3
    z = 0 if (w0 == 0 and w1 == 0 and w2 == 0 and w3 == 0) else 1;
    return (y1, y0, z)

print(encoder(1, 0, 1, 0))