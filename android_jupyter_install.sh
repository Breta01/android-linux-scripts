#!/bin/bash
# Update
apt-get update && apt-get upgrade -y
# Install python+packages and curl
apt-get install -y python3 python3-pip python3-numpy python3-scipy python3-matplotlib ipython3 ipython3-notebook python3-pandas python3-nose curl
# Update pip
python3 -m easy_install -U pip

# Correctinng python file 
# which causes stuck during package installation
curl https://gist.githubusercontent.com/Breta01/acdf05e37efcebdab05dbd95ce14394a/raw/linklockfile.py > /usr/local/lib/python3.4/dist-packages/pip-9.0.1-py3.4.egg/pip/_vendor/lockfile/linklockfile.py

# Get requirements file
cd ~
curl -O https://gist.githubusercontent.com/Breta01/acdf05e37efcebdab05dbd95ce14394a/raw/requirements.txt

# Install pip packages
cat requirements.txt | while read PACKAGE; do pip install --no-deps "$PACKAGE"; done

# Cleaning
rm requirements.txt
