#!/usr/bin/env bash

set -eu

echo
echo "Configuring Terminal Emulator (GNOME Terminal)"
echo "= = ="
echo

configureInputRC() {
	ln -svf $PWD/terminal/inputrc ~/.inputrc
}

configureGNOMETerminal() {
	dconf reset -f /org/gnome/terminal/

	dconf load /org/gnome/terminal/ < $PWD/terminal/terminal.dconf
}

configureTmux() {
  tmux_conf=$PWD/terminal/tmux.conf

	ln -svf $PWD/terminal/tmux.conf ~/.tmux.conf
}

configureInputRC
configureGNOMETerminal
configureTmux
