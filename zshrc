if [[ ! -d /usr/local/opt/zplug ]];then
  brew install zplug
  export ZPLUG_HOME=/usr/local/opt/zplug
  source $ZPLUG_HOME/init.zsh
  zplug install
fi

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "lib/completion", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/ruby", from:oh-my-zsh
zplug "plugins/github", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load

# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:/opt/bin:/opt/local/bin:/usr/sbin:$PATH"

export PROJECT_HOME=$HOME/Devel

source ~/.zsh/config
source ~/.zsh/aliases
source ~/.zsh/less.zsh
source $HOME/Library/Python/2.7/bin/virtualenvwrapper.sh

# FOR SPACESHIP
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  git
  node
  ruby
  venv
  pyenv
)
# FOR SPACESHIP

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

source /usr/local/opt/asdf/asdf.sh
