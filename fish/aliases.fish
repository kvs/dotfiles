# Misc
function e
	subl -w $argv; end
function ee
	subl $argv; end
function hexedit
	open -a "Hex Fiend" $argv; end
function locate
	mdfind -name $argv; end
function sha256
	openssl sha -sha256 $argv; end

# Git
function gl
	git pull $argv; end
function gp
	git push $argv; end
function gd
	git diff $argv; end
function gc
	git commit $argv; end
function gca
	git commit -a $argv; end
function gco
	git checkout $argv; end
function gb
	git branch $argv; end
function gs;
	git status $argv; end

# Knife
function kbu
	knife block use $argv; end
function kns
	knife node show $argv; end
