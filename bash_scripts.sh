#################
# HANDY SCRIPTS #
#################

# Cat "bash_things" and grep.
cbg() { (cd ~/Workspace/bash_things && cat bash_aliases.sh && cat bash_scripts.sh) | grep --color=auto "$1" ; }

# Make and change directoy.
mcd() { mkdir -pv "$@" ; cd "$@" ; }

# Git branch stuff.
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' ; }

gpu() { git push -u origin $(parse_git_branch) ; }

# Search first argument while excluding things matching second argument.
ggv() { git grep "$1" -- `git ls-files | grep -v "$2"` ; }

# SSH into a convox rack. Accepts arguments like "scylla" or "cetus".
railsinto() { convox run web rails c --rack "$1" --app payroll ; }
shinto() { convox run web sh --rack "$1" --app payroll ; }

# Easier cloning of legacy repos.
nomod_clone() {
  git clone "git@github.com:carloferrer/$1"
  if [ -d "node_modules" ]; then
    printf "\nDirectory 'node_modules' found ... removing 'node_modules'.\n\n"
    rm -rf "node_modules"
  else
    printf "\nNo directory 'node_modules' found.\n\n"
  fi
}

# Remove file or directory from child directories.
rm_matching() {
  for d in $(ls); do
    (
      cd $d
      if [ -d "$1" ]; then
        rm -rf "$1"
      else
        rm "$1"
      fi
    )
  done
}

# onew() { /usr/bin/open -a "$(ls -t | head -n1 | awk 'echo $0')" ; }

jira() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://waveaccounting.atlassian.net/browse/PR-$1" ; }

thsrs() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://www.thesaurus.com/browse/$1" ; }

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

#################################################
# LEGACY SCRIPTS (THAT I MAY MAKE USE OF LATER) #
#################################################

# sfpr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/pull/$1" ; }
# sfbr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/tree/$1" ; }

# ylsf() { yarn link @storefront/$1 ; }
# yusf() { yarn unlink @storefront/$1 ; }
# yd() { (cd ~/Workspace/StoreFront/storefront-lib/packages/@storefront/$1 && yarn dev ;) ; }
# yt() { (cd ~/Workspace/StoreFront/storefront-lib/packages/@storefront/$1 && yarn tdd ;) ; }
