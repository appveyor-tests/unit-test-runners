param ([string]$baseUrl, [int]$testsExpected)

$headers = @{
  "Authorization" = "Bearer $env:API_TOKEN"
  "Content-type" = "application/json"
}

$testActual = 0;
for ($i = 0; $i -lt 5; $i++) {
$b = Invoke-RestMethod -Uri "$baseUrl/api/projects/$env:APPVEYOR_ACCOUNT_NAME/$env:APPVEYOR_PROJECT_SLUG/build/$env:APPVEYOR_BUILD_VERSION" -Headers $headers  -Method GET
$testActual = ($b.build.jobs | ? {$_.jobId -eq $env:APPVEYOR_JOB_ID}).testsCount;
Write-host "Current JOB_ID $env:APPVEYOR_JOB_ID"
if ($testActual -gt 0) {break}
sleep 3
}

if ($testActual -ne $testsExpected) {
    Write-Error "Tests expected $testsExpected, actual $testActual"
    throw
}
else {
Write-host "Tests expected $testsExpected, actual $testActual" -foregroundcolor Green
return
}
