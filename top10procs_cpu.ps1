# Get the top 10 processes by CPU usage
$processes = Get-Process | Sort-Object -Property CPU -Descending | Select-Object -First 10

# Output the results
Write-Host "Top 10 processes by CPU utilization:"
$processes | Format-Table -AutoSize Name, Id, CPU