# Python_App_Template
Template for executable python console application.
## Wheel Building Instructions
### Install Python
This project requires python 3.13. This can be downloaded from the following page.
https://www.python.org/downloads/

Follow the instructions on the website to install python 3.13 or newer. Then check the installation was successfully by running the following command:

```bash
python3 --version
```
This should print out the version number of your default python instance. Validate that this is at least 3.13.

### Setup Virtual Environment
Once python has been installed, a python virtual environment needs to be setup using the venv tool. First open a terminal and navigate to the base folder of this project. Then run the following command:
```bash
python3 -m venv ./venv
```
Then you must activate the virtual environment. For windows machines use the command
```bash
.\venv\Scripts\activate.bat
```
If that command doesn't work try the following command

```bash
.\venv\Scripts\Activate.ps1
```
On linux use the following command

```bash
source ./venv/Scripts/activate
```

### Build the wheel
Before building the wheel the build tool needs to be installed with the following command:
```bash
pip install build
```
Then the wheel can be built using the following command:
```bash
python -m build --wheel .
```
This wheel can then be installed using one of the following commands:
Windows:
```bash
pip install .\dist\insert_wheel_name.whl
```
Linus:
```bash
pip install ./dist/insert_wheel_name.whl
```

## Launching Application
Once the wheel has been built and installed in your virtual environment you can launch the application using the following command:
```bash
app_name
```