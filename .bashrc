#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTFILE=~/.bash_history
HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL=ignoreboth
HISTIGNORE="[bf]g:jobs:pwd:exit:c[lr]:[u]mount:l[sla]:cd:.*:[h]grep[er]"

INPUTRC=~/.inputrc

EDITOR=nvim

[[ -f ~/.bash_aliases ]] && source ~/.bash_aliases

[[ -f /usr/share/git/git-prompt.sh ]] && source /usr/share/git/git-prompt.sh
   
color_prompt=yes
if [ $color_prompt = yes ]; then
    PS1='[\e[1;33m\u@\h\e[m \e[1;34m\w\e[m]\e[1;32m$(__git_ps1)\e[m\$ '
else
    PS1='[\u@\h \w\$] '
fi
unset color_prompt

