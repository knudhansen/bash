export PATH=$PATH:.

RED="\033[1;31m"
GREEN="\033[0;32m"
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

#git auto completion script is to be found at https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/git-completion.bash

# sourcing miscellaneous utilities
source ~/GitHub/bash/utilities/math.source
source ~/GitHub/bash/utilities/misc.source
