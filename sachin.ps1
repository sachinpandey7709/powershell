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

# Get system info
$user = $env:USERNAME
$comp = $env:COMPUTERNAME
$ip = (Get-NetIPAddress -AddressFamily IPv4 | Where-Object {$_.InterfaceAlias -notmatch "Loopback"} | Select-Object -First 1 -ExpandProperty IPAddress)

# Display system info
Write-Host ""
Type-Effect "Fetching target system details.................." Yellow
Start-Sleep -Milliseconds 1000

Write-Host "User      : $user" -ForegroundColor Cyan
Write-Host "System    : $comp" -ForegroundColor Cyan
Write-Host "Local IP  : $ip" -ForegroundColor Cyan

try {
    $geo = Invoke-RestMethod "http://ip-api.com/json"
    Write-Host "Public IP : $($geo.query)" -ForegroundColor Cyan
    Write-Host "Location  : $($geo.city), $($geo.regionName), $($geo.country)" -ForegroundColor Cyan
    Write-Host "ISP       : $($geo.isp)" -ForegroundColor Cyan
} catch {
    Write-Host "Could not fetch public IP/location." -ForegroundColor DarkGray
}

Write-Host ""
Type-Effect "Hello Papa !!!! 😂" Magenta
Type-Effect "You are Hacked !!!! 😄" Green
Type-Effect "It is a Ransomeware attack on your system all files are encrypted !!!! 😄" DarkRed
Type-Effect "Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked Hacked !!!! 😄" DarkGreen
Type-Effect "Your Computer is Compromised !!!! 😄" DarkGreen
Type-Effect "Sachin is here !!!! 😄" DarkRed
Type-Effect "Black hat hacker !!!! 😄" DarkGreen
Type-Effect "Cybersecurity Expert !!!! 😄" DarkRed
Type-Effect "Call me right now !!!! 😄" DarkRed
Type-Effect "Thank You !!!! 😄" DarkGreen

Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor DarkYellow
$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown") | Out-Null
