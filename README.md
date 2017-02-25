# android-linux-scripts
This repository contains scripts for setting up an environment in the [GNURoot Debian application](https://play.google.com/store/apps/details?id=com.gnuroot.debian).

So far there are scripts for setting up:

 - [Jupyter notebook](com/Breta01/android-linux-scripts#Jupyter-Notebook)

## Jupyter Notebook
*This scripts is actual for app version 0.6.8 and Python 3.4.2.*

The script will install Python 3 with Jupyter notebook and SciPy core packages.
You should use clear installation of the app or at least uninstall python-pip. Start the script as:
```bash
apt-get update && apt-get install -y curl
cd ~
curl -O https://raw.githubusercontent.com/Breta01/android-linux-scripts/master/android_jupyter_install.sh
sh android_jupyter_install.sh
```

## Get Involved
Getting involved is easy! If you have any idea you can create [GitHub issues](https://github.com/Breta01/android-linux-scripts/issues). Or you can resolve one and then just file a PR! Also you can test of update any actual script.
