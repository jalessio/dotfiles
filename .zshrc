# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="jalessio"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# Turn off zsh's annoying autocorrect
unsetopt correct_all

# Customize to your needs...
export PATH=~/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/usr/X11/bin

# FLEX 4.1 for SNAP/TPHONE-FLEX
export PATH=$PATH:/opt/boxen/homebrew/Cellar/flex_sdk-4.1/sdk/libexec/bin
export FLEX_HOME=/opt/boxen/homebrew/Cellar/flex_sdk-4.1/sdk/libexec
mkdir -p ~/.ant/lib
if [ ! -e ~/.ant/lib/flexTasks.jar ]; then
  ln -sf /opt/boxen/homebrew/Cellar/flex_sdk-4.1/sdk/libexec/ant/lib/flexTasks.jar ~/.ant/lib
fi

# FLEX 4.5 for SNAP/FLASH-UTILS
# export PATH=$PATH:/usr/local/Cellar/flex_sdk-4.5/4.5.1.21328/libexec/bin
# export FLEX_HOME=/usr/local/Cellar/flex_sdk-4.5/4.5.1.21328/libexec
# mkdir -p ~/.ant/lib
# if [ ! -e ~/.ant/lib/flexTasks.jar ]; then
#   ln -s /usr/local/Cellar/flex_sdk-4.5/4.5.1.21328/libexec/ant/lib/flexTasks.jar ~/.ant/lib
# fi

# FLEX 4.6 for ????
# export PATH=$PATH:/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec/bin
# export FLEX_HOME=/usr/local/Cellar/flex_sdk/4.6.0.23201/libexec
# mkdir -p ~/.ant/lib
# if [ ! -e ~/.ant/lib/flexTasks.jar ]; then
#   ln -s /usr/local/Cellar/flex_sdk/4.6.0.23201/libexec/ant/lib/flexTasks.jar ~/.ant/lib
# fi


# From http://steveswinsburg.wordpress.com/2011/07/22/java_home-on-os-x-lion/
# export JAVA_HOME=$(/usr/libexec/java_home)

function mountAndroid { hdiutil attach ~/android.dmg.sparseimage -mountpoint /Volumes/android; }


[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
