# Configuration

# Root Directory
function get_root() {
  echo "$ZSH/custom/themes/kyukishi"
}

# Icons
builtin source $(get_root)/src/icons.zsh

function get_config() {
# If you don't know what these values mean you should leave them as they are!

  # Left Prompt
  local prompt_left='<username><path><git>'
  local prompt_left_background='$BG[237]'
  local prompt_left_seperator='  '
  local prompt_left_seperator_color='$FG[245]'
  local prompt_left_before=" $(get_icon FREEBSD_ICON) "
  # local prompt_left_before_color=
  local prompt_left_after=''
  local prompt_left_after_color='%b$FG[235]'

  # Right Prompt
  local prompt_right='<success>'

  # Username
  local username_user_color="$FG[169]"
  local username_host_show=false
  # local username_host_color=
  # local username_seperator='@'
  # local username_seperator_color=
  # local username_before=
  # local username_before_color=
  local username_after=''
  local username_after_color=' $BG[235]$FG[237]'

  # Path
  local path_color='$BG[235]$FG[117]'
  # local path_icon_home= # unimplemented
  # local path_icon_root= # unimplemented
  local path_icon_default="$(get_icon FOLDER_ICON) "
  local path_before=' '
  # local path_before_color=
  local path_after=' '
  # local path_after_color=

  # Git
  # local git_color=
  local git_prefix="$(get_icon VCS_GIT_ICON)("
  local git_suffix=')'
  local git_dirty='*'
  local git_clean=''
  local git_before=" "
  local git_before_color='$FG[237]'
  local git_after=' '
  # local git_after_color=

  # Multiline
  local multiline=true
  # local multiline_first_prefix=
  # local multiline_first_prefix_color=
  local multiline_last_prefix=" $(get_icon MULTILINE_LAST_PROMPT_PREFIX)"
  local multiline_last_prefix_color='$FG[240]'

  # Prefix
  local prefix='\$  '
  local prefix_color="$FG[240]$(get_icon RULER_CHAR)$FG[169]"

  eval "local value=\"\${$1}\""
  echo "$value"
}

# Load the main script
builtin source $(get_root)/src/kyukishi.zsh
