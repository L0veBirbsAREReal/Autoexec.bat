@Echo off
echo SET SOUND=C:\PROGRA~1\CREATIVE\CTSND
echo SET BLASTER=A220 I5 D1 H5 P330 E620 T6
echo SET PATH=C:\Windows;C:\
echo LH C:\Windows\COMMAND\MSCDEX.EXE /D:MSCD0001
echo LH C:\MOUSE\MOUSE.SYS
echo C:\DOS\SMARTDRV.EXE /X
echo DOSKEY
echo CLS
echo WIN
echo =
echo Nostalgia trip
c:
REM SuperKey R > shell:startup  remove DnD short cuts that are junk.
REM SuperKey R > Msconfig hide  all MS services, to investigate all unknowns, disabled all the non essential inc MS services.
REM SuperKet R > services.msc  kill bloat ware ~ run another program that kills Scumware, cramware, Nagware, Crapware, Bloatware etc

REM CTRL ALT k will hot-key for keepass, we want to start kepass2 by pointing to our *.db and our usb key to KeePass.exe to use passwords and keys for HDDs
REM eg start KeePass.exe "C:\My Documents\Database.kdbx" -preselect:C:\pwsafe.key
REM See https://keepass.info/help/base/cmdline.html

cd "C:\Program Files\KeePass Password Safe 2"
KeePass.exe "L:\_MYDATA\documents\documents\gg\KP\2k26.kdbx " -preselect:K:\Alpha.keyx

echo Attach USB Micro SD Reader FCR - MRG2 Adapter see Git L0veBirbsAREReal KeyGenCryptographyRandomNumberGenerator

REM Mount drives
REM Samsung SSD 980 PRO 1TB is not enough!
REM Seagate IronWolf 10TB 512E models ST10000VN0004 is still not enough!
REM Encrypted drives old games on clunker,
REM Samsung SSD 980 PRO 1TB is VeraCrypt bootloader and running!
REM VeraCrypt to mount Seagate IronWolf 10TB 512E models ST10000VN0004 aka \Device\Harddisk1\Partition2 namely L:\ (LGVXM)

REM ~

REM Start TrueCrypt.exe now VeraCrypt.exe with various toggles for drive access.
REM /q 		quits main window to taskbar
REM /h n  	No saving history of mounted volumes
REM /l 		When /l is omitted and when 'a' is used, the first free drive letter is used.
REM rm 		Mount volume as removable media
REM /v 		verbose no main window
REM /k		It must be followed by a parameter specifying a keyfile or a keyfile search path. For multiple keyfiles, specify e.g.: /k c:\keyfile1.dat /k d:\KeyfileFolder /k c:\kf2 To specify a keyfile stored on a security token or smart card, use the following syntax: token://slot/SLOT_NUMBER/file/FILE_NAME
REM see https://veracrypt.io/en/Command%20Line%20Usage.html


cd "C:\Program Files\VeraCrypt\"
REM Note to get volume id mount once, manually via GUI > right click properties (OS GUID is different)
REM \Device\Harddisk1\Partition2 aka L:\ (LGVXM)
start veracrypt.exe /q background /h n /l w /b /m rm /k K:\Alpha.keyx /v ID:F449EB5A7B139B21F673CD8744C9A458DFDE4EAFAAB8324FA01487BCAE0B3BA2
REM (to mount a file container inside another outer container goes first) Disk with plausible deniability needs correct volume password ** remember both passwords the one you use the least give to your adversary!
REM Mounting https://PortableApps.com
start veracrypt.exe /q background /h n /l w /b /m rm /k K:\Alpha.keyx /v L:\Users\User\USB_pocket\portables\program_files\USB_pocket2k25  

REM run Environmental and engineering controls...
REM Observe CPU  core via task manger
start taskmgr.exe

REM Observe drv, cpu, ssd, hdd, fan speed temps stats via webtemp's graphs in conjunction with "C:\Program Files (x86)\SpeedFan" that is branch tasked from;
REM start "C:\Program Files (x86)\WebTemp\WebTemp.exe" triggers UAC. Go task scheduler > ie schtasks /run /TN afterburner.UAC fix on Win8 "UpGrade"
REM UAC problems? > Bypass UAC for a Program → SuperKey type "Task Scheduler" → "Create Task" called WebTemp.UAC, Check “Run with highest privileges” then Set “Configure for” to your Windows version, Go to the Actions tab → Click New Action: Start a program Browse to your webtemp.exe file, Conditions tab, uncheck “Start only if on AC power” Create a Shortcut copy paste → "C:\Windows\System32\schtasks.exe /RUN /TN "webtemp.UAC" and save as WebTemp.lnk

cd "C:\Program Files (x86)\WebTemp\"
WebTemp.lnk

REM Observe GPU stats, graph framerate, frametime, RAM %, CPU core temps, GPU core temps, CPU power, TACHO monitor etc.. vcool.. via Rivatuner RTSS hook but
REM "start C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.lnk"
REM Fix UAC issues exactly like WebTemp (above)
cd "C:\Program Files (x86)\MSI Afterburner\"
start MSIAfterburner.lnk


REM Observe CPU  core(s) adjust water cooling rpm, temps and radator fan speed.
"C:\Program Files (x86)\CorsairLink4\CorsairLINK4.exe"

