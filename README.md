## GLAVA INSTRUCTIONS

The following instructions are for my cool visualizer wallpaper thing. For DWM instructions, scroll down.


(If this readme is missing anything or something goes wrong with the installation, please create a GitHub issue and/or email me at . I will probably respond within a day!)


1. *Required packages*: You will need to install Git, GLava, and Picom, as well as Feh if you use DWM. If you use Arch Linux, you can just `sudo pacman -S glava git picom`


2. *Extract files*: Clone this repository with `git clone https://github.com/nate42272/dotfiles`. Move the ~/dotfiles/.config/picom.conf and ~/dotfiles/.config/glava to your .config directory. Move wallpaper.jpg to wherever you please.

**For this guide, you will ONLY need the following files from this repo: .config/picom.conf, .config/glava, wallpaper/wallpaper.jpg, scripts/system/glava.sh, and optionally programs/dwm**

3. *Set wallpaper*: If you use DWM, you can use feh to set the wallpaper by adding `feh --bg-fill path/to/wallpaper.jpg` to ~/.xsession. If you do not use DWM, then you can check your DE's documentation of setting the wallpaper.

4. *Set permissions*: `sudo chmod +x /path/to/glava.sh`

5a. *GLava setup (with DWM)*: Follow the DWM install instructions below to set up the DWM config contained in these dotfiles. Alternatively, you can edit your config.h to include all of the GLava related things, if you wanted to keep the rest of your config. That's it! Just switch workspaces (probably MOD+2) or use whatever hotkey you set up to start GLava.

5b. *GLava setup (no DWM)*: This varies greatly depending on your DE, but I will try to give a rough explanation. You are going to want to add the path to your glava.sh script to your .xsession file, or whatever file autoruns on login (For example, on KDE Plasma, you can just add it as a login script in the settings menu). If you change workspaces/desktops often, I would reccomend you add it to whatever logic that runs when you switch workspaces/desktops. Optionally, you can bind /path/to/glava.sh to a keyboard shortcut, to be able to start it manually in case it fails to start on its own. You can even just use that and not go through the trouble of adding it to the workspace logic, if you wish.

6. That's it! Just turn music (or any sound, really) on and it should start up. If it doesn't, then use whatever audio manager you use (like pavucontrol) to ensure that GLava is recording the audio.





## DWM SETUP INSTRUCTIONS

If you use DWM, you probably don't need this. But, hey, I've met dumb people with PhDs, so you never know.

This is also assuming that you don't already have DWM set up. If you do, you know what to fuckin do


1. Move programs/dwm to wherever you want DWM to reside, it doesn't really matter

2. CD into dwm, and `sudo make clean install`

3. You might need to make a desktop entry for it, if it is not available in your Desktop Manager after you log out. You can figure this out on your own, we're not children

4. That's it. Optionally, if you want to use my awesome cool dwmblocks, you will do the exact same things I just told you to do, but with programs/blocks. If anything goes wrong with running dwmblocks, you are probably missing dependencies.






