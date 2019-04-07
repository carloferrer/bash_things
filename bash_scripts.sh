#################
# HANDY SCRIPTS #
#################
mcd() { mkdir -pv "$@" ; cd "$@" ; }

# Git branch stuff.
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/' ; }

gpu() { git push -u origin $(parse_git_branch) ; }

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

# jira() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://groupby.atlassian.net/browse/$1" ; }
# sfpr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/pull/$1" ; }
# sfbr() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://github.com/groupby/storefront/tree/$1" ; }
# thsrs() { /usr/bin/open -a "/Applications/Google Chrome.app" "https://www.thesaurus.com/browse/$1" ; }

# ylsf() { yarn link @storefront/$1 ; }
# yusf() { yarn unlink @storefront/$1 ; }
# yd() { (cd ~/Workspace/StoreFront/storefront-lib/packages/@storefront/$1 && yarn dev ;) ; }
# yt() { (cd ~/Workspace/StoreFront/storefront-lib/packages/@storefront/$1 && yarn tdd ;) ; }
