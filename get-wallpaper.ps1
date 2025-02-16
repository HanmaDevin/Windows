New-Item -Path "$HOME\Pictures" -Name "wallpaper" -ItemType "directory"
Copy-Item -Path ".\wallpaper\*" -Destination "$HOME\Pictures\wallpaper"
