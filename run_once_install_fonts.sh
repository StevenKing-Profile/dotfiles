#!/bin/bash

   FONT_DIR="$HOME/.local/share/fonts/JetBrainsMonoNerd"
   FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip"

   if [ ! -d "$FONT_DIR" ]; then
       echo "Installing JetBrains Mono Nerd Font..."
       mkdir -p "$FONT_DIR"
       cd /tmp
       wget -q --show-progress "$FONT_URL" -O jbmono.zip
       unzip -q jbmono.zip -d "$FONT_DIR"
       rm jbmono.zip
       
       # Update the Linux font cache
       fc-cache -fv
       echo "Font installation complete."
   else
       echo "JetBrains Mono Nerd Font already installed."
   fi
