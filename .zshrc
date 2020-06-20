export ORANGE='\033[0;36m'
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export LTBLUE='\033[1;34m'
export MAGENTA='\033[0;35m'
export CYAN='\033[0;36m'
export NC='\033[0m'

# Path to your oh-my-zsh installation.
export ZSH="/home/pi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL=" ➜ "
SPACESHIP_CHAR_PREFIX="\ue709"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Which plugins would you like to load?
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

function update-all() {
  (sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y)
}

function install() {
  (sudo apt install -y $*)
}

bindkey '[C' forward-word
