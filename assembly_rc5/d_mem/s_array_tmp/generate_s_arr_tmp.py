S0='B7E15163'
A='9E3779B9'

for i in range(0,26):
	#print(i)
	c=int(S0,16)+i*int(A,16)
	d=str(bin(c))
	d=d[-32:]
	#print('s_arr_tmp(',i,')<=', '"', d,'";')
	print(d)