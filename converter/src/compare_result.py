import sys

read_file1 = sys.argv[1]
read_file2 = sys.argv[2]

file1 = open(read_file1)
file2 = open(read_file1)
count = 0

similar = 0

for f1, f2 in zip(file1, file2):
    line_f1 = f1.split('\n')[0]
    line_f2 = f2.split('\n')[0]
    count += 1
    result = line_f1 == line_f2
    if result:
        similar = 1
    else:
        similar = 0
        break

    print count, line_f1, line_f2, result

if similar == 1:
    print "Similar"

else:
    print "Not Similar"