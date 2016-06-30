# Short's dotfiles
## Preview
![](/screenshots/1.png)

![](/screenshots/2.png)

![](/screenshots/3.png)

![](/screenshots/4.png)

## Software
+ **Window Manager**: [Openbox](http://openbox.org/wiki/Main_Page)
+ **Bar**: [Lemonbar (a fork that supports ttf fonts)](http://mokaproject.com/moka-icon-theme/)
+ **Launcher**: [Rofi](https://davedavenport.github.io/rofi/)
+ **Lock Screen**: [i3lock (fork)](https://github.com/Lixxia/i3lock)
+ **Wallpaper Manager**: [feh](https://github.com/derf/feh)
+ **Compositor**: [Compton](https://github.com/chjj/compton)

## Themes
+ **Numix Icon Theme**: [Source](https://github.com/numixproject/numix-gtk-theme)
+ **Numix Circle Theme**: [Source](https://github.com/numixproject/numix-icon-theme-circle)
+ **Synaptic**: Custom, in the dotfiles baby ;)

## Misc
+ **Material Icon Font**: [Source](https://design.google.com/icons/)

## Where does everything go?
+ Extract `theme/synaptic/` to `~/.themes/` and enable it with something like **obconf**
+ Extract `lemonbar/*` to `~/.config/lemonbar/`
+ Extract `openbox/*` to `~/.config/openbox/`
+ Append or Replace `.Xresources` to yours at `~/.Xresources`

## Customization
Some things are tuned for my system, here's a list of what you need to change:

+ `openbox/autostart`: change `wp_name` and `wp_path` to match your image
+ `openbox/rc.xml`: About line 200, change `gnome-terminal` to be your terminal emulator

## Shortcuts
+ `Alt + Left`: Snap window to left half of the screen
+ `Alt + right`: Snap window to the right half of the screen
+ `Alt + up`: Maximize the window
+ `Alt + down`: Unmaximize the window
+ `Ctrl + Alt + Left`: Move to workspace left
+ `Ctrl + Alt + Right`: Move to workspace right
+ `Alt + d`: Run Rofi
+ `Alt + c`: Open Chrome
+ `Alt + q`: Quit the current application
+ `Ctrl + Alt + l`: Lock the screen
+ `Ctrl + Alt + t`: Launch gnome-terminal
