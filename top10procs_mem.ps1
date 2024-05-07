# Get the top 10 processes by memory usage
$processes = Get-Process | Sort-Object -Property WorkingSet -Descending | Select-Object -First 10

# Output the results
Write-Host "Top 10 processes by memory utilization:"
$processes | Format-Table -AutoSize Name, Id, WorkingSet