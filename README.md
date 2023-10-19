# Godot Version Manager for Linux 🐧

Creates a desktop shortcut for godot and provides a script to update Godot version. \
Still requires to download Godot's desired version manually. \
All downloaded versions are saved in ```~/.godot/```




## ✨ Features

* [x] download from repo
    * [x] use as system version (godot from cli) + desktop shortcut -> only one 
    * [ ] create desktop shortcut -> as many as user wants?
    * [x] use for current project
    * [x] just download
* [x]  Add to managed apps from archive / binary
* [ ] manage desktop shortcut
    * [x] use / remove as system version (godot from cli) + desktop shortcut -> only one 
    * [ ] make / remove desktop shortcut -> as many as user wants?
* [x] remove version
* [x] per project version
    * [x] make current version the default for a project
    * [x] change current version for a project
    * [x] run project version
* [x] list installed versions
* [x] run any installed version 
* [ ] Upgrade
    * [ ] current system/project version to latest minor
        -> keep major verison, stable, mono, rc, alpha, beta   





## 🛠️ Installation

#### Requirements

This has been developped with `python3.11`, it does not work with older versions of Python 3. If necessary, install it from your package manager as well as `pip` for Python 3.

<!--- Seems unnecessary 
The package uses `argcomplete` to autocomplete arguments. Install it on your system using:

```
# on Ubuntu
sudo apt install python3-argcomplete
sudo activate-global-python-argcomplete
```
--->

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

```
gvm download VERSION
gvm use VERSION
```

Both running ```godot``` in the terminal or opening Godot's desktop application will point to the new installed version.
<br> <br/>

### Use an already installed Godot version

Use as system's default
```
gvm use VERSION
```

Use as current working directory's version
```
gvm use --local VERSION
```

### Run Godot

`gvm run` runs the current working directory's version if it exists, otherwise runs system's default

### Advanced usage

Run ```gvm -h``` for more informations



## Development

### Tests

Tests are located in the `tests/` folder of the project. All test files should be named 'test_*.py' or '*_test.py'.

Run `pytest` in the project's root directory to run all tests. 

#### Automatically run tests before any commit

 ⚠️ this will delete any pre-commit hook you already created ⚠️
```
chmod +x pre-commit-hook.sh
./pre-commit-hook.sh
```

If you already have a pre-commit hook set up, just add the line `pytest` to `.git/hooks/pre-commit`
