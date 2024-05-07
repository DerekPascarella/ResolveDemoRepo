# Get the last Windows Update installation date in UTC
$lastUpdateUTC = Get-WmiObject -Query "SELECT * FROM Win32_OperatingSystem" | Select-Object -ExpandProperty LastBootUpTime

# Convert UTC timestamp to a human-friendly format
$lastUpdate = [Management.ManagementDateTimeConverter]::ToDateTime($lastUpdateUTC)

# Output the last Windows Update installation date in a human-friendly format
Write-Output "Last Windows Update was run on: $lastUpdate (UTC)"