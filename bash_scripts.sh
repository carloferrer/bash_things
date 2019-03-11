#################
# HANDY SCRIPTS #
#################
mcd() { mkdir -pv "$@" ; cd "$@" ; }

# Git branch stuff.
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' ; }

# Move screenshot to 'here'.
sc() { mv ~/Desktop/Screen\ Shot\ * ./$1.png ; }

gpu() { git push -u origin $(parse_git_branch) ; }

jira() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://groupby.atlassian.net/browse/$1" ; }
sfpr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/pull/$1" ; }
sfbr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/tree/$1" ; }
thsrs() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://www.thesaurus.com/browse/$1" ; }

ylsf() { yarn link @storefront/$1 ; }
yusf() { yarn unlink @storefront/$1 ; }
yd() { (cd ~/Workspace/storefront/packages/@storefront/$1 && yarn dev ;) ; }
yt() { (cd ~/Workspace/storefront/packages/@storefront/$1 && yarn tdd ;) ; }
