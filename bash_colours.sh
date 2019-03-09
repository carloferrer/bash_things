source ./bash_scripts.sh

#################
# HANDY COLOURS #
#################
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# I should probably define variables to make this human-readable.
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[35m\]\$(parse_git_branch)\[\033[m\]\n\$ "
