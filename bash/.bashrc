PS1="\n\[\033[1;32m\][\[\e]0;\u@\h:\w\a\]\u@\h:\w]\n\$ \[\033[0m\]"

HISTSIZE=10000000
eval "$(zoxide init --cmd cd bash)"
alias rgf='rg --files | rg'
alias lsd='ls -d hours* ; ls -dr days* ; ls -dr weeks* ; ls -dr months*'
alias lsd1='( ls -dr1  hours* ; ls -dr1 days* ; ls -dr1 weeks* ; ls -dr1 months* ) 2> /dev/null'
alias ls+='( ls -d *+ && ls -d *.git ) 2> /dev/null'
alias ytvideo="yt-dlp --embed-metadata --embed-subs --write-auto-subs --sub-langs fr --sub-format vtt"
alias yt='googler "site:youtube.com"'

#https://unix.stackexchange.com/a/119650 all in /dev/null
alias open="xdg-open > /dev/null 2>&1"
alias o="open"
alias v="vim"
#https://stackoverflow.com/a/12293994 get path of current git repo
alias findg='find $(git rev-parse --show-toplevel) -not -path "*/\.git/*"' 

PATH=$PATH:~/bin:~/.local/bin:~/git-source/me+/projects+/mySCRIPTS.git

# EXPORT
export VISUAL=vim
export EDITOR="$VISUAL"

#Function
loopargs(){
  for i in $@ ;do o $i ;done
}

alias formmd="sed -E '/^$/!s/([0-9a-zA-Z[:punct:]]+)( )?$/\1  /'"
