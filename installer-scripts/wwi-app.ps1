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

choco install dotnetcore-sdk --version=2.2.104 -y
choco install nodejs.install --version=6.12.3 -y
choco install git -y

# Enabling IIS Features
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServer -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-CommonHttpFeatures -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpErrors -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpRedirect -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationDevelopment -N

Enable-WindowsOptionalFeature -online -FeatureName NetFx4Extended-ASPNET45 -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-NetFxExtensibility45 -N

Enable-WindowsOptionalFeature -Online -FeatureName IIS-HealthAndDiagnostics -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpLogging -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-LoggingLibraries -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestMonitor -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpTracing -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Security -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-RequestFiltering -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-Performance -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerManagementTools -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ManagementConsole -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-BasicAuthentication -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WindowsAuthentication -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-StaticContent -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-DefaultDocument -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebSockets -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ApplicationInit -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIExtensions -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ISAPIFilter -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-HttpCompressionStatic -N
Enable-WindowsOptionalFeature -Online -FeatureName IIS-ASPNET45 -N

choco install dotnetcore-windowshosting -y

exit