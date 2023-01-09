$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.22.0/vale_2.22.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '02d8c32394610d81f9743b0481a175c15a1500618acb8da650d855afc4a91615'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
