# Godot Version Manager for Linux 🐧

Creates a desktop shortcut for godot and provides a script to update Godot version. \
Still requires to download Godot's desired version manually. \
All downloaded versions are saved in ```~/.godot/```





## 🛠️ Installation

#### Requirements

This has been developped with `python3.11`, it does not work with older versions of Python 3. If necessary, install it from your package manager as well as `pip` for Python 3.

The package uses `argcomplete` to autocomplete arguments. Install it on your system using:

```
# on Ubuntu
sudo apt install python3-argcomplete
sudo activate-global-python-argcomplete
```

#### Clone git repo

```
git clone https://github.com/gaheldev/godot-version-manager.git
cd godot-version-manager
```

#### Set up virtualenv (recommended)

We use virtualenv to create an environment with controlled python package versions. 


```
pip install virtualenv
virtualenv venv
source venv/bin/activate
```

Make sure to run `source venv/bin/activate` before working on the project. <br>
Run `deactivate` to deactivate the virtualenv.

#### Install godot-version-manager on your system

```
chmod +x install.sh
./install.sh
```




## 📝 Usage

### Update Godot

Download the desired [godot application](https://godotengine.org/download/) and run
```
godot-version-manager install --from-file <path/to/the/downloaded/file>
```

Both running ```godot``` in the terminal or opening Godot's desktop application will point to the new installed version.
<br> <br/>

### Use an already installed Godot version

```
godot-version-manager use
```

### Advanced usage

Run ```godot-version-manager -h``` for more informations
