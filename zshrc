. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/prompt

[[ -f ~/.perlbrew/etc/bashrc ]] && . ~/.perlbrew/etc/bashrc
[[ -d /usr/local/lib/node_modules ]] && export NODE_PATH=/usr/local/lib/node_modules:$NODE_PATH

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
