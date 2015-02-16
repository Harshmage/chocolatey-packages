$packageName = 'autoitscite'
$fileType = 'exe'
$url = 'http://www.autoitscript.com/autoit3/scite/download/SciTE4AutoIt3.exe'
$silentArgs = '/S'

Install-ChocolateyPackage $packageName $fileType "$silentArgs" "$url"

Set-Item -Path HKLM:\Software\Classes\AutoIt3Script\shell -Value Open