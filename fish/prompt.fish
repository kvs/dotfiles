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
  echo -n (set_color blue)(basename (readlink ~/.chef/knife.rb) .rb | cut -d - -f 2-)"🔪 "(set_color normal)

  # rubies-fish
  if test $__rubies_active_scope != global
    echo -n (set_color -o blue) $__rubies_active_version💎"  "(set_color normal)
  end

  # directory
  echo -n (set_color $fish_color_cwd)(prompt_pwd)(set_color normal)

  # git
  echo -n (__fish_git_prompt)

  # prompt
  echo -n (set_color $fish_color_cwd)% (set_color normal)
end
