#
# INSTRUCTIONS
#
#  With either a manual or brew installed chruby things should just work.
#
#  If you'd prefer to specify an explicit path to load chruby from
#  you can set variables like so:
#
#    zstyle :omz:plugins:chruby path /local/path/to/chruby.sh
#    zstyle :omz:plugins:chruby auto /local/path/to/auto.sh
#
# TODO
#  - autodetermine correct source path on non OS X systems
#  - completion if ruby-install exists

# rvm and rbenv plugins also provide this alias
alias rubies='chruby'

local _chruby_path
local _chruby_auto

_homebrew-installed() {
    whence brew &> /dev/null
}

_chruby-from-homebrew-installed() {
  [ -r $(brew --prefix chruby)] &> /dev/null
}

_ruby-build_installed() {
    whence ruby-build &> /dev/null
}

_ruby-install-installed() {
    whence ruby-install &> /dev/null
}

# Simple definition completer for ruby-build
if _ruby-build_installed; then
    _ruby-build() { compadd $(ruby-build --definitions) }
    compdef _ruby-build ruby-build
fi

_source_churby_from_omz_settings() {
    zstyle -s :omz:plugins:chruby path _chruby_path
    if ${_chruby_path} && [[ -r ${_chruby_path} ]]; then
        source ${_chruby_path}
    fi
}

_source_auto_from_omz_settings() {
    zstyle -s :omz:plugins:chruby auto _chruby_auto
    if ${_chruby_auto} && [[ -r ${_chruby_auto} ]]; then
        source ${_chruby_auto}
    fi
}

_source_chruby(){
    if _homebrew-installed && _chruby-from-homebrew-installed ; then
        source $(brew --prefix chruby)/share/chruby/chruby.sh
    elif [[ -r "/usr/local/share/chruby/chruby.sh" ]] ; then
        source /usr/local/share/chruby/chruby.sh
    else
        _source_chruby_from_omz_settings
    fi
}

_source_auto(){
  if _homebrew-installed && _chruby-from-homebrew-installed ; then
      source $(brew --prefix chruby)/share/chruby/auto.sh
  elif [[ -r "/usr/local/share/chruby/chruby.sh" ]] ; then
      source /usr/local/share/chruby/auto.sh
  else
      _source_auto_from_omz_settings
  fi
}

_chruby_dirs() {
    chrubydirs=($HOME/.rubies/ $PREFIX/opt/rubies)
    for dir in chrubydirs; do
        if [[ -d $dir ]]; then
            RUBIES+=$dir
        fi
    done
}

_source_chruby
if [[ -z $MANUAL_CHRUBY ]]; then
    _source_auto
fi
_chruby_dirs

function ensure_chruby() {
    $(whence chruby)
}

function current_ruby() {
    local _ruby
    _ruby="$(chruby |grep \* |tr -d '* ')"
    if [[ $(chruby |grep -c \*) -eq 1 ]]; then
        echo ${_ruby}
    else
        echo "system"
    fi
}

function chruby_prompt_info() {
    echo "$(current_ruby)"
}

# complete on installed rubies
_chruby() { compadd $(chruby | tr -d '* ') }
compdef _chruby chruby
