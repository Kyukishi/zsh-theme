function get_icon() {
  local RULER_CHAR='\u2500'
  local LEFT_SEGMENT_SEPARATOR='\uE0B0'
  local RIGHT_SEGMENT_SEPARATOR='\uE0B2'
  local LEFT_SEGMENT_END_SEPARATOR=' '
  local LEFT_SUBSEGMENT_SEPARATOR='\uE0B1'
  local RIGHT_SUBSEGMENT_SEPARATOR='\uE0B3'
  local CARRIAGE_RETURN_ICON='\u21B5'
  local ROOT_ICON='\uE614'$q
  local SUDO_ICON='\uF09C'$s
  local RUBY_ICON='\uF219 '
  local AWS_ICON='\uF270'$s
  local AWS_EB_ICON='\UF1BD'$q$q
  local BACKGROUND_JOBS_ICON='\uF013 '
  local TEST_ICON='\uF188'$s
  local TODO_ICON='\u2611'
  local BATTERY_ICON='\UF240 '
  local DISK_ICON='\uF0A0'$s
  local OK_ICON='\uF00C'$s
  local FAIL_ICON='\uF00D'
  local SYMFONY_ICON='\uE757'
  local NODE_ICON='\uE617 '
  local NODEJS_ICON='\uE617 '
  local MULTILINE_FIRST_PROMPT_PREFIX='\u256D\U2500'
  local MULTILINE_NEWLINE_PROMPT_PREFIX='\u251C\U2500'
  local MULTILINE_LAST_PROMPT_PREFIX='\u2570\U2500'
  local APPLE_ICON='\uF179'
  local WINDOWS_ICON='\uF17A'$s
  local FREEBSD_ICON='\UF30C'
  local ANDROID_ICON='\uF17B'
  local LINUX_ARCH_ICON='\uF303'
  local LINUX_CENTOS_ICON='\uF304'$s
  local LINUX_COREOS_ICON='\uF305'$s
  local LINUX_DEBIAN_ICON='\uF306'
  local LINUX_RASPBIAN_ICON='\uF315'
  local LINUX_ELEMENTARY_ICON='\uF309'$s
  local LINUX_FEDORA_ICON='\uF30a'$s
  local LINUX_GENTOO_ICON='\uF30d'$s
  local LINUX_MAGEIA_ICON='\uF310'
  local LINUX_MINT_ICON='\uF30e'$s
  local LINUX_NIXOS_ICON='\uF313'$s
  local LINUX_MANJARO_ICON='\uF312'$s
  local LINUX_DEVUAN_ICON='\uF307'$s
  local LINUX_ALPINE_ICON='\uF300'$s
  local LINUX_AOSC_ICON='\uF301'$s
  local LINUX_OPENSUSE_ICON='\uF314'$s
  local LINUX_SABAYON_ICON='\uF317'$s
  local LINUX_SLACKWARE_ICON='\uF319'$s
  local LINUX_VOID_ICON='\uF17C'
  local LINUX_ARTIX_ICON='\uF17C'
  local LINUX_UBUNTU_ICON='\uF31b'$s
  local LINUX_RHEL_ICON='\uF316'$s
  local LINUX_AMZN_ICON='\uF270'$s
  local LINUX_ICON='\uF17C'
  local SUNOS_ICON='\uF185 '
  local HOME_ICON='\uF015'$s
  local HOME_SUB_ICON='\uF07C'$s
  local FOLDER_ICON='\uF115'$s
  local ETC_ICON='\uF013'$s
  local NETWORK_ICON='\uF50D'$s
  local LOAD_ICON='\uF080 '
  local SWAP_ICON='\uF464'$s
  local RAM_ICON='\uF0E4'$s
  local SERVER_ICON='\uF0AE'$s
  local VCS_UNTRACKED_ICON='\uF059'$s
  local VCS_UNSTAGED_ICON='\uF06A'$s
  local VCS_STAGED_ICON='\uF055'$s
  local VCS_STASH_ICON='\uF01C '
  local VCS_INCOMING_CHANGES_ICON='\uF01A '
  local VCS_OUTGOING_CHANGES_ICON='\uF01B '
  local VCS_TAG_ICON='\uF02B '
  local VCS_BOOKMARK_ICON='\uF461 '
  local VCS_COMMIT_ICON='\uE729 '
  local VCS_BRANCH_ICON='\uF126 '
  local VCS_REMOTE_BRANCH_ICON='\uE728 '
  local VCS_LOADING_ICON=''
  local VCS_GIT_ICON='\uF1D3 '
  local VCS_GIT_GITHUB_ICON='\uF113 '
  local VCS_GIT_BITBUCKET_ICON='\uE703 '
  local VCS_GIT_GITLAB_ICON='\uF296 '
  local VCS_HG_ICON='\uF0C3 '
  local VCS_SVN_ICON='\uE72D'$q
  local RUST_ICON='\uE7A8'$q
  local PYTHON_ICON='\UE73C '
  local SWIFT_ICON='\uE755'
  local GO_ICON='\uE626'
  local GOLANG_ICON='\uE626'
  local PUBLIC_IP_ICON='\UF0AC'$s
  local LOCK_ICON='\UF023'
  local NORDVPN_ICON='\UF023'
  local EXECUTION_TIME_ICON='\uF252'$s
  local SSH_ICON='\uF489'$s
  local VPN_ICON='\UF023'
  local KUBERNETES_ICON='\U2388'
  local DROPBOX_ICON='\UF16B'$s
  local DATE_ICON='\uF073 '
  local TIME_ICON='\uF017 '
  local JAVA_ICON='\uE738'
  local LARAVEL_ICON='\ue73f'$q
  local RANGER_ICON='\uF00b '
  local MIDNIGHT_COMMANDER_ICON='mc'
  local VIM_ICON='\uE62B'
  local TERRAFORM_ICON='\uF1BB '
  local PROXY_ICON='\u2194'
  local DOTNET_ICON='\uE77F'
  local DOTNET_CORE_ICON='\uE77F'
  local AZURE_ICON='\uFD03'
  local DIRENV_ICON='\u25BC'
  local FLUTTER_ICON='F'
  local GCLOUD_ICON='\uF7B7'
  local LUA_ICON='\uE620'
  local PERL_ICON='\uE769'
  local NNN_ICON='nnn'
  local XPLR_ICON='xplr'
  local TIMEWARRIOR_ICON='\uF49B'
  local TASKWARRIOR_ICON='\uF4A0 '
  local NIX_SHELL_ICON='\uF313 '
  local WIFI_ICON='\uF1EB '
  local ERLANG_ICON='\uE7B1 '
  local ELIXIR_ICON='\uE62D'
  local POSTGRES_ICON='\uE76E'
  local PHP_ICON='\uE608'
  local HASKELL_ICON='\uE61F'
  local PACKAGE_ICON='\uF8D6'
  local JULIA_ICON='\uE624'
  local SCALA_ICON='\uE737'
  local TOOLBOX_ICON='\uE20F'$s

  eval "local value=\"\${$1}\""
  echo "$value"
}
