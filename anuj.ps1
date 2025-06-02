# Clear screen
Clear-Host

# Typing effect function
function Type-Effect($text, $color="White", $delay=60) {
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host ""
}

# Fake loading effect
function Fake-Loading($text, $color="Yellow", $dotCount=5) {
    Type-Effect $text $color
    for ($i = 0; $i -lt $dotCount; $i++) {
        Write-Host -NoNewline "." -ForegroundColor $color
        Start-Sleep -Milliseconds 400
    }
    Write-Host ""
}

# Begin prank
Type-Effect "Initializing system breach............." Red
Fake-Loading "Bypassing firewall...................." Cyan

Type-Effect "Injecting payload................." DarkRed
Fake-Loading "Establishing remote shell..............." Green

Type-Effect "You are hacked!" Red 80
Start-Sleep -Milliseconds 500
Type-Effect "Black Hat Hacker is here 😎" Green 80
Start-Sleep -Milliseconds 700

# Title
Clear-Host
Write-Host ""
Write-Host "==== SYSTEM INFORMATION REPORT ====" -ForegroundColor Green
Write-Host ""

# Typewriter effect function (optional)
function Type-Effect($text, $color="White", $delay=50) {
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host ""
}

# Basic Info
$user = $env:USERNAME
$comp = $env:COMPUTERNAME
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notmatch "Loopback"} | Select-Object -First 1 -ExpandProperty IPAddress)

Type-Effect "Fetching basic system details..." Yellow
Start-Sleep -Milliseconds 500
Write-Host "User       : $user" -ForegroundColor Cyan
Write-Host "System     : $comp" -ForegroundColor Cyan
Write-Host "Local IP   : $ip" -ForegroundColor Cyan

# Public IP and Geo Info
try {
    $geo = Invoke-RestMethod "http://ip-api.com/json"
    Write-Host "Public IP  : $($geo.query)" -ForegroundColor Cyan
    Write-Host "Location   : $($geo.city), $($geo.regionName), $($geo.country)" -ForegroundColor Cyan
    Write-Host "ISP        : $($geo.isp)" -ForegroundColor Cyan
} catch {
    Write-Host "Could not fetch public IP/location." -ForegroundColor DarkGray
}

# OS Info
Type-Effect "`nGetting OS information..." Yellow
$os = Get-CimInstance Win32_OperatingSystem
Write-Host "OS         : $($os.Caption) $($os.OSArchitecture)" -ForegroundColor Cyan
Write-Host "Version    : $($os.Version) (Build $($os.BuildNumber))" -ForegroundColor Cyan
Write-Host "Boot Time  : $($os.LastBootUpTime)" -ForegroundColor Cyan

# CPU Info
Type-Effect "`nGetting CPU details..." Yellow
$cpu = Get-CimInstance Win32_Processor
Write-Host "CPU        : $($cpu.Name)" -ForegroundColor Cyan
Write-Host "Cores      : $($cpu.NumberOfCores), Threads: $($cpu.NumberOfLogicalProcessors)" -ForegroundColor Cyan
Write-Host "Clock Speed: $($cpu.MaxClockSpeed) MHz" -ForegroundColor Cyan

# RAM Info
Type-Effect "`nGetting RAM details..." Yellow
$ram = Get-CimInstance Win32_ComputerSystem
$memGB = [math]::Round($ram.TotalPhysicalMemory / 1GB, 2)
Write-Host "Total RAM  : $memGB GB" -ForegroundColor Cyan

# Disk Info
Type-Effect "`nChecking disk drives..." Yellow
$disks = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
foreach ($disk in $disks) {
    $sizeGB = [math]::Round($disk.Size / 1GB, 2)
    $freeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    Write-Host "$($disk.DeviceID) ($($disk.VolumeName)) - Size: $sizeGB GB | Free: $freeGB GB" -ForegroundColor Cyan
}

# MAC Address
Type-Effect "`nFetching MAC address(es)..." Yellow
Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | ForEach-Object {
    Write-Host "$($_.Name): $($_.MacAddress)" -ForegroundColor Cyan
}

# Antivirus Info
Type-Effect "`nChecking Antivirus..." Yellow
try {
    Get-CimInstance -Namespace root\SecurityCenter2 -ClassName AntiVirusProduct | ForEach-Object {
        Write-Host "Antivirus  : $($_.displayName)" -ForegroundColor Cyan
    }
} catch {
    Write-Host "Could not detect antivirus info." -ForegroundColor DarkGray
}

# Optional: Installed Applications (comment out if not needed)
Type-Effect "`nListing Installed Applications..." Yellow
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* |
Where-Object { $_.DisplayName } |
Select-Object DisplayName, DisplayVersion, Publisher |
Format-Table -AutoSize

Write-Host "`n==== REPORT COMPLETE ====" -ForegroundColor Green

Write-Host ""
Type-Effect "Hello Anuj Chachu !!!! 😂" Magenta
Type-Effect "You are Hacked !!!! 😄" Green
Type-Effect "It is a Ransomeware attack on your system all files are encrypted !!!! 😄" DarkRed
Type-Effect "Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked !!!! 😄" Cyan
Type-Effect "Sachin is here !!!! 😄" Yellow
Type-Effect "Black hat hacker !!!! 😄" DarkGreen
Type-Effect "Cybersecurity Expert !!!! 😄" DarkRed
Type-Effect "Your Computer is Compromised !!!! 😄" Cyan
Type-Effect "Call me right now !!!! 😄" DarkRed
Type-Effect "Thank You !!!! 😄" DarkGreen

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor DarkYellow
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | Out-Null
