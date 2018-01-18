# env(1) in fish
#
# '-i' option not supported

function env
	# Find variables, and export them
	for arg in $argv
		set -l env_var (string split -m 1 = $arg)
		if test (count $env_var) = 2
			set -x $env_var[1] $env_var[2]
			set -e argv[1]
		else
		  break
		end
	end

	# If no command is given, just display the env
	if test (count $argv) = 0
		set -x
	else
		# Check if command exists (can also be a function)
		type -qt $argv[1]

		# Run command if found, or else error out
		if test $status -eq 0
			# FIXME: break if $argv contains a ';'
			eval $argv
		else
			echo "env: $argv[1]: No such file or directory"
			return 127
		end
	end
end
