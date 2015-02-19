$packageName = 'uniformserver'
$fileType = 'exe'
$url = 'http://sourceforge.net/projects/miniserver/files/Uniform%20Server%20ZeroXI/11_7_1_ZeroXI/11_7_1_ZeroXI.exe/download'
$silentArgs = '-o"C:\" -y'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$HOME\Desktop\UniController.lnk")
$Shortcut.TargetPath = "C:\UniServerZ\UniController.exe"
$Shortcut.Save()