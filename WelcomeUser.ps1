# Get system and user details
$currentUser = [Environment]::UserName
$currentDate = Get-Date -Format "dddd, MMMM dd, yyyy"


# Clear screen for a clean look
Clear-Host

# Render the welcome message with colors
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host "  Welcome $currentUser!  " -ForegroundColor Green -BackgroundColor Black
Write-Host "=========================================" -ForegroundColor Cyan
Write-Host " Today is:     $currentDate" -ForegroundColor Yellow
Write-Host " Shell Engine: PowerShell v$($PSVersionTable.PSVersion)" -ForegroundColor Cyan
Write-Host "=========================================`n" -ForegroundColor Cyan

# Retrive System Information
$SysInfo = Invoke-WebRequest("https://github.com/osdcloudcline/Welcome/raw/refs/heads/main/SystemInfo.ps1") 
Invoke-Expression $($SysInfo.Content)

# Retrieve Main Menu welcome message
$WelcomeMainMenu = Invoke-WebRequest("https://github.com/osdcloudcline/Welcome/raw/refs/heads/main/WelcomeMainMenu.ps1")
Invoke-Expression $($WelcomeMainMenu.Content)
