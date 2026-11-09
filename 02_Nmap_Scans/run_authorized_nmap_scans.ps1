param([Parameter(Mandatory=$true)][string]$Target)
Write-Host "Only use the exact target approved in writing by its owner." -ForegroundColor Yellow
Write-Host "Target: $Target"
if ((Read-Host "Type AUTHORIZED after confirming written permission and test window") -cne "AUTHORIZED") { throw "Authorization not confirmed." }
$out=Join-Path $PSScriptRoot "nmap-output"; New-Item -ItemType Directory -Force $out | Out-Null
$scans=@(
 @{Name="01-tcp-syn.txt";Args=@("-sS","-T2","--reason","--top-ports","100",$Target)},
 @{Name="02-udp-top20.txt";Args=@("-sU","-T2","--top-ports","20","--reason",$Target)},
 @{Name="03-service-version.txt";Args=@("-sV","--version-light","-T2","--top-ports","100",$Target)},
 @{Name="04-os-detection.txt";Args=@("-O","--osscan-limit","-T2",$Target)}
)
foreach($s in $scans){ Write-Host "Running $($s.Name)"; & nmap @($s.Args) -oN (Join-Path $out $s.Name); if($LASTEXITCODE -ne 0){Write-Warning "Nmap exit code $LASTEXITCODE"} }
