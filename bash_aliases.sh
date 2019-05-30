#################
# HANDY ALIASES #
#################
alias sbp='source ~/.bash_profile'

alias cl='clear'
alias hs='history'
alias hsg='history | grep --color=auto'

alias ls='ls -GF'
alias lsa='ls -alhGF | grep "^d" \
&& echo && ls -alhGF | grep "^-" \
&& echo && ls -alhGF | grep "^l"'
# alias lsns='ls -al node_modules/@storefront'

alias mkdir='mkdir -pv'

# alias sf='cd ~/Workspace/StoreFront/storefront-lib'
# alias sfp='cd ~/Workspace/StoreFront/storefront-presets'
# alias sfdc='cd ~/Workspace/documentation/src/main/webapp/WEB-INF/jsp/storefront/productv1.x.x'

alias gb='git branch'
alias gc='git checkout'
alias gd='git diff'
alias gds='git diff --stat'
alias gdu='git diff -U0'
alias gg='git grep'
alias gl='git log'
alias glo='git log --oneline'
alias gls='git log --stat'
alias glu='git log -U0'
alias gs='git show'
alias gsu='git show -U0'
alias gst='git status'

alias jdp='jq .dependencies package.json'
alias jsp='jq .scripts package.json'

alias sub='sublime .'

alias wifi='ping 8.8.8.8'

alias y='yarn'
