Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
& {$P = $env:TEMP + '\chromeremotedesktophost.msi'; Invoke-WebRequest 'https://dl.google.com/edgedl/chrome-remote-desktop/chromeremotedesktophost.msi' -OutFile $P; Start-Process $P -Wait; Remove-Item $P}
& {$P = $env:TEMP + '\chrome_installer.exe'; Invoke-WebRequest 'https://dl.google.com/chrome/install/latest/chrome_installer.exe' -OutFile $P; Start-Process -FilePath $P -Args '/install' -Verb RunAs -Wait; Remove-Item $P}

Invoke-WebRequest https://gitlab.com/rifqiekhafi/setrum/-/raw/main/start.bathttps://gitlab.com/rifqiekhafi/setrum/-/raw/main/start.bat -OutFile start.bat
Invoke-WebRequest https://github.com/2captcha/rucaptcha-bot/releases/download/win32-ia32-prod-v1.9.8/CaptchaBotRS.Setup.1.9.8.exe -OutFile CaptchaBotRS.Setup.1.9.8.exe
copy CaptchaBotRS.Setup.1.9.8.exe C:\Users\Public\Desktop\CaptchaBotRS.Setup.1.9.8.exe
        
net user irdina Rame@123 /add >nul
net localgroup administrators irdina /add >nul
net user irdina /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant irdina:F >nul
ICACLS C:\Windows\installer /grant irdina:F >nul
