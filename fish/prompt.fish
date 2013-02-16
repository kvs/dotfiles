# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'git'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '✳'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '🔺 '
set __fish_git_prompt_char_upstream_behind '🔻 '

function fish_prompt
  set last_status $status

  # knife-block profile
  set_color blue
  printf '%s🔪  ' (basename (readlink ~/.chef/knife.rb) .rb | cut -d - -f 2-)
  set_color normal

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  printf '%s' (__fish_git_prompt)
  set_color $fish_color_cwd
  printf '%% '

  set_color normal

  if [ $MC_TMPDIR ]
    pwd >&6 # FIXME, FD 6 isn't necessarily the right one, but mc doesn't seem to init fish_prompt correctly, and it's not exposed anywhere else
    kill -STOP %self
  end
end
