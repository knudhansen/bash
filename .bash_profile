export PATH=$PATH:.

RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[0;34m"
OFF="\033[0m"

function exit_status_color {
    EXITSTATUS="$?"
    
    if [ "$EXITSTATUS" -eq "0" ];
	then
	echo "$GREEN --";

	else
	echo "$RED ##";
    fi
}

function set_knud {
    KNUD='1'
}

function exit_status_color_off {
    echo $OFF
}

export PS1="\$(echo -e \$(exit_status_color)) \u${BLUE} @ \w${OFF} > "

alias grep='grep --colour'
