FROM microsoft/aspnet

RUN powershell -NoProfile -Command Set-ExecutionPolicy Bypass -Scope Process -Force; \
Import-Module IISAdministration; \
New-IISSite -Name "Website" -PhysicalPath C:\webroot\Website -BindingInformation "*:80:" -Force;

# iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); \
# Install-PackageProvider -Name NuGet -Force; \
# Register-PSRepository -Name SitecorePowershell \
# -SourceLocation https://sitecore.myget.org/F/sc-powershell/api/v2; \
# Install-Module SitecoreInstallFramework -Force
