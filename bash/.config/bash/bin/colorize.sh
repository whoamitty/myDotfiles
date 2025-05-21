#!/bin/bash
# set -o xtrace
# set -o verbose

# Récupérer le nombre de lignes à coloriser depuis les arguments
n=$1

# Lire l'input depuis l'entrée standard
input=$(cat)

# Compter le nombre total de lignes
total_lines=$(printf "$input" | wc -l)

# Calculer le numéro de la première ligne à coloriser
start_line=$((total_lines - n + 1))

# Coloriser les n dernières lignes en utilisant la commande tput
#colored_input=$(printf "$input" | tail -n "$n" | awk '{print "\033[1;31;40m" $0 "\033[0m"}')
colored_input=$(printf "$input" | tail -n "$n" | awk '{print "\033[1;31m" $0 "\033[0m"}')

# Afficher les lignes non colorisées jusqu'à la première ligne à coloriser
echo "$input" | head -n "$start_line"

# Afficher les lignes colorisées
echo "$colored_input"
