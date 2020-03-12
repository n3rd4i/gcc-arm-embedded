$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-win32.zip'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'gcc-arm-embedded*'
  checksum      = 'E4C964ADD8D0FDCC6B14F323E277A0946456082A84A1CC560DA265B357762B62'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
