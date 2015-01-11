import sys
import re

f = open(sys.argv[1])
lines = f.readlines()
print lines
f.close()

g = open(sys.argv[1], "w")

print lines

for line in lines:
    new_line = line
    if (re.match("^.*\.Use\(.*$", line)):
        new_line = re.sub(r"\'([a-zA-Z0-9_]*_)?main\'", "\'rel\'", line)
    g.write(new_line)

