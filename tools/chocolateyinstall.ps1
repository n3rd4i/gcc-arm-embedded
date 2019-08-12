$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://developer.arm.com/-/media/Files/downloads/gnu-rm/7-2018q2/gcc-arm-none-eabi-7-2018-q2-update-win32.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gcc-arm-embedded*'
  checksum      = 'bc8ae26d7c429f30d583a605a4bcf9bc'
  checksumType  = 'MD5'
}
Install-ChocolateyZipPackage @packageArgs
