# update-script-arch-linux

Place the following update.desktop file in:

~/.config/autostart/update.desktop

This setup is intended for zsh users. 

To execute the script with a Desktop Entry (.desktop) file, use the following configuration:

```
[Desktop Entry]
Type=Application
Terminal=true
Name=update
Exec=zsh -c '/home/project/update.sh ; zsh'
```

Replace /home/project/update.sh with the actual path to your script.
