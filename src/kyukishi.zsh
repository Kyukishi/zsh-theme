function get_username() {
  if [ $(get_config username_host_show) = true ]
  then
    local hostname="\
%{$(get_config username_seperator_color)%}$(get_config username_seperator)%{%f%}\
%{$(get_config username_host_color)%}$HOST%{%f%}\
"
  fi

  echo "\
%{$(get_config username_before_color)%}$(get_config username_before)%{%f%}\
%{$(get_config username_user_color)%}$USER%{%f%}$hostname\
%{$(get_config username_after_color)%}$(get_config username_after)%{%f%}\
"
}

function get_path() {
  local icon="$(get_config path_icon_default)"

  echo "\
%{$(get_config path_before_color)%}$(get_config path_before)%{%f%}\
%{$(get_config path_color)%}$icon%~%{%f%}\
%{$(get_config path_after_color)%}$(get_config path_after)%{%f%}\
"
}

function get_success() {
  echo '%(?.✔.%{$fg[red]%}✘%f)'
}

function get_git() {
  echo '$(git_prompt_info)'
}

function get_prefix() {
  if [ $(get_config multiline) = true ]
  then
    local multiline_last_prefix="%{$(get_config multiline_last_prefix_color)%}$(get_config multiline_last_prefix)%{%f%}"
  fi

  echo "$multiline_last_prefix%{$(get_config prefix_color)%}$(get_config prefix)%{%f%}"
}

function get_seperator_left() {
  echo "%{$(get_config prompt_left_seperator_color)%}$(get_config prompt_left_seperator)%{$(get_config prompt_left_background)%}%{%f%}"
}

function get_prompt() {
  local value="${@:1}"

  value="${value//<username>/$(get_username)}"
  value="${value//<sep>/$(get_seperator_left)}"
  value="${value//<seperator>/$(get_seperator_left)}"
  value="${value//<path>/$(get_path)}"
  value="${value//<success>/$(get_success)}"
  value="${value//<git>/$(get_git)}"

  echo "$value"
}

function get_prompt_left() {
  if [ $(get_config multiline) = true ]
  then
    local multiline_first_prefix="%{$(get_config multiline_first_prefix_color)%}$(get_config multiline_first_prefix)%{%f%}"
    local multiline_break='\n'
  fi

  echo "\
$multiline_first_prefix\
%{$(get_config prompt_left_background)%}\
%{$(get_config prompt_left_before_color)%}$(get_config prompt_left_before)%{%f%}\
%{$(get_config prompt_left_background)%}\
$(get_prompt $(get_config prompt_left))\
%{$(get_config prompt_left_background)%}\
%{$(get_config prompt_left_after_color)%}$(get_config prompt_left_after)%{%f%}\
%{%b%}\
$multiline_break$(get_prefix)%{$reset_color%}"
}

function get_prompt_right() {
  echo "$(get_prompt $(get_config prompt_right))"
}

local prompt_left="$(get_prompt_left)"
local prompt_left_short="%{$(get_config prefix_color)%}$(get_config prefix)%{$reset_color%}"
local prompt_right="$(get_prompt_right)"

set-long-prompt() {
  PROMPT="$prompt_left"
  RPROMPT="$prompt_right"
}
precmd_functions=(set-long-prompt)

set-short-prompt() {
  RPROMPT=''
  if [[ $PROMPT != "$prompt_left_short" ]]; then
    PROMPT="$prompt_left_short"
    zle .reset-prompt
  fi
}

zle-line-finish() {
  set-short-prompt
}
zle -N zle-line-finish

trap 'set-short-prompt; return 130' INT

# Cleanup
unfunction get_root
unfunction get_config
unfunction get_icon

unfunction get_username
unfunction get_prefix
unfunction get_prompt
unfunction get_prompt_left
unfunction get_prompt_right
unfunction get_path
unfunction get_success
unfunction get_git
unfunction get_seperator_left
