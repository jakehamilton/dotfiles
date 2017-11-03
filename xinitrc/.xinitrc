#!/bin/bash

#==================================
#         _       _ _
#   __  _(_)_ __ (_) |_ _ __ ___
#   \ \/ / | '_ \| | __| '__/ __|
#  _ >  <| | | | | | |_| | | (__
# (_)_/\_\_|_| |_|_|\__|_|  \___|
# 
# - by Short
#==================================


# Merge in environment configuration
xrdb -load ~/.xdefaults &

# Bind caps lock to escape
setxkbmap -option caps:escape &

# Fix mouse input
synclient ConstantDeceleration=1.5 &
xinput --set-prop 12 270 1 &

# Start URxvt daemon
urxvtd -q -o &

# Start i3
exec i3
