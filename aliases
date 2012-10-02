#!/bin/bash
alias aliases='vim ~/dotfiles/.aliases.bash'

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."

# Shortcuts
alias p="cd ~/Projects"
alias mk="cd ~/Documents/Marketing"
alias d="cd /Volumes/Classic\ HD/Dropbox/"
alias v="mvim ."
alias vi="vim"
alias m="mate ."
alias h="history"

# Navigation
# List all files colorized in long format, including dot files
alias l="ls -Gla"
# List only directories
alias lsd='ls -l | grep "^d"'

# Bundler
alias bi='bundle install'
alias be='bundle exec'
alias bu='bundle update'

 # Ruby On Rails
alias log="tail -f log/development.log"
alias fstart="foreman start"
alias dbm="rake db:migrate && rake db:test:prepare"
# GIT
alias gadd="git add . && git commit -a"
alias gs="git status"
alias gpull="git pull"
alias gpush="git push"
alias g="git"
alias gl="git l"
alias gbr="~/bin/gbrt"
# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias whois="whois -h whois-servers.net"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache"

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
