:: Workarround for CoronaBlue/SMBGhost Worm exploiting CVE-2020-0796
:: https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/ADV200005
:: Active Directory Administrative Templates
:: https://github.com/technion/DisableSMBCompression
:: Disable SMBv3 compression

:: Ref 0115_Disabling_SMBv3 Compression_SMBGhost.ps1
:: https://portal.msrc.microsoft.com/en-US/security-guidance/advisory/CVE-2020-0796
:: Disable SMBv3 compression. You can disable compression to block unauthenticated attackers from exploiting the vulnerability against an SMBv3 Server 

reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "DisableCompression" /t REG_DWORD /d 1 /f


:: :: powershell.exe Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" DisableCompression -Type DWORD -Value 1 -Force
:: You can disable the workaround with the PowerShell command below.
:: powershell.exe Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" DisableCompression -Type DWORD -Value 0 -Force