$packages = @(
    "ajeetdsouza.zoxide",
    "sharkdp.bat",
    "glazewm",
    "lazygit",
    "vscode",
    "python",
    "direnv",
    "KDE.okular",
    "starship",
    "Valve.steam",
    "Google.chrome",
    "oracle.jdk.23",
    "7-zip",
    "Neovim.Neovim",
    "yan.FFmpeg", 
    "jqlang.jq",
    "sharkdp.fd",
    "BurntSushi.ripgrep.MSVC", 
    "junegunn.fzf", 
    "ImageMagick.ImageMagick"
)

foreach ($package in $packages) {
    Start-Process -NoNewWindow -Wait -FilePath "winget" -ArgumentList "install", $package
}

Write-Output "Installing Fonts..."

Copy-Item -Path -Recurse "$HOME\Windows\JetBrainsMono\" -Destination "C:\Windows\Fonts"

Write-Output "Done!"

Write-Output "Installing Wallpapers..."

New-Item -Path "$HOME\Pictures" -Name "Wallpaper" -ItemType "directory"
Copy-Item -Path "$HOME\Windows\Wallpaper\*" -Destination "$HOME\Pictures\Wallpaper"

Write-Output "Done!"

Write-Output "Copying Powershell Profile..."

Copy-Item -Path "$HOME\Windows\Microsoft.PowerShell_profile.ps1" -Destination $PROFILE

Write-Output "Done!"

Write-Output "Installing yazi plugins..."
    
ya pack -a Rolv-Apneseth/starship
ya pack -a yazi-rs/plugins:git
ya pack -a yazi-rs/plugins:full-border
ya pack -a grappas/wl-clipboard
ya pack -a Reledia/glow
ya pack -a TD-Sky/sudo
ya pack -a Lil-Dank/lazygit
ya pack -a yazi-rs/plugins:jump-to-char

Write-Output "Done!"

Write-Output "Configuring Git..."

git config --global user.name "HanmaDevin"
git config --global user.email "devinbc14@gmail.com"
git config --global pull.rebase true

Write-Output "Done!"

Write-Output "Adding ssh key..."

ssh-keygen -t ed25519 -C "devinbc14@gmail.com"

Get-Service -Name ssh-agent | Set-Service -StartupType Manual
Start-Service ssh-agent

ssh-add $HOME/.ssh/id_ed25519

Write-Output "Done!"

Write-Output "Copying Configuration..."

New-Item -Path "$HOME\AppData\Local" -Name "nvim" -ItemType "directory"
Copy-Item -Path -Recurse "$HOME\Windows\nvim\" -Destination "$HOME\AppData\Local\"

New-Item -Path "$HOME\AppData\Local" -Name "yazi" -ItemType "directory"
Copy-Item -Path -Recurse "$HOME\Windows\yazi\" -Destination "$HOME\AppData\Local\"

New-Item -Path "$HOME\AppData\Local" -Name "fastfetch" -ItemType "directory"
Copy-Item -Path -Recurse "$HOME\Windows\fastfetch\" -Destination "$HOME\AppData\Local\"

New-Item -Path "$HOME\AppData\Local" -Name "starship" -ItemType "directory"
Copy-Item -Path "$HOME\Windows\starship.toml -Destination" "$HOME\AppData\Local\starship"

Write-Output "Done!"