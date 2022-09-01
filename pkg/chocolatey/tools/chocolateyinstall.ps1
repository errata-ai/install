$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.20.1/vale_2.20.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '1c3679082225540a4ecf8137b33c92b81f751d86c250ec6cf5774d29b57ae5ea'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
