Dotfiles
========

Enjoy :)

Screenshots
-----------

![screenshot 1](/.md-resources/screenshot-1.png)

Requirements
------------

This is a loose list and will surely be updated as I install more things:

#### Software

+ mpd
+ ncmpcpp
+ python2.7
+ python3.6
+ fish
+ vim
+ polybar
+ wal
+ feh
+ i3-gaps
+ xorg-server
+ xorg-xinit
+ URxvt
+ urxvt-perls

#### Fonts

+ Operator Mono
+ Wuncon Siji
+ Unifont
+ symbola

Installation
------------

1\. Clone this repository to your home folder:

```shell
# Navigate to home directory
cd ~

# Clone repository
git clone https://github.com/jakehamilton/dotfiles.git

# Enter repository directory
cd dotfiles
```

2\. Install the packages you want using `stow`

```shell
# Any of these are valid package installs
stow fish
stow i3
stow vim
stow xdefaults
stow xinitrc
stow wallpapers
stow polybar
```

Customization
-------------

The wallpaper and color theme are set using `wal`. You will need to
modify the i3 configuration file to set the appropriate wallpaper:

```shell
# Enter the repository directory
cd dotfiles

# Open the configuration file in the editor
vim i3/.config/i3/config
```
