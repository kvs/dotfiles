. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/prompt
. ~/.perlbrew/etc/bashrc

eval "$(rbenv init -)"

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
