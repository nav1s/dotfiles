#!/bin/bash

# set default programs
export EDITOR=nvim
export BROWSER=firefox

# set colors for less
export PAGER="less -R --use-color"

# set xdg
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# xdg-ninja
export WINEPREFIX=$XDG_CACHE_HOME/wine
export ANDROID_HOME=$XDG_DATA_HOME/android 
export HISTFILE=$XDG_STATE_HOME/bash/history
export CARGO_HOME=$XDG_DATA_HOME/cargo
export GRADLE_USER_HOME=$XDG_DATA_HOME/gradle
export GTK2_RC_FILES=$XDG_CONFIG_HOME/gtk-2.0/gtkrc
export XCURSOR_PATH=/usr/share/icons:$XDG_DATA_HOME/icons
export IPYTHONDIR=$XDG_CONFIG_HOME/ipython
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java
export SQLITE_HISTORY=$XDG_CACHE_HOME/sqlite_history
export XAUTHORITY=$XDG_RUNTIME_DIR/Xauthority
export LESSHISTFILE=$XDG_STATE_HOME/less/history

# gui stuff

# Stop openra from freezing
# https://gitlab.freedesktop.org/mesa/mesa/-/issues/4847
export GALLIUM_THREAD=0

# set calibre dark mode
# export CALIBRE_USE_DARK_PALETTE=1

# set qt apps to use kvantum
export QT_STYLE_OVERRIDE=kvantum

# set GTK theme
export GTK_THEME=Arc:dark

