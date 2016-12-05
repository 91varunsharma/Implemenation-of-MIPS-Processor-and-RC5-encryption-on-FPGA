import sys

read_file1 = sys.argv[1]
read_file2 = sys.argv[2]

file1 = open(read_file1)
file2 = open(read_file2)
count = 0
result = False

for f1, f2 in zip(file1, file2):
    line_f1 = f1.split('\n')[0]
    line_f2 = f2.split('\n')[0]
    a = line_f1.strip()
    b = line_f2.strip()
    result = a == b
    print count, a, b, result
    count += 1
    if not result:
        break

if result:
    print "Both files are Similar"
else:
    print "Both files are NOT Similar"
