# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='ls --color=always'
alias vi='vim'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ $(whoami)=='root' ]; then
    PS1="\e[0;31m\u\e[m \e[1;30min\e[m \e[0;32m\H\e[m \e[1;30mat\e[m \e[1;36m\w\e[m \e[0;35m[\t]\e[m\n\$ "
else
    PS1="\e[0;34m\u\e[m \e[1;30min\e[m \e[0;32m\H\e[m \e[1;30mat\e[m \e[1;36m\w\e[m \e[0;35m[\t]\e[m\n\$ "
fi
