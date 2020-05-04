# Source all files from folder
for f in ~/.bash_functions/*; do source $f; done

# colors!
green="\[\033[0;32m\]"
cyan="\[\033[0;36m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"
# Change command prompt
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory

export PS1="$purple\t$green\$(__git_ps1) $cyan\W$reset -> "

# ## Add color and display 1 file per line ##
alias ls='ls -G -1'
alias cnv='nvim ~/.config/nvim/init.vim'
alias cbp='nvim ~/.bash_profile'

alias v='nvim'
alias vim='nvim'

export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"

source /Users/brunomurino/Library/Preferences/org.dystroy.broot/launcher/bash/br
