param ([string]$baseUrl, [int]$testsExpected)

$headers = @{
  "Authorization" = "Bearer $env:API_TOKEN"
  "Content-type" = "application/json"
}

$b = Invoke-RestMethod -Uri "$baseUrl/api/projects/AppVeyor/unit-test-runners" -Headers $headers  -Method GET
if ($b.build.jobs[0].testsCount -ne $testsExpected) {
    Write-Error "Tests expected $testsExpected, actual $b.build.jobs[0].testsCount"
}
else {
Write-host "Tests expected $testsExpected, actual $b.build.jobs[0].testsCount" -foregroundcolor Green
}
