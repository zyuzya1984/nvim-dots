Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
$env:PATH += ";$env:USERPROFILE\scoop\shims"

scoop bucket add extras
scoop bucket add nerd-fonts

scoop install neovim git fzf ripgrep fd gcc make JetBrainsMono-NF

$NVIM_DIR = "$env:LOCALAPPDATA\nvim"
if (Test-Path $NVIM_DIR) { Remove-Item -Recurse -Force $NVIM_DIR }
New-Item -ItemType Directory -Path $NVIM_DIR -Force

git clone https://github.com/zyuzya1984/nvim-dots $NVIM_DIR

Write-Host "well, done." 

