#!/bin/bash

awk '{ test=""; for (i=1; i<=NF; i++) {test = sprintf("%s %c[38;5;%dm%s", test, 27, $i%256, $i)}; printf "%s\n%c[1;0m",  test, 27, 27}'