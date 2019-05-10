function scrot --description "Screenshots in Wayland (with default output to ~/Photos/screenshots)" --argument-names "output"
    if test -z $output
        set output "$HOME/Photos/screenshots/"(date +"%Y-%M-%d_%k:%m:%S")".png"
    end

    grim -g (slurp) $output
end

