export LS_OPTIONS='--color=auto'
export EDITOR=vim
CDPATH=.:$HOME
HISTSIZE=10000
HISTFILESIZE=20000

alias ls='ls $LS_OPTIONS'
alias lh='ls $LS_OPTIONS -ltrh'
alias l='ls $LS_OPTIONS -ltr'
alias ap='cd /var/log/apache2'

PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@myvps\[\033[01;33m\] \w #\[\033[00m\] "

