. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion
. ~/.zsh/prompt
[[ -f ~/.perlbrew/etc/bashrc ]] && . ~/.perlbrew/etc/bashrc

[[ -n $(/usr/bin/which rbenv) ]] && eval "$(rbenv init -)"

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc
