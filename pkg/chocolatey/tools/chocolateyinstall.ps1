$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.21.0/vale_2.21.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'e8ff9c74e7771837f3704316c30ee267585224dec97c975cdb29c9ac9dfbb359'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
