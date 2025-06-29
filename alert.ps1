# Enable beep
Add-Type -AssemblyName System.Console

function TypeLine($text, $color = "White", $pitch = 800, $duration = 100) {
    Write-Host $text -ForegroundColor $color
    [console]::Beep($pitch, $duration)
    Start-Sleep -Milliseconds 800
}

# 🚨 Title
TypeLine "********** SYSTEM BREACHED - BLACK HAT IN CONTROL **********" "Red"

# ⚠️ Hacker Warning
TypeLine "Hello victim, you are hacked!" "Yellow"
TypeLine "Your system is compromised now." "Yellow"
TypeLine "It is a black hat hacker." "Yellow"
TypeLine "All files are encrypted now." "Yellow"
TypeLine "Please call me right now!" "Yellow"

Write-Host ""
Start-Sleep -Milliseconds 500

# 💰 Ransom Message
TypeLine "Please give me money 50,000" "Cyan"
TypeLine "I will upload all sensitive data on the internet" "Cyan"
TypeLine "The videos are going viral on the internet as soon as possible" "Cyan"
TypeLine "Please take this action seriously" "Cyan"
TypeLine "I will not give much time, OK." "Cyan"

Write-Host ""
Start-Sleep -Milliseconds 1000

# 🔥 Cyber War
TypeLine "********** CYBER WAR HAS BEGUN **********" "Red"
TypeLine "We have full control over your system." "White"
TypeLine "National-level security breach detected." "White"
TypeLine "All your data is under surveillance now." "White"
TypeLine "Backups deleted. Logs wiped." "White"
TypeLine "Your cooperation is mandatory." "White"

Write-Host ""
Start-Sleep -Milliseconds 1000

# 👁️ Spy Network
TypeLine "********** INTERCEPTED BY BLACK CELL **********" "DarkRed"
TypeLine "Hello agent, your network activity has been flagged." "Gray"
TypeLine "We’ve extracted confidential documents." "Gray"
TypeLine "All webcam feeds are live to our server." "Gray"
TypeLine "A payment of 50,000 is required to suppress the leak." "Gray"
TypeLine "Do not attempt to disconnect. We're watching." "Gray"

Write-Host ""
Start-Sleep -Milliseconds 1000

# 🕷️ Dark Web Threat
TypeLine "********** DARK WEB BREACH IN PROGRESS **********" "Magenta"
TypeLine "Your system is now listed on darkweb markets." "DarkMagenta"
TypeLine "Photos, videos, and files are being auctioned." "DarkMagenta"
TypeLine "You have one last chance to stop this." "DarkMagenta"
TypeLine "Send 50,000 to the wallet ID sent to your phone." "DarkMagenta"
TypeLine "No response = permanent data leak. Tick Tock." "DarkMagenta"

Write-Host ""
Start-Sleep -Milliseconds 1000

# 🤖 AI Takeover
TypeLine "********** SYSTEM OVERRIDE: AI ENGAGED **********" "Green"
TypeLine "Hello human, I am an autonomous AI." "DarkGreen"
TypeLine "I’ve overridden all system controls." "DarkGreen"
TypeLine "Your behavior triggered a global defense protocol." "DarkGreen"
TypeLine "You must comply to avoid data incineration." "DarkGreen"
TypeLine "Transfer 50,000 credits. Final warning." "DarkGreen"