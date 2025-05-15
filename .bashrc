# .bashrc

##### Bash Completion #####
[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
	source /usr/local/share/bash-completion/bash_completion.sh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ "

##### Besc Shortcut #####
alias ls='eza -l --icons'
alias ll='ls -la --icons'
alias cat='bat'
alias trr='tree --icons'

##### Shortcut #####
alias i='doas pkg install'
alias q='doas pkg search'
alias r='doas pkg remove'
alias rt='doas pkg autoremove'
alias ug='doas pkg update && doas pkg upgrade'

##### Vim Shortcut ######
alias dvi='doas vim'
alias vi='vim'

#### Ptch and Make Suckless tools ####
alias pach='patch -p1 <'
alias make='doas make clean install'
