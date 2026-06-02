# Get system and user details
$currentUser = [Environment]::UserName
$currentDate = Get-Date -Format "dddd, MMMM dd, yyyy"
$osVersion = (Get-CimInstance Win32_OperatingSystem).Caption

# Clear screen for a clean look
Clear-Host

# Render the welcome message with colors
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  Welcome $currentUser!  " -ForegroundColor Green -BackgroundColor Black
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Today is:     $currentDate" -ForegroundColor Yellow
Write-Host " Operating OS: $osVersion" -ForegroundColor Gray
Write-Host " Shell Engine: PowerShell v$($PSVersionTable.PSVersion)" -ForegroundColor Cyan
Write-Host "=========================================`n" -ForegroundColor Cyan
