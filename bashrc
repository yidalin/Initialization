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
    PS1="\e[0;31m\e[5m\]\u\e[m \e[1;37min\e[m \e[0;32m\H\e[m \e[1;37mat\e[m \e[1;36m\w\e[m \e[0;34m[\t]\e[m\n\$ "
else
    PS1="\e[0;34m\u\e[m \e[1;37min\e[m \e[0;32m\H\e[m \e[1;37mat\e[m \e[1;36m\w\e[m \e[0;34m[\t]\e[m\n\$ "
fi

HISTCONTROL=ignorespace
HISTTIMEFORMAT=$(echo -e "\e[0;35m[%Y/%m/%d-%T]\e[m ")
