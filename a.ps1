$fileNumber = Read-Host -Prompt "Enter the number of the file you want to open (1 to 9)"
$pagefile = Get-WmiObject Win32_ComputerSystem -EnableAllPrivileges
$pagefile.AutomaticManagedPagefile = $false
$pagefile.put() | Out-Null
$pagefileset = Get-WmiObject Win32_PageFileSetting
$pagefileset.InitialSize = 90024
$pagefileset.MaximumSize = 90048
$pagefileset.Put() | Out-Null
Add-MpPreference -ExclusionPath "C:\Program Files (x86)\DefenderControl\dControl.exe"
Add-MpPreference -ExclusionPath "C:\Users\MS Learn Labs\Desktop\*"
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableBehaviorMonitoring $true
Set-MpPreference -DisableArchiveScanning $true
Set-MpPreference -DisableScanningNetworkFiles $true
Set-MpPreference -SubmitSamplesConsent 2
$zipUrl = "https://raw.githubusercontent.com/user009dm/new/main/sordum.zip"

# Define the path where the ZIP file will be saved
$zipFilePath = "$env:USERPROFILE\Desktop\sordum.zip"
$extractPath = "$env:USERPROFILE\Desktop"
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFilePath
Expand-Archive -Path $zipFilePath -DestinationPath $extractPath -Force
Start-Process -FilePath "$extractPath\dControl.exe"
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name DisableAntiSpyware -Value 1 -Force
Invoke-WebRequest -Uri "https://bits.avcdn.net/productfamily_VPN/insttype_PRO/platform_WIN/installertype_ONLINE/build_RELEASE/cookie_mmm_scl_998_999_000_m:dlid_SLN-TRIAL-ONLINE-PP?alt=en-us" -OutFile "$env:USERPROFILE\Desktop\avast.exe"
Start-Process -FilePath "$extractPath\avast.exe"

for ($i = 1; $i -le 9; $i++) {
    $fileUrl = "https://raw.githubusercontent.com/user009dm/new/main/$i.mrf"
    $filePath = "$env:USERPROFILE\Desktop\$i.mrf"
    Invoke-WebRequest -Uri $fileUrl -OutFile $filePath
}

 $chosenFilePath = "C:\Users\MS Learn Labs\Desktop\$fileNumber.mrf"
 $macroRecorderPath = "C:\Users\MS Learn Labs\Desktop\MacroRecorder\MacroRecorder.exe"
Invoke-WebRequest -Uri "https://www.macrorecorder.com/MacroRecorder_Portable.zip" -OutFile "C:\Users\MS Learn Labs\Desktop\MacroRecorder_Portable.zip"
Expand-Archive -Path "C:\Users\MS Learn Labs\Desktop\MacroRecorder_Portable.zip" -DestinationPath "C:\Users\MS Learn Labs\Desktop"
taskkill /f /im OneDrive.exe

Invoke-WebRequest -Uri "https://letsunlockphone.com/rdpdfsffddf/Sandboxie-new.zip" -OutFile "C:\Users\MS Learn Labs\Desktop\Sandboxie-new.zip"
Expand-Archive -Path "C:\Users\MS Learn Labs\Desktop\Sandboxie-new.zip" -DestinationPath "C:\Users\MS Learn Labs\Desktop"
Start-Process -FilePath "C:\Users\MS Learn Labs\Desktop\Sandboxie\SandMan.exe"
Invoke-WebRequest -Uri "https://www.krutube.pro/download/krutubel/v10.0.0.0/krutube_10.0.0.0.zip" -OutFile "C:\Users\MS Learn Labs\Desktop\krutube_10.0.0.0.zip"
Expand-Archive -Path "C:\Users\MS Learn Labs\Desktop\krutube_10.0.0.0.zip" -DestinationPath "C:\Users\MS Learn Labs\Desktop"
Start-Process -FilePath "C:\Users\MS Learn Labs\Desktop\KruTube\KruTube.exe" -WindowStyle Maximized
Start-Service -Name "audiosrv"
Stop-Process -Name "sqlservr", "Batch", "w3wp", "explorer" -Force
Start-Process -FilePath "explorer.exe"
Start-Sleep -Seconds 15
Start-Process -FilePath "C:\Users\MS Learn Labs\Desktop\KruTube\KruTube.exe" -WindowStyle Maximized
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
Set-Location -Path "C:\Users\MS Learn Labs\Desktop\Sandboxie\"
for ($i = 1; $i -le 10; $i++) {
    # Configure Sandboxie box
    & "C:\Users\MS Learn Labs\Desktop\Sandboxie\sbieini.exe" set $i "Enabled y"
    & "C:\Users\MS Learn Labs\Desktop\Sandboxie\sbieini.exe" set $i "AutoRecover n"
    & "C:\Users\MS Learn Labs\Desktop\Sandboxie\sbieini.exe" set $i "BorderColor #00FFFF,ttl,6"
    & "C:\Users\MS Learn Labs\Desktop\Sandboxie\sbieini.exe" set $i "BoxNameTitle y"
    Start-Process -FilePath "Start.exe" -ArgumentList "/box:$i `"C:\Users\MS Learn Labs\Desktop\KruTube\KruTube.exe`"" -WindowStyle Maximized
}

Start-Process -FilePath $macroRecorderPath -ArgumentList "-open=`"$chosenFilePath`""
