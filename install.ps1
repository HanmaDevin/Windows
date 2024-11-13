$packages = @(
    "ajeetdsouza.zoxide",
    "WhatsApp",
    "Debian.Debian",
    "sharkdp.bat",
    "GNU.Nano",
    "lazygit",
    "python",
    "direnv",
    "KDE.okular",
    "ohmyposh",
    "Valve.steam",
    "Google.chrome",
    "oracle.jdk.23",
    "7-zip"
)

foreach ($package in $packages) {
    Start-Process -NoNewWindow -Wait -FilePath "winget" -ArgumentList "install", $package
}

Write-Output "Installing Powershell Modules..."

Install-Module PSColor -Scope CurrentUser

Write-Output "Done!"

Write-Output "Installing Wallpapers..."

.\windows\get-wallpaper.ps1

Write-Output "Done!"

Write-Output "Copying Powershell Profile..."

Copy-Item .\windows\Microsoft.PowerShell_profile.ps1 $PROFILE

Write-Output "Done!"

Write-Output "Configuring Git..."

git config --global user.name "HanmaDevin"
git config --global user.email "devinbc14@gmail.com"

Write-Output "Done!"

Write-Output "Adding ssh key..."

ssh-keygen -t ed25519 -C "devinbc14@gmail.com"

Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent

ssh-add $HOME/.ssh/id_ed25519

Write-Output "Done!"