# This is my personal .zshrc. I have taken most of the prompt setup
# from the http://peepcode.com page on zsh prompt and just tweaked
# it all a bit to use the colors I want and to make it work relative
# to my .zsh directory setup.

# Prompt
local smiley="%(?,%{$fg[green]%}☺%{$reset_color%},%{$fg[red]%}☹%{$reset_color%})"

PROMPT='
%~
${smiley}  %{$reset_color%}'

RPROMPT='%{$fg[white]%} $(~/.rvm/bin/rvm-prompt)$(~/.zsh/bin/git-cwd-info.rb)%{$reset_color%}'

# Set the term to xterm at 16 colors rather than the xterm-256color mode
# which tells it to use 256 colors. It is important that terminal themes
# intended for 16 colors are used in 16 color mode and themes intended
# for 256 colors are used in 256 color mode. Otherwise, the colors won't
# look correct. This also goes for Vim color schemes.
#
# Currently I have this set to xterm in 16 color mode as I have chosen
# to use the ir_black terminal theme and ir_black vim theme which are
# both intended for 16 color mode.
export TERM=xterm-256color

# Environment
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

# Enable vi's normal mode for editing the command line after you hit escape.
set -o vi

# This is necessary for the Ctrl-s keyboard shortcut to make it through to Vim
stty -ixon

# RVM
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

# Colors
autoload -U colors
colors
setopt prompt_subst
# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

# Alias clear
alias c="clear"
alias ls="ls -G"

# Git aliases
alias g="git"

# Bundle aliases
alias be='bundle exec'
alias bec='be cucumber'
alias ber='be rspec --color'
alias beg='be guard'

# Tmux session aliases.
alias rpp_web_app='~/.tmux/rpp_web_app.sh'
alias cyph='~/.tmux/cyph.sh'
alias octopusci='~/.tmux/octopusci.sh'
alias octopusci-head='~/.tmux/octopusci-head.sh'
alias ustackit='~/.tmux/ustackit.sh'
alias thrift_jms_map_json='~/.tmux/thrift_jms_map_json.sh'
alias rlapi_ruby='~/.tmux/rlapi_ruby.sh'
alias replywise_reachlocal_event_consumer='~/.tmux/replywise_reachlocal_event_consumer.sh'
alias wrap_in_module='~/.tmux/wrap_in_module.sh'

# My default editor settings
export EDITOR="vim"
