# Get basic system information
$os = Get-WmiObject -Class Win32_OperatingSystem
$proc = Get-WmiObject -Class Win32_Processor
$mem = Get-WmiObject -Class Win32_PhysicalMemory
$compSys = Get-WmiObject -Class Win32_ComputerSystem

# Display system information
Write-Host "Operating System: $($os.Caption)"
Write-Host "OS Version: $($os.Version)"
Write-Host "Architecture: $($os.OSArchitecture)"
Write-Host "Manufacturer: $($compSys.Manufacturer)"
Write-Host "Model: $($compSys.Model)"
Write-Host "Processor: $($proc.Name)"
Write-Host "Number of Processors: $($compSys.NumberOfProcessors)"
Write-Host "Total Physical Memory: $([math]::Round($mem.Capacity / 1GB, 2)) GB"
Write-Host "Total Virtual Memory: $([math]::Round($os.TotalVirtualMemorySize / 1GB, 2)) GB"
Write-Host "Free Physical Memory: $([math]::Round($os.FreePhysicalMemory / 1MB, 2)) MB"
Write-Host "Free Virtual Memory: $([math]::Round($os.FreeVirtualMemory / 1MB, 2)) MB"
