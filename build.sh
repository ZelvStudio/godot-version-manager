pip install -r requirements.txt
pyinstaller -F main.py -n gdvm

(
cd dist
register-python-argcomplete gdvm > ../gdvm.completion
)
