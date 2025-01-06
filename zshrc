# alias section
alias ls="ls --color"
alias la="ls --color -agh"
alias ..="cd .."
alias tmux a="tmux attach"

alias python="python3"
alias pip="pip3"

alias vim="nvim"

alias exitcode="echo $?"

alias clean_rust="find . -name Cargo.toml -execdir cargo clean \;"

# end alias section

eval "$(starship init zsh)"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'

# prompt section
# function git_branch_name() {
#   local branch=$(git symbolic-ref --short HEAD 2>/dev/null)
#   local git_status=$(git status --porcelain 2>/dev/null)
#   local change_count=$(echo "$git_status" | wc -l | awk '{print ($1 == 0) ? "" : "±"$1}')
#
#   if [[ -n "$branch" ]]; then
#     local color="yellow"
#     if [[ -n "$git_status" ]]; then
#       echo '%F{blue}git:(%f%F{'$color'}'$branch'%f%F{blue}) '$change_count'%f'
#     else 
#       echo '%F{blue}git:(%f%F{'$color'}'$branch'%f%F{blue}) %f'
#     fi
#   else
#     echo ''
#   fi
# }
#
# autoload -Uz add-zle-hook-widget
# function command_not_found_highlight() {
#   local cmd=${BUFFER%% *}
#   if ! command -v $cmd >/dev/null 2>&1; then
#       region_highlight=("0 $(( ${#cmd} )) fg=red,bold")
#   else
#       region_highlight=("0 $(( ${#cmd} )) fg=green,bold")
#   fi
# }
# add-zle-hook-widget line-pre-redraw command_not_found_highlight
#
# setopt prompt_subst
#
# prompt='%F{magenta}%~%f $(git_branch_name)'$'\n''%F{blue}-> %f'
#end of prompt section
