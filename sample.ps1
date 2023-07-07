Write-Host "Hello There"

Get-WmiObject -Class Win32_OperatingSystem -ComputerName localhost | Select-Object -Property CSName, LastBootUpTime
