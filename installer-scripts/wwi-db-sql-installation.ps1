# Set directory for installation - Chocolatey does not lock
# down the directory if not the default
$InstallDir = 'C:\ProgramData\chocoportable'
$env:ChocolateyInstall = "$InstallDir"

# If your PowerShell Execution policy is restrictive, you may
# not be able to get around that. Try setting your session to
# Bypass.
Set-ExecutionPolicy Bypass -Scope Process -Force;

# All install options - offline, proxy, etc at
# https://chocolatey.org/install
[Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install sql-server-2017 -y --execution-timeout=60000
choco install sql-server-management-studio -y
refreshenv
exit