export PATH=$PATH:.

export PS1="\`if [ \$? = \"0\" ]; then echo \"\\[\\033[32m\\]-- \"; else echo \"\\[\\033[1;31m\\]** \"; fi\`\u\[\033[0;34m @ \w\n > \[\033[0m"

alias grep='grep --colour'