REM Observe NICs up and dload rates
rem cd "C:\Program Files (x86)\NetMeter\"
REM NetMeter.exe
"C:\Program Files (x86)\NetMeter\NetMeterEvo.exe"

REM Setup desktop environment

echo socks5 127.0.0.1 9050
cd "C:\Program Files\qTox\bin"
start qTox.exe

echo IPFS needs to run once a day as a service bios wake alarm is 0430Hrs

echo PuTTy
cd "C:\Program Files\PuTTY"
start putty.exe

echo Alt ↑ ↓ ← →  VirtuaWin 
cd "C:\Program Files (x86)\VirtuaWin\"
start VirtuaWin.exe

Echo NotePad++ session location l:\documents\notepadd\*.xml
cd "C:\Program Files (x86)\Notepad++"
start notepad++.exe

echo start VPNs
:: OFF "C:\Program Files\OpenVPN\bin\openvpn-gui.exe"
"C:\Program Files\Mullvad VPN\Mullvad VPN.exe"

echo Play HDTV capture card output
echo Start "C:\Program Files\VideoLAN\VLC\vlc.exe" "C:\Users\User\TV.xspf"
echo play Digital surveillance camera via RCA play through..
Start "C:\Program Files\VideoLAN\VLC\vlc.exe" "C:\Users\User\surveillance_camera.xspf"

echo RIP internode
REM "C:\Program Files (x86)\Internode"
REM start mum.exe

echo "last seen at 03:51 "Turn machine on when i walk in the door. Let mum see I made it home on the piss...
cd C:\Program Files (x86)\Pidgin
start Pidgin.exe
REM timeout /t 60
REM TaskKill /F /IM pidin.exe

timeout /t 5
ECHO RIP Skype Long live Zoom
REM cd c:\program files\skype\phone
REM start skype.exe /nosplash /minimized

REM START SkypeLauncher.exe RIP
REM Taskkill /IM SkypeLauncher.exe /F

M:
REM due to virus found in skypelauncher CMD.exe will be used, as possible compromised passwords can be seen to the clever eye in TCPview or taskmgr!
REM start SkypeL.lnk
REM m:
REM cd sl
REM start jake.tessa.chasewood.lnk
REM timeout /t 3
REM start rjhix.lnk
REM timeout /t 3
REM start sabotagesystemschaos.lnk
REM timeout /t 3
REM start skype.lnk

REM SYNC Mobile devices
REM start "C:\Program Files\BitTorrent Sync\BTSync.exe"

echo Gamming just for weekends ;)
pause
REM Discord start
START C:\Users\User\AppData\Local\Discord\Update.exe --processStart Discord.exe
REM Gamming Stuff
echo Xfire.lnk RIP
REM start ts3client.lnk
"C:\Program Files\TeamSpeak 3 Client\ts3client_win64.exe"     

C:
cd "C:\Program Files (x86)\Razer\Razer Cortex"
:: start RazerCortex.Shell.exe
ECHO R Λ Z Ξ R stuff, Razer Cortex now boots....
start C:\Users\User\razer.bat
      :: cd "c:\users\user\"
      :: start RazerCortex.Shell.lnk
      :: start RazerAxon.lnk
      :: start RazerCentral.lnk
echo Skip Origin.lnk [R Λ Z Ξ R now runs Origin] bloat-ware RIP 2K23 Press F to pay respects Now EA games aka ElectronicArts
echo RIP Bethesda... Welcome to Steam move complete 2022ish...

REM start EA.lnk
REM start Rmonitor.lnk
REM start RzSynapse.lnk
REM start RazerComms.lnk
REM start RazerGameBooster.lnk
REM start Uplay.lnk
REM start Bethesda.net.lnk

REM Start Overwolf.lnk
REM TaskKill /F /IM OverwolfStore.exe

echo [R Λ Z Ξ R now runs the following] :START
echo RIP playfire.lnk
echo RIP Start Raptr.lnk
echo R Λ Z Ξ R stuff, Razer Co
echo SKIP Xbox.lnk 
REM echo SKIP GOG.lnk aka GalaxyClient.lnk Razer Fix?
REM GalaxyClient.lnk
echo SKIP BattleNet.lnk
echo SKIP EA.lnk
echo SKIP Ubisoft_Connect.lnk 

echo SKIP Epic_Games.lnk
echo SKIP Steam.lnk
echo Following [R Λ Z Ξ R now :FINISH]
REM setting steam to "away-mode" see file to cmd-> steam://friends/status/away
C:
cd C:\Program Files (x86)\Steam
start steam.exe
timeout /t 15
echo Put Steam into away mod
start steam://friends/status/away

PAUSE
:: [WIN]+R type ->shell:startup[ENTER] 
:: OR
:: explorer "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

:: splaces to rememeber 
:: %APPDATA%
:: %LOCALAPPDATA%
:: %USERPROFILE%\AppData\Local
:: %USERPROFILE%\AppData\Roaming

echo Launching PowerShell Bypass script...
powershell -ExecutionPolicy Bypass -File "%userprofile%\Path\To\"batchfile.ps1"
echo Done. See "%USERPROFILE%\bat_log.csv" for selection
::
exit
