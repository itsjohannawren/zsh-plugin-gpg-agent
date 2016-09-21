#!/bin/bash

if [ -f "${HOME}/.gpg-agent-info" ]; then
	#shellcheck disable=1090
	source "${HOME}/.gpg-agent-info"
	export GPG_AGENT_INFO
	export SSH_AUTH_SOCK
fi

GPG_TTY="$(tty)"
export GPG_TTY
