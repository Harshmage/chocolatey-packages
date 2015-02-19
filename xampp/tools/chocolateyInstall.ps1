$packageName = 'xampp'
$fileType = 'exe'
$url = 'http://sourceforge.net/projects/xampp/files/XAMPP%20Windows/5.6.3/xampp-win32-5.6.3-0-VC11-installer.exe/download'
$silentArgs = '--unattendedmodeui minimal --mode unattended'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"