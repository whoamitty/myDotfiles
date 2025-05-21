#tmux rename-session -t 0 perso
#tmux rename-window -t 0 'work'
#tmux resize-pane  -D 5

init(){
    plan="whoamitty_plan_2024.md"
    
    echo init
    
    tmux new -d -s perso -n work
    
    tmux neww -n div -c /home/unix-tty/git-source/mygit+/myCODE+/
    tmux splitw -v -c /home/unix-tty/Music
    tmux resize-pane -D -y 1 
    
    tmux new  -s organisation -n main -c "/home/unix-tty/git-source/mygit+/plan.git/" # "vim $plan"
    
    # tmux switch-client -t perso:work
    # tmux a -t organisation
    

}


rm /home/unix-tty/.local/share/tmux/resurrect/*

init

# ~/.tmux/plugins/tmux-resurrect/scripts
# dans helper.sh l'info est au tout debut pour récupe le chemin vers les sauvegardes
# "${XDG_DATA_HOME:-$HOME/.local/share}"/tmux/resurrect
# /home/unix-tty/.local/share/tmux/resurrect
#
