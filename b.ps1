Invoke-WebRequest -Uri 'https://www.krutube.pro/download/krutubel/v10.1.0.0/krutube_10.1.0.0.zip' -OutFile 'C:\Users\MS Learn Labs\Desktop\krutube_10.1.0.0.zip'
Expand-Archive -Path 'C:\Users\MS Learn Labs\Desktop\krutube_10.1.0.0.zip' -DestinationPath 'C:\Users\MS Learn Labs\Desktop'
Start-Process -FilePath 'C:\Users\MS Learn Labs\Desktop\KruTube\KruTube.exe' -WindowStyle Maximized
Exit # This will keep the window open so you can see any errors
