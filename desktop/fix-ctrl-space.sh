#!/bin/sh

# IBUS configuration binds ctrl+space to something dumb
# http://askubuntu.com/a/487485/139584
gsettings set org.freedesktop.ibus.general.hotkey triggers []
