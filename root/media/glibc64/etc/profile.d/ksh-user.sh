#!/bin/sh

# Place this file in /etc/profile.d
[ "$(id -u)" = "1000" ] && [ "${0##*/}" = "-su" ] || return 0

# Add local bin dirs to path
PATH="$HOME/bin:$HOME/opt/bin:$PATH"

# Set XDG variables
XDG_CACHE_HOME="$HOME/tmp/cache"
XDG_CONFIG_HOME="$HOME/cfg"
XDG_DATA_HOME="$HOME/data"

# KSH specific variables
ENV="$XDG_CONFIG_HOME/loksh/rc"
HISTCONTROL="ignoredups:ignorespace"
HISTFILE="$XDG_CACHE_HOME/loksh_history"
HISTSIZE=1000000

# Prevent $HOME pollution
GNUPGHOME="$XDG_DATA_HOME/gnupg"
GRIPHOME="$XDG_CONFIG_HOME/grip"
LESSHISTFILE="$XDG_CACHE_HOME/less_history"
PASSWORD_STORE_DIR="$HOME/doc/.pws"
XAUTHORITY="$XDG_CACHE_HOME/.Xauthority"

# Set default commands
EDITOR="kak"
PAGER="less"
VISUAL="kak"

# Export all the variables
export EDITOR ENV \
       GNUPGHOME GRIPHOME \
       HISTCONTROL HISTFILE HISTSIZE \
       LESSHISTFILE \
       PAGER PASSWORD_STORE_DIR PATH \
       VISUAL \
       XAUTHORITY XDG_CACHE_HOME XDG_CONFIG_HOME XDG_DATA_HOME
