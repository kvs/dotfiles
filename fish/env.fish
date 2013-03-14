# env(1) in fish

function env
	# Display current env
	if test (count $argv) = 0
		set -x
	else
		# Check for '-i'
		switch $argv[1]
		case '-i'
			# FIXME: clean environment. Problem is, erasing them might also
			# erase universal ones, which would be baad.

			set -e argv[1]
		end

		# Find variables, and export them
		set -l i 0
		for arg in $argv
			echo $arg | sed 's/=/ /' | read key value
			if test -z $value
				break
			end

			set -x $key $value
			set i (math $i + 1)
		end

		# Remove variables from command line
		if test $i -gt 0
			set -e argv[(seq $i)]
		end

		# Check if command exists (can also be a function)
		type -t $argv[1] >/dev/null

		# Run command if found, or else error out
		if test $status -eq 0
			eval $argv
		else
			echo "env: $argv[1]: No such file or directory"
			return 127
		end
	end
end
