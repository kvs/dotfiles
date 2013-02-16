function __fish_knife_needs_command
	set cmd (commandline -opc)
	if [ (count $cmd) -eq 1 -a $cmd[1] = 'knife' ]
		return 0
	end
	return 1
end

function __fish_knife_using_command
	set cmd (commandline -opc)

	if [ (count $argv) -ne (math (count $cmd) - 1) ]
		return 1
	end

	return (contains_seq $argv -- $cmd)
end

function __fish_knife_blocks
	ls ~/.chef/knife-*.rb | xargs -Ix basename x .rb | cut -d - -f 2-
end

complete -f -c knife -n '__fish_knife_needs_command' -a 'block' -d 'Knifeblock commands'
complete -f -c knife -n '__fish_knife_using_command block' -a 'list use new'
complete -f -c knife -n '__fish_knife_using_command block use' -a '(__fish_knife_blocks)'

complete -f -c knife -n '__fish_knife_needs_command' -a 'client' -d 'Client commands'
complete -f -c knife -n '__fish_knife_using_command client' -a 'bulk create delete edit list reregister show'
complete -f -c knife -n '__fish_knife_using_command client bulk' -a 'delete'
complete -f -c knife -n '__fish_knife_using_command client bulk delete' # regex (options)
complete -f -c knife -n '__fish_knife_using_command client create' # client (options)
complete -f -c knife -n '__fish_knife_using_command client delete' # client (options)
complete -f -c knife -n '__fish_knife_using_command client edit' # client (options)
complete -f -c knife -n '__fish_knife_using_command client list' # (options)
complete -f -c knife -n '__fish_knife_using_command client reregister' # client (options)
complete -f -c knife -n '__fish_knife_using_command client show' # client (options)
