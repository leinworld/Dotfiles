# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lein/.zshrc'

autoload -Uz compinit && compinit
autoload -U colors && colors
# End of lines added by compinstall
alias ls='ls --color'
alias vi='vim'

ARROW=$'\ue0b0'

###
# ADD GIT INFO TO PROMPT
###
parse_git_branch() {
  local branch=""
  branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
  local git_status=$(git status --porcelain 2>/dev/null)
  local color=green
  if echo "$git_status" | grep -q "^ M"; then
    color=yellow
    branch="${branch}*"
  fi
  if echo "$git_status" | grep -qE "^ A|^\?\?"; then
    color=yellow
    branch="${branch}+"
  fi
  if echo "$git_status" | grep -q "^ D"; then
    color=yellow
    branch="${branch}-"
  fi

  if [[ -n "$branch" ]]; then
    branch=[%F{${color}}${branch}%F{reset}]
  fi
  echo "$branch"
}
update_prompt() {
    PS1="%n@%m
%K{green}%1~ $(parse_git_branch)%k%K{blue}%F{green}${ARROW}%f%F{white} %#%f%k%F{blue}${ARROW}%f "
}
precmd_functions+=(update_prompt)
update_prompt

