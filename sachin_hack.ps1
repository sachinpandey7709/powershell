# Clear screen
Clear-Host

# Simulate typing function
function Type-Effect($text, $color, $delay=100) {
    foreach ($char in $text.ToCharArray()) {
        Write-Host -NoNewline $char -ForegroundColor $color
        Start-Sleep -Milliseconds $delay
    }
    Write-Host ""
}

# Fake hacking message
Type-Effect "You are hacked!" Red 100
Start-Sleep -Milliseconds 500
Type-Effect "Sachin is here..." Green 100
Start-Sleep -Milliseconds 700

# Get local IP
$ip = (Get-NetIPAddress -AddressFamily IPv4 |
       Where-Object {$_.InterfaceAlias -notmatch "Loopback"} |
       Select-Object -First 1 -ExpandProperty IPAddress)

# Get current username
$user = $env:USERNAME

# Get system name
$comp = $env:COMPUTERNAME

# Display info
Write-Host ""
Type-Effect "Fetching target info..." Yellow 75
Start-Sleep -Milliseconds 1000
Write-Host "User      : $user" -ForegroundColor Cyan
Write-Host "System    : $comp" -ForegroundColor Cyan
Write-Host "Local IP  : $ip" -ForegroundColor Cyan

# Optionally fetch public IP and Geo Info
try {
    $geo = Invoke-RestMethod "http://ip-api.com/json"
    Write-Host "Public IP : $($geo.query)" -ForegroundColor Cyan
    Write-Host "Location  : $($geo.city), $($geo.regionName), $($geo.country)" -ForegroundColor Cyan
    Write-Host "ISP       : $($geo.isp)" -ForegroundColor Cyan
} catch {
    Write-Host "Could not fetch public IP/location." -ForegroundColor DarkGray
}

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor Magenta
$x = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")