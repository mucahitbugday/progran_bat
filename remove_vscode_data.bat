@echo off
echo VS Code kaldirma islemi baslatildi...

:: VS Code uygulamasini kaldir
echo Uygulama kaldiriliyor...
powershell -Command "Get-AppxPackage *Code* | Remove-AppxPackage"
wmic product where "name like '%%Visual Studio Code%%'" call uninstall /nointeractive

:: VS Code ayarlarini, uzantilari ve cache dosyalarini sil
echo Ayarlar, uzantilar ve cache siliniyor...
rmdir /s /q "%APPDATA%\Code"
rmdir /s /q "%USERPROFILE%\.vscode"
rmdir /s /q "%LOCALAPPDATA%\Programs\Microsoft VS Code"
rmdir /s /q "%LOCALAPPDATA%\Code"
rmdir /s /q "%APPDATA%\Code - Insiders"
rmdir /s /q "%LOCALAPPDATA%\Programs\Microsoft VS Code Insiders"
rmdir /s /q "%APPDATA%\Code\User\profiles"
rmdir /s /q "%APPDATA%\Code - Insiders\User\profiles"
rmdir /s /q "%USERPROFILE%\.vscode\profiles"
rmdir /s /q "%APPDATA%\Code"
rmdir /s /q "%LOCALAPPDATA%\Programs\Microsoft VS Code"
rmdir /s /q "%USERPROFILE%\.vscode"

echo Tum Visual Studio Code dosyalari kaldirildi.
pause
