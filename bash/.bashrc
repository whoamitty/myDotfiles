for path in ~/.config/bash/src/* ; do source $path ; done

#Environment variables
PS1="\n\[\033[1;32m\][\[\e]0;\u@\h:\w\a\]\u@\h:\w]\n\$ \[\033[0m\]"
HISTSIZE=10000000
PATH="$PATH:~/bin:~/.local/bin:~/git-source/me+/projects+/mySCRIPTS.git:~/.config/bash/bin"

eval "$(zoxide init --cmd cd bash)"


# EXPORT
export VISUAL=vim
export EDITOR="$VISUAL"

#Function
loopargs(){
  for i in $@ ;do o $i ;done
}

