@echo off
echo [Cursor AI Temizleyici] Calistiriliyor...

REM Kullanici adini al
set USERNAME=%USERNAME%

REM Cursor ile ilgili klasörleri sil
echo AppData klasörleri siliniyor...
rmdir /S /Q "C:\Users\%USERNAME%\AppData\Roaming\Cursor"
rmdir /S /Q "C:\Users\%USERNAME%\.cursor"

REM VS Code eklentisini kontrol et ve sil
echo VS Code Cursor eklentisi kontrol ediliyor...
rmdir /S /Q "C:\Users\%USERNAME%\.vscode\extensions\cursor*"

echo Tarayici cache ve verileri manuel silinmelidir.
echo Hesabinizi silmek icin https://cursor.sh adresini ziyaret edin.

echo [Islem Tamamlandi]
pause
