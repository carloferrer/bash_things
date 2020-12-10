#################
# HANDY ALIASES #
#################
alias sbp='source ~/.bash_profile'

alias cl='clear'
alias hs='history'
alias hsg='history | grep --color=auto'

alias ls='ls -GF'
alias lsa='ls -alhGF'
# alias lsa='ls -alhGF | grep "^d" \
# && echo && ls -alhGF | grep "^-" \
# && echo && ls -alhGF | grep "^l"'

alias mkdir='mkdir -pv'
alias mrc='make rails c'

alias g='git'
alias gb='git branch'
alias gc='git checkout'
alias gcm='git checkout master'
alias gd='git diff'
alias gds='git diff --stat'
alias gdu='git diff -U0'
alias gg='git grep'
alias ggf='git grep --files-with-matches'
alias gl='git log'
alias glo='git log --oneline'
alias gls='git log --stat'
alias glu='git log -U0'
alias gs='git show'
alias gsu='git show -U0'
alias gst='git status'
alias gap='git add -p'

alias jdp='jq .dependencies package.json'
alias jsp='jq .scripts package.json'

alias m='make'
alias mc='make cucumber'
alias mr='make rspec'
alias cop='make rubocop -- -a'
alias mst='make ssh-test'

alias sub='sublime .'

alias v='vim'
alias va='vim ~/workspace/bash_things/bash_aliases.sh'
alias vr='vim ~/.vimrc'
alias vs='vim ~/workspace/bash_things/bash_scripts.sh'

alias wifi='ping 8.8.8.8'

alias y='yarn'
alias yd='yarn dev'
alias ypf='yarn prettifile'
alias ys='yarn storybook'
alias yt='yarn test'
alias ytd='yarn test-debug'
alias ytw='yarn test --watch'

alias was='wave app:start'
alias cdw='cd ~/wave/src'
alias cdwn='cd ~/wave/src/next-wave'
alias s='wave app:start'

alias cpt='cp -r ~/wave/src/payroll/file_storage/test/tax_forms ~/Documents/TicketStuffs/'

alias fixmyshit='rm -rfv node_modules && nvm use && yarn'
