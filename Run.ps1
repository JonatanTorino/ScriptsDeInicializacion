stop-service -name iisadmin,was,w3svc -passThru
stop-service -name DynamicsAxBatch -passThru

#SourceControlMapping.Axxon.ps1
#SourceControlMapping.FBM.ps1

#Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
Choco Install .\DefaultPackages.config --yes
Choco Install .\JonasPackages.config --yes

