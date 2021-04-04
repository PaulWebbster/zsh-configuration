#!/bin/bash

set -e

# Track if $ZSH was provided
custom_zsh=${ZSH:+yes}

# Default settings
REPO=${REPO:-PaulWebbster/zsh-configuration}
REMOTE=${REMOTE:-https://github.com/${REPO}.git}
BRANCH=${BRANCH:-master}

setup_color() {
	# Only use colors if connected to a terminal
	if [ -t 1 ]; then
		RED=$(printf '\033[31m')
		GREEN=$(printf '\033[32m')
		YELLOW=$(printf '\033[33m')
		BLUE=$(printf '\033[34m')
		BOLD=$(printf '\033[1m')
		RESET=$(printf '\033[m')
	else
		RED=""
		GREEN=""
		YELLOW=""
		BLUE=""
		BOLD=""
		RESET=""
	fi
}

zshrc_setup() {


}

main() {
    setup_color
    printf %s "$RED"
    cat <<'EOF'

 ███▄ ▄███▓▓██   ██▓                                                         
▓██▒▀█▀ ██▒ ▒██  ██▒                                                         
▓██    ▓██░  ▒██ ██░                                                         
▒██    ▒██   ░ ▐██▓░                                                         
▒██▒   ░██▒  ░ ██▒▓░                                                         
░ ▒░   ░  ░   ██▒▒▒                                                          
░  ░      ░ ▓██ ░▒░                                                          
░      ░    ▒ ▒ ░░                                                           
       ░    ░ ░                                                              
            ░ ░                                                              
▒███████▒  ██████  ██░ ██     ▄████▄   ▒█████   ███▄    █   █████▒██▓  ▄████ 
▒ ▒ ▒ ▄▀░▒██    ▒ ▓██░ ██▒   ▒██▀ ▀█  ▒██▒  ██▒ ██ ▀█   █ ▓██   ▒▓██▒ ██▒ ▀█▒
░ ▒ ▄▀▒░ ░ ▓██▄   ▒██▀▀██░   ▒▓█    ▄ ▒██░  ██▒▓██  ▀█ ██▒▒████ ░▒██▒▒██░▄▄▄░
  ▄▀▒   ░  ▒   ██▒░▓█ ░██    ▒▓▓▄ ▄██▒▒██   ██░▓██▒  ▐▌██▒░▓█▒  ░░██░░▓█  ██▓
▒███████▒▒██████▒▒░▓█▒░██▓   ▒ ▓███▀ ░░ ████▓▒░▒██░   ▓██░░▒█░   ░██░░▒▓███▀▒
░▒▒ ▓░▒░▒▒ ▒▓▒ ▒ ░ ▒ ░░▒░▒   ░ ░▒ ▒  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒  ▒ ░   ░▓   ░▒   ▒ 
░░▒ ▒ ░ ▒░ ░▒  ░ ░ ▒ ░▒░ ░     ░  ▒     ░ ▒ ▒░ ░ ░░   ░ ▒░ ░      ▒ ░  ░   ░ 
░ ░ ░ ░ ░░  ░  ░   ░  ░░ ░   ░        ░ ░ ░ ▒     ░   ░ ░  ░ ░    ▒ ░░ ░   ░ 
  ░ ░          ░   ░  ░  ░   ░ ░          ░ ░           ░         ░        ░ 
░                            ░                                            
                                                            ...is now applied!

EOF
}
    print %s "$RESET"
main
