$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.20.0/vale_2.20.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '8cb335bee8598bbc3ef02ad9763175e04b3fad17dbcdd492a6c83b33107ae755'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
