# TODO: add ~/.local/bin to path if it's not in it
mkdir -p ~/.local/bin

cp dist/gdvm ~/.local/bin/

sudo cp gdvm.completion /usr/share/bash-completion/completions/gdvm

sudo cp godot.png /usr/share/pixmaps/
rm -r ~/.cache/gdvm 2> /dev/null || true
