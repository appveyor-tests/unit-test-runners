param ([string]$baseUrl, [int]$testsExpected)

$headers = @{
  "Authorization" = "Bearer $env:API_TOKEN"
  "Content-type" = "application/json"
}
sleep 5
$b = Invoke-RestMethod -Uri "$baseUrl/api/projects/AppVeyor/unit-test-runners" -Headers $headers  -Method GET
$testActual = $b.build.jobs[0].testsCount;
$testActual
$b.build.version
if ($testActual -ne $testsExpected) {
    Write-Error "Tests expected $testsExpected, actual $b.build.jobs[0].testsCount"
}
else {
Write-host "Tests expected $testsExpected, actual $testActual" -foregroundcolor Green
}
