# Path to your dotfiles.
export DOTFILES=$HOME/Desktop/dotfiles

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme
ZSH_THEME="spaceship"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFILES

# Load: oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Load: spaceship
source $HOME/Desktop/dotfiles/spaceship