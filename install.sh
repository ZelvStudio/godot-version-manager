pyinstaller -F main.py -n godot-version-manager
sudo cp dist/godot-version-manager /usr/local/bin/
sudo cp godot.png /usr/share/pixmaps/
sudo cp godot.desktop /usr/share/applications/
xdg-desktop-menu install --novendor /usr/share/applications/godot.desktop
