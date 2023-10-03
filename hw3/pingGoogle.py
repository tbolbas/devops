import platform
import subprocess

host = "google.com"
param = '-n' if platform.system().lower() == 'windows' else '-c'
command = ['ping', param, '1', host]

if subprocess.call(command) == 0:
    print("success")
else:
    print("doesn't work")
