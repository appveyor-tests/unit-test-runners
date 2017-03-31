param ([string]$baseUrl, [int]$testsExpected)

$headers = @{
  "Authorization" = "Bearer $env:API_TOKEN"
  "Content-type" = "application/json"
}

$testActual = 0;
for ($i = 0; $i -lt 3; $i++) {
$b = Invoke-RestMethod -Uri "$baseUrl/api/projects/AppVeyor/unit-test-runners" -Headers $headers  -Method GET
$testActual = $b.build.jobs[0].testsCount;
if ($testActual -gt 0) {break}
sleep 3
}

if ($testActual -ne $testsExpected) {
    Write-Error "Tests expected $testsExpected, actual $b.build.jobs[0].testsCount"
    throw
}
else {
Write-host "Tests expected $testsExpected, actual $testActual" -foregroundcolor Green
return
}
