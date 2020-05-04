if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]];
then
    exec startx
fi

export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

source /Users/brunomurino/Library/Preferences/org.dystroy.broot/launcher/bash/br
