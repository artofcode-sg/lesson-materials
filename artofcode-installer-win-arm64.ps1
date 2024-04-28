$usrname = (whoami).split("\")[1]

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/3.12.3/python-3.12.3-arm64.exe" -OutFile "C:\Users\$usrname\python-3.12.3.exe"
cd C:\Users\$usrname\
.\python-3.12.3.exe /quiet InstallAllUsers=0 InstallLauncherAllUsers=0 PrependPath=1 Include_test=0

py -m pip install notebook
jupyter notebook