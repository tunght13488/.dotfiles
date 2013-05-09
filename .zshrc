# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="prose"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
# laravel bundle builder
alias bob="php artisan bob::build"
# apache
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
# mysql
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
# nginx
alias nginx_start='sudo launchctl load -w /Library/LaunchDaemons/org.macports.nginx.plist'
alias nginx_stop='sudo launchctl unload -w /Library/LaunchDaemons/org.macports.nginx.plist'
alias nginx_restart='nginx_stop; nginx_start;'
# php-fpm
alias fpm_start='sudo launchctl load -w /Library/LaunchDaemons/org.macports.php54-fpm.plist'
alias fpm_stop='sudo launchctl unload -w /Library/LaunchDaemons/org.macports.php54-fpm.plist'
alias fpm_restart='fpm_stop; fpm_start'
# ftp
alias ftp_start='sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist'
alias ftp_stop='sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist'
# vim
# alias vim='/opt/local/bin/vim'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(battery gem git laravel macports node npm osx sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PNG_DIR=/usr/local
export EDITOR=/usr/bin/vim
export MP_EDITOR=/Users/rocco/bin/subl2
export LANG=en_US.utf8
export LC_ALL=C
export JAVA_HOME=$(/usr/libexec/java_home)

# source ~/.git-flow-completion.zsh

# [[ -s /Users/rocco/.nvm/nvm.sh ]] && . /Users/rocco/.nvm/nvm.sh # This loads NVM

set -o vi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey ^r  history-incremental-search-backward
setopt hist_ignore_all_dups