# VS Code
$url = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64"
$installer = "C:\tmp\vs_code.exe"
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $installer)

$vsArgs = @("/VERYSILENT", "/NORESTART", "/MERGETASKS=!runcode")
Start-Process -Filepath $installer -ArgumentList $vsArgs -NoNewWindow -Wait

Remove-Item $installer

# Install WSL
wsl --install

