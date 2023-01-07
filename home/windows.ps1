(
  [PSCustomObject]@{
    Base = $env:APPDATA; Dir = '.emacs.d'; File = 'init.el'; lines = @"
(require 'org)
(org-babel-load-file "$($PSScriptRoot.Replace('\', '/'))/config/emacs/init.org")
"@
  },
  [PSCustomObject]@{
    Base = $env:LOCALAPPDATA; Dir = 'nvim'; File = 'init.lua'; lines = @"
vim.opt.runtimepath = vim.opt.runtimepath + "$($PSScriptRoot.Replace('\', '/'))/config/nvim"
dofile("$($PSScriptRoot.Replace('\', '/'))/config/nvim/init.lua")
"@
  },
  [PSCustomObject]@{
    Base = $env:USERPROFILE; Dir = 'vimfiles'; File = 'vimrc'; lines = @"
source $($PSScriptRoot.Replace('\', '/'))/vim/vimrc
set undodir=$HOME/vimfiles
set backupdir=$HOME/vimfiles
set directory=$HOME/vimfiles
set viminfofile=$HOME/vimfiles/viminfo
"@
  },
  [PSCustomObject]@{
    Base = $env:USERPROFILE; Dir = 'vimfiles'; File = 'gvimrc'; lines = @"
source $($PSScriptRoot.Replace('\', '/'))/vim/gvimrc
set guifont=Consolas:h11
"@
  }
) | ForEach-Object -Process {
  New-Item -Path $_.Base -name $_.Dir -ItemType Directory -Force `
  | Resolve-Path `
  | new-item -Name $_.File -ItemType File -Force -Value $_.lines `
}
Pause
