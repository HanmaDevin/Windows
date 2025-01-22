$packages = @(
    "ajeetdsouza.zoxide",
    "sharkdp.bat",
    "GNU.Nano",
    "lazygit",
    "python",
    "direnv",
    "KDE.okular",
    "JanDeDobbeleer.OhMyPosh",
    "Valve.steam",
    "Google.chrome",
    "oracle.jdk.23",
    "7-zip"
)

foreach ($package in $packages) {
    Start-Process -NoNewWindow -Wait -FilePath "winget" -ArgumentList "install", $package
}

Write-Output "Installing Fonts..."

Copy-Item -Path "$HOME\Windows\JetBrainsMono\*" -Destination "C:\Windows\Fonts"

Write-Output "Done!"

Write-Output "Installing Powershell Modules..."

Install-Module PSColor -Scope CurrentUser

Write-Output "Done!"

Write-Output "Installing Wallpapers..."

New-Item -Path "$HOME\Pictures" -Name "Wallpaper" -ItemType "directory"
Copy-Item -Path "$HOME\Windows\wallpaper\*" -Destination "$HOME\Pictures\Wallpaper"

Write-Output "Done!"

Write-Output "Installing WSL Kali-Linux"

wsl --install -d kali-linux

Write-Ouput "Done!"

Write-Output "Copying Powershell Profile..."

Copy-Item -Path "$HOME\Windows\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE

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
