#################
# HANDY COLOURS #
#################
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Git branch stuff.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

# I should probably define variables to make this human-readable.
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[35m\]\$(parse_git_branch)\[\033[m\]\n\$ "
