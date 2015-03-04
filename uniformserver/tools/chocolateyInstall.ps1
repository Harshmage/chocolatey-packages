$packageName = 'uniformserver'
$fileType = 'exe'
$url = 'http://sourceforge.net/projects/miniserver/files/Uniform%20Server%20ZeroXI/11_7_1_ZeroXI/11_7_1_ZeroXI.exe/download'
$silentArgs = '-o"C:\" -y'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"

# Make the Start Menu folder
md -Force 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Uniform Server'

# Create the Desktop shortcuts
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$HOME\Desktop\UniController.lnk")
$Shortcut.TargetPath = "C:\UniServerZ\UniController.exe"
$Shortcut.Save()

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$HOME\Desktop\Uniform Server Modules.url")
$Shortcut.TargetPath = "http://sourceforge.net/projects/miniserver/files/Uniform%20Server%20ZeroXI/ZeroXImodules/"
$Shortcut.Save()

# Create the Start Menu shortcuts
$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$ENV:ProgramData\Microsoft\Windows\Start Menu\Programs\Uniform Server\UniController.lnk")
$Shortcut.TargetPath = "C:\UniServerZ\UniController.exe"
$Shortcut.Save()

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$ENV:ProgramData\Microsoft\Windows\Start Menu\Programs\Uniform Server\Uniform Server Modules.url")
$Shortcut.TargetPath = "http://sourceforge.net/projects/miniserver/files/Uniform%20Server%20ZeroXI/ZeroXImodules/"
$Shortcut.Save()