$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = ''
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'yacreader*'
  fileType      = 'exe'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /NOCANCEL"
  validExitCodes= @(0)
  url           = "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-9.5.0-win32.exe"  #download URL, HTTPS preferrred
  checksum      = '03EA3DECFCFD5C0414EF0517B2A55E6A75FC4143CB633E28CBE7A141B5D802FB'
  checksumType  = 'sha256'
  url64bit      = "https://bitbucket.org/luisangelsm/yacreader/downloads/YACReader-9.5.0-win64.exe"   # 64bit URL here (HTTPS preferred) or remove - if installer contains both architectures (very rare), use $url
  checksum64    = '3DBE9D5DA2584197ED8B0319B67363843A90148168DB9D2465BE3DAABBCAF2DD'
  checksumType64= 'sha256'
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs