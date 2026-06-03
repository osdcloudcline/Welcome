# Get system and user details
$currentUser = [Environment]::UserName
$currentDate = Get-Date -Format "dddd, MMMM dd, yyyy"


# Clear screen for a clean look
Clear-Host

# Render the welcome message with colors
Write-CenteredText  "=========================================" -ForegroundColor Cyan
Write-CenteredText "  Welcome $currentUser!  " -ForegroundColor Green -BackgroundColor Black
Write-CenteredText "=========================================" -ForegroundColor Cyan
Write-CenteredText " Today is:     $currentDate" -ForegroundColor Yellow
Write-CenteredText " Shell Engine: PowerShell v$($PSVersionTable.PSVersion)" -ForegroundColor Cyan
Write-CenteredText "=========================================`n" -ForegroundColor Cyan

# Retrive System Information
$SysInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Welcome/raw/refs/heads/main/SystemInfo.ps1") 
Invoke-Expression $($SysInfo.Content)
