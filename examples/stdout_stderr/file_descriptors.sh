#dec2hex is not defined, but copying this line into a bash where the dec2hex function is defined should kind-of-work, i.e. the lines are separated, but are not merged back.
cat data | ((tee /dev/fd/3 | awk '{print $1}' | dec2hex > /dev/fd/4) 3>&1 | awk '{print $2}') 4>&1
