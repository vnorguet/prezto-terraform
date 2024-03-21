#
# Provides terraform aliases and functions.
#
# Authors:
#   Vincent Norguet <vincent.norguet@gmail.com>
#

# Return if requirements are not found.
if (( ! $+commands[terraform] )); then
  return 1
fi

# Load dependencies.
pmodload 'helper'

# Source module files.
source "${0:h}/alias.zsh"

autoload -U +X bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -o nospace -C /usr/bin/env terraform
