Dotfiles
========

These configs are updated fairly often while I tweak things, don't be surprised if
there is a new version available right after you install. They should at least be
really easy to update. Enjoy!

Screenshots
-----------

#### General Busy

![screenshot 1](/.md-resources/screenshot-1.jpg)

![screenshot 2](/.md-resources/screenshot-2.jpg)

![screenshot 3](/.md-resources/screenshot-3.jpg)

![screenshot 4](/.md-resources/screenshot-4.jpg)

#### Different themes based off of wallpapers in `/wallpapers`

![theme 1](/.md-resources/new-wall-1.jpg)
![theme 2](/.md-resources/new-wall-2.jpg)
![theme 3](/.md-resources/new-wall-3.jpg)
![theme 4](/.md-resources/new-wall-4.jpg)
![theme 5](/.md-resources/new-wall-5.jpg)
![theme 6](/.md-resources/new-wall-6.jpg)
![theme 7](/.md-resources/new-wall-7.jpg)
![theme 8](/.md-resources/new-wall-8.jpg)

Requirements
------------

This is a loose list and will surely be updated as I install more things:

#### Software

+ xorg-server
+ xorg-xinit
  - Well, you need a display server

+ i3-gaps
  - Window manager

+ i3lock-fancy
  - Lock screen

+ URxvt
+ urxvt-perls
  - Terminal emulator and plugins

+ fish
  - Better shell

+ python2.7
+ python3.6
  - Python

+ scrot
  - Screenshotting (used with i3lock-fancy)

+ vim
+ nvim
  - Pick which editor you want

+ Vundle
  - Vim plugin manager

+ polybar
  - Easily configurable status bar

+ dunst
  - Notification manager

+ feh
  - Image viewer and wallpaper tool

+ wal
  - Theming script by [@dylanaraps](https://github.com/dylanaraps)

+ redshift
  - Don't hurt your eyes

+ light
  - Control backlight easily

+ mpd
  - Media daemon

+ ncmpcpp
  - Interface for mpd

#### Fonts

+ Operator Mono
+ Wuncon Siji
+ Unifont
+ symbola
+ Material Icons
+ Noto Sans
+ Hack (for powerline)

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

#### Wallpaper/Color Scheme
The wallpaper and color theme are set using `wal`. You will need to
modify the i3 configuration file to set the appropriate wallpaper:

```shell
# Enter the repository directory
cd dotfiles

# Open the configuration file in the editor
vim i3/.config/i3/config
```

#### Vim

`Vundle` is used to pull in plugins, so you'll need to have that
installed and then run the following to install all the plugins:

```shell
vim +PluginInstall
```

#### Fish

Fish is configured to update some globals in the file
`.config/fish/config.fish`. You'll likely want to remove those
depending on how you handle things on your system.

As well, I have a private set of scripts stored at `~/scripts`. These
aren't uploaded to the dotfiles repository because they contain private
information, so you'll either want to create that directory or remove
it from the fish configuration to avoid any errors.
