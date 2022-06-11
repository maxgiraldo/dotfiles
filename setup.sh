#!/bin/sh
xcode-select --install
sudo xcodebuild -license
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
pip install --ignore-installed ansible
ansible-galaxy install -r requirements.yml

#if you need sudo --ask-become-pass
ansible-playbook -i "localhost," -c local mac.yml
