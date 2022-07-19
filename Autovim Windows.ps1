echo "Autovim 1.0 Windows"
winget install Neovim.Neovim
md ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
wget https://raw.githubusercontent.com/JoseJuniorTK/MultiVimConfig/main/Windows/init.vim -OutFile ~\AppData\Local\init.vim
winget install Git.Git
echo "Feche e abra sua PowerShell / Close and open your PowerShell"