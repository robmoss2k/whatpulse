$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://whatpulse-clients.ams3.cdn.digitaloceanspaces.com/release/3.1/whatpulse-win-3.1.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url            = $url
  softwareName   = 'whatpulse*'
  checksum       = '30E7FA1BCCEA4F53BA4EA31F9183AD8257E297D80A81C5B8866FA2E67AA5B5B1'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
