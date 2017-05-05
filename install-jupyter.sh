#!/usr/bin/env bash

if [[ ! -d venv3 ]]; then
    virtualenv -p /usr/local/bin/python3 venv3
fi

deactivate
source venv3/bin/activate

pip install --upgrade pip
pip install jupyter
pip freeze > requirements.txt
deactivate

exit 0;