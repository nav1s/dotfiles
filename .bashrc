#!/bin/bash

# set default programs
export EDITOR=nvim
export BROWSER=firefox

# set colors for less
export PAGER="less -R --use-color"

# set xdg
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# xdg-ninja
export WINEPREFIX="$XDG_CACHE_HOME/wine"
export ANDROID_HOME="$XDG_DATA_HOME/android "
export HISTFILE="$XDG_STATE_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export XCURSOR_PATH="/usr/share/icons:$XDG_DATA_HOME/icons"
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=$XDG_CONFIG_HOME/java"
export SQLITE_HISTORY="$XDG_CACHE_HOME/sqlite_history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export LESSHISTFILE="$XDG_STATE_HOME/less/history"
export NUGET_PACKAGES="$XDG_CACHE_HOME/NuGetPackages"
export CALCHISTFILE="$XDG_CACHE_HOME/calc_history"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export PLATFORMIO_CORE_DIR="$XDG_DATA_HOME/platformio"
export ANDROID_SDK_ROOT="$XDG_DATA_HOME/android/Sdk"
export GOPATH="$XDG_DATA_HOME/go"
export PARALLEL_HOME="$XDG_CONFIG_HOME/parallel"
export TEXMFVAR="$XDG_CACHE_HOME/texlive/texmf-var"
export TS_NODE_HISTORY="$XDG_STATE_HOME"/ts_node_repl_history
export PYTHONSTARTUP="/etc/python/pythonrc"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"

# gui stuff

# Stop openra from freezing
# https://gitlab.freedesktop.org/mesa/mesa/-/issues/4847
export GALLIUM_THREAD=0

# set calibre dark mode
export CALIBRE_USE_DARK_PALETTE=1

# set qt apps to use kvantum
# not rly working anymore for some reasson
# https://github.com/tsujan/Kvantum/issues/952
# export QT_STYLE_OVERRIDE=kvantum
export QT_QPA_PLATFORMTHEME=qt6ct

# set GTK theme
export GTK_THEME=Arc:dark

# set multitouch
# https://askubuntu.com/questions/536663/how-can-i-get-firefox-to-recognize-multitouch-gestures-on-a-touch-screen
export MOZ_USE_XINPUT2=1
