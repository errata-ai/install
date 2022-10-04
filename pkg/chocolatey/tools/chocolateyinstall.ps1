$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.20.2/vale_2.20.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'e2583620585df6090c658a54df2895372f8a0e3f56934ae4a754d7be1c085171'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
