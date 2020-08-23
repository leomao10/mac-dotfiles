# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="alanpeabody"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

DISABLE_UPDATE_PROMPT=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby github)

# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:/opt/bin:/opt/local/bin:/usr/sbin:$PATH"

export PROJECT_HOME=$HOME/Devel

source $ZSH/oh-my-zsh.sh
source ~/.zsh/config
source ~/.zsh/aliases
source ~/.zsh/less.zsh
source $HOME/Library/Python/2.7/bin/virtualenvwrapper.sh

# For GCC
# export CPPFLAGS=-I/opt/X11/include
# export CC=/usr/bin/gcc
export LC_ALL="en_US.UTF-8"
# For GCC

# MySQL setup
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/mysql@5.7/lib"
export CPPFLAGS="-I/usr/local/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/usr/local/opt/mysql@5.7/lib/pkgconfig"

# Error related to __NSPlaceholderDictionary:
# https://github.com/darkskyapp/forecast-ruby/issues/13
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

#For Cloud SDK
export CLOUD_SDK_PATH="$HOME/google-cloud-sdk"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lliang053/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lliang053/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lliang053/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lliang053/google-cloud-sdk/completion.zsh.inc'; fi
#For Cloud SDK

# For openssl setup
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

. /usr/local/opt/asdf/asdf.sh
