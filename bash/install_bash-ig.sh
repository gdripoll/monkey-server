#!/bin/bash
#
# https://github.com/Bash-it/bash-it
#

clear

if [ $# -eq 0 ]; then
	echo "Falta parámetro nombre del usuario."
	exit;
fi

su %1
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

echo "bash-it show aliases        # shows installed and available aliases"
echo "bash-it show completions    # shows installed and available completions"
echo "bash-it show plugins        # shows installed and available plugins"
echo "bash-it help aliases        # shows help for installed aliases"
echo "bash-it help completions    # shows help for installed completions"
echo "bash-it help plugins        # shows help for installed plugins"

