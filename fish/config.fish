set -x PATH /usr/local/bin /usr/local/sbin $HOME/bin $PATH

. ~/.config/fish/aliases.fish
. ~/.config/fish/prompt.fish
. ~/.config/fish/complete-knife.fish
. ~/.config/fish/solarize.fish
#. ~/.config/fish/fish-watch.fish
. ~/.config/fish/rubies.fish
. ~/.config/fish/env.fish
. ~/.config/fish/gnupg.fish

set -e fish_greeting

# External tool options
set -x LC_ALL en_US.UTF-8
set -x EDITOR 'subl -w'
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '1;36'
set -x LESS='-R'

# Silly helper-function
function with-shopify-campfire-key
	set -x SHOPIFY_CAMPFIRE_KEY (cat ~/.campfire-shopify-operations)
	eval $argv
	set -e SHOPIFY_CAMPFIRE_KEY
end
