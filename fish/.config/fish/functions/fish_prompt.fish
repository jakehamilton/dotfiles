function fish_prompt
  printf (pwd | sed -r "s_^\/home\/[^\/]+_~_gi")
  printf "\n><> "
end
