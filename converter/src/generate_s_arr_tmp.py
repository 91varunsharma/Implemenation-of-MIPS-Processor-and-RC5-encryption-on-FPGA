S0 = 'B7E15163'
A = '9E3779B9'
s_array_size = 26

for i in range(0, s_array_size):
    c = int(S0, 16) + (i * int(A, 16))
    d = str(bin(c))
    d = d[-32:]
    print d
