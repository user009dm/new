Invoke-WebRequest -Uri 'https://www.krutube.pro/download/krutubel/v10.2.0.0/krutube_10.2.0.0.zip' -OutFile "$env:USERPROFILE\Desktop\krutube_10.1.0.0.zip"
Expand-Archive -Path "$env:USERPROFILE\Desktop\krutube_10.1.0.0.zip" -DestinationPath "$env:USERPROFILE\Desktop"
Start-Process -FilePath "$env:USERPROFILE\Desktop\KruTube\KruTube.exe" -WindowStyle Maximized
Exit # This will keep the window open so you can see any errors
