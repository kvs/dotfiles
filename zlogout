# Kill ssh-agent(1) if this was the last zsh-process for this user.
if [[ $(pgrep -a -U $USER zsh | wc -l) -eq 1 ]]; then
	[[ -n ${SSH_AGENT_PID} ]] && ssh-agent -k #>/dev/null
fi
