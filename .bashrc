# .bashrc
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias lsa='ls -la'
PS1='\[\e[1;32m\]\u@\h\[\e[m\]:\[\e[1;34m\]\w\[\e[m\]\$ '
