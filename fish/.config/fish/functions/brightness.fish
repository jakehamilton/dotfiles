function brightness
  set base "/sys/class/backlight/intel_backlight"
  set max_brightness "$base/max_brightness"
  set current_brightness "$base/brightness"

  set level $argv[1]

  # If we were given a level to set, attempt to do so
  if [ $level ]
    set min 0
    set max (cat $max_brightness)

    # If the brightness is in range, set it
    if [ $level -gt $min -a $level -lt $max ]
      # Set the brightness level
      echo $level | sudo tee $current_brightness
    else
      # Invalid brightness, let the user know
      echo "Invalid brightness level, choose a value between $min and $max"
    end
  # If we weren't given a level to set, just echo the current level
  else
    cat $current_brightness
  end
end

