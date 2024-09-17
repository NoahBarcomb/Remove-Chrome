
#32 bit version
if (Test-Path "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome") {
    $versions = (Get-ItemProperty -path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome').version

    foreach ($version in $versions) {
        $path = "C:\Program Files\Google\Chrome\Application\" + $version + "\Installer\setup.exe"
        $output = Start-Process $path  -ArgumentList "--uninstall --multi-install --chrome --system-level --force-uninstall" -Wait -WindowStyle Hidden
        Write-Host $output
    }
}

#64 bit version
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome") {
    $versions = (Get-ItemProperty -path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Google Chrome').version

    foreach ($version in $versions) {
        $path = "C:\Program Files\Google\Chrome\Application\" + $version + "\Installer\setup.exe"
        $output = Start-Process $path  -ArgumentList "--uninstall --multi-install --chrome --system-level --force-uninstall" -Wait -WindowStyle Hidden
        Write-Host $output
    }
}