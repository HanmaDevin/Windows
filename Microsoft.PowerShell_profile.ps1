oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\catppuccin_mocha.omp.json" | Invoke-Expression

Import-Module syntax-highlighting
Import-Module PSColor

function admin {
  if($args.Count -gt 0) {
    $argList = "& '" + $args + "'"
    Start-Process "$psHome\pwsh.exe" -Verb runAs -ArgumentList $argList
  } else {
    Start-Process "$psHome\pwsh.exe" -Verb runAs
  }
}

Set-Alias -Name sudo -Value admin

function lg { lazygit }
function v { nvim }

function c { Clear-Host }
function ll { Get-ChildItem -Path $pwd -File }
function q { exit }

function HHU { Set-Location D:\HHU }

function .. { z .. }
function ... { z ..\.. }
function .3 { z ..\..\.. }
function .4 { z ..\..\..\.. }
function .5 { z ..\..\..\..\.. }

function refresh { . $profile}

function get ($package) { winget install $package }
function remove ($package) { winget uninstall $package }

function github { Set-Location D:\Github }
function gs { git status }
function ga { git add . }
function gp { git push }

function editposh { nvim $profile }
function editvim { nvim $HOME\vimfiles\vimrc }

function deac { deactivate }
function startenv { .\bin\Activate.ps1 }
function createnv ($envPath) {
  python -m venv $pwd\$envPath
  Set-Location $envPath
}

function find-file ($name) {
  Get-ChildItem -recurse -filter "*${name}*" -ErrorAction SilentContinue | ForEach-Object {
    $place_path = $_.directory
    Write-Output "${place_path}\${_}"
  }
}

function unzip ($file, $des=$pwd) {
  Write-Output("Extracting", $file, "to", $des)
  $fullFile = Get-ChildItem -Path $pwd -Filter .\$file | ForEach-Object{$_.FullName}
  Expand-Archive -Path $fullFile -DestinationPath $des
}

function grep ($regex, $dir) {
  if ($dir) {
    Get-ChildItem $dir | select-string $regex
    return
  }
  $input | select-string $regex
}

function touch ($file) {
  "" | Out-File $file -Encoding ASCII
}

function which ($name) {
  Get-Command $name | Select-Object -ExpandProperty Definition
}

function pkill ($name) {
  Get-Process $name -ErrorAction SilentContinue | Stop-Process
}

Invoke-Expression (& { (zoxide init powershell | Out-String) })
