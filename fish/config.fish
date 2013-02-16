. ~/.config/fish/aliases.fish
. ~/.config/fish/prompt.fish
. ~/.config/fish/complete-knife.fish
. ~/.config/fish/solarize.fish

set -e fish_greeting

# Path
set -x PATH /usr/local/bin /usr/local/sbin $HOME/bin $PATH /usr/local/lib/ruby/gems/1.9.1/bin

# External tool options
set -x LC_ALL en_US.UTF-8
set -x EDITOR 'subl -w'
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '1;36'
set -x LESS='-R'
