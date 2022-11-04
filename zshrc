# Customize to your needs...
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/share/npm/bin"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:/opt/bin:/opt/local/bin:/usr/sbin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ ! -d /opt/homebrew/opt/zplug ]];then
  brew install zplug
  export ZPLUG_HOME=/usr/local/opt/zplug
  source $ZPLUG_HOME/init.zsh
  zplug install
fi

export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"

zplug "plugins/ruby", from:oh-my-zsh

zplug load

export PROJECT_HOME=$HOME/Devel

source ~/.zsh/config
source ~/.zsh/aliases
source ~/.zsh/less.zsh
source /opt/homebrew/opt/spaceship/spaceship.zsh

# FOR SPACESHIP
SPACESHIP_PROMPT_ORDER=(
  user
  dir
  git
  node
  ruby
  venv
)
# FOR SPACESHIP

# FOR zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Theme
export LSCOLORS="Gxfxcxdxbxegedabagacad"
export LS_COLORS='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=41;33;01:ex=00;32:*.cmd=00;32:*.exe=01;32:*.com=01;32:*.bat=01;32:*.btm=01;32:*.dll=01;32:*.tar=00;31:*.tbz=00;31:*.tgz=00;31:*.rpm=00;31:*.deb=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.lzma=00;31:*.zip=00;31:*.zoo=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.tb2=00;31:*.tz2=00;31:*.tbz2=00;31:*.avi=01;35:*.bmp=01;35:*.fli=01;35:*.gif=01;35:*.jpg=01;35:*.jpeg=01;35:*.mng=01;35:*.mov=01;35:*.mpg=01;35:*.pcx=01;35:*.pbm=01;35:*.pgm=01;35:*.png=01;35:*.ppm=01;35:*.tga=01;35:*.tif=01;35:*.xbm=01;35:*.xpm=01;35:*.dl=01;35:*.gl=01;35:*.wmv=01;35:*.aiff=00;32:*.au=00;32:*.mid=00;32:*.mp3=00;32:*.ogg=00;32:*.voc=00;32:*.wav=00;32:'
#

# For GCC
# export CPPFLAGS=-I/opt/X11/include
# export CC=/usr/bin/gcc
export LC_ALL="en_US.UTF-8"
# For GCC

# MySQL setup
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@5.7/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@5.7/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@5.7/lib/pkgconfig"

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
export PATH="/opt/homebrew/opt/openssl@1.1/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/openssl@1.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@1.1/include"

source /opt/homebrew/opt/asdf/libexec/asdf.sh

# For Java
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_11_HOME=$(/usr/libexec/java_home -v11)

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java11='export JAVA_HOME=$JAVA_11_HOME'

# default to Java 11
java11