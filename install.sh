#!/bin/bash

message=${1:-"boo"}
ghost="odds=\$(( \$RANDOM % 3 )); ([ \$odds -eq 0 ] && say $message)"

shell=$(basename $SHELL)
case $shell in
"bash")
	rc=~/.bashrc
	;;
"zsh")
	rc=~/.zshrc
	;;
"fish")
	rc=~/.config/fish/config.fish
	;;
*)
	echo "Unsupported shell: $shell"
	exit 1
	;;
esac

echo "\nalias cd='$ghost || cd'" >>$rc
echo "source $rc && clear"
