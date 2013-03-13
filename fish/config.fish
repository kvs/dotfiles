set -x PATH /usr/local/bin /usr/local/sbin $HOME/bin $PATH

. ~/.config/fish/aliases.fish
. ~/.config/fish/prompt.fish
. ~/.config/fish/complete-knife.fish
. ~/.config/fish/solarize.fish
#. ~/.config/fish/fish-watch.fish
. ~/.config/fish/rubies.fish
. ~/.config/fish/gnupg.fish

set -e fish_greeting

# External tool options
set -x LC_ALL en_US.UTF-8
set -x EDITOR 'subl -w'
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '1;36'
set -x LESS='-R'
