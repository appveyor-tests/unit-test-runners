Write-Host "Installing NUnit 3.16.3..." -ForegroundColor Cyan -NoNewline

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$nunitPath = "$env:SYSTEMDRIVE\Tools\NUnit3"

if (Test-Path $nunitPath) {
    Remove-Item $nunitPath -Recurse -Force
}


$zipPath = "$env:TEMP\NUnit.Console.3.16.3.nupkg"
$tempPath = "$env:TEMP\NUnit.Console"
    (New-Object Net.WebClient).DownloadFile('https://github.com/nunit/nunit-console/releases/download/3.16.3/NUnit.ConsoleRunner.3.16.3.nupkg', $zipPath)
7z x $zipPath -y -o"$tempPath" | Out-Null
New-Item -Path "$nunitPath" -ItemType Directory -Force | Out-Null
New-Item -Path "$nunitPath\bin" -ItemType Directory -Force | Out-Null
Get-ChildItem -Path "$tempPath\tools\*.*" | Move-Item -Destination "$nunitPath\bin"
#[IO.Directory]::Move("$tempPath\tools", "$nunitPath\bin")
Copy-Item -Path "$tempPath\tools\agents" -Destination $nunitPath -Recurse
Remove-Item $zipPath
