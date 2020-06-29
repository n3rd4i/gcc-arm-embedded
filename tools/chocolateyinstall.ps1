$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2020q2/gcc-arm-none-eabi-9-2020-q2-update-win32.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gcc-arm-embedded*'
  checksum      = '49d6029ecd176deaa437a15b3404f54792079a39f3b23cb46381b0e6fbbe9070'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
