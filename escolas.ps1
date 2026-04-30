choco feature enable -n allowGlobalConfirmation --yes
choco install adobereader --yes
choco install nanazip --yes
choco install firefox --yes
choco install googlechrome --ignore-checksums --yes
choco install notepadplusplus.install --yes
choco install jre8 --yes
choco install paint.net --yes
choco install pdf24 --yes
choco install vlc --yes
choco install zoom --yes
choco install vcredist-all 
choco install scratch --yes
choco install glpi-agent --install-arguments="SERVER=https://glpi.cm-penela.pt/ TAG=Escolas RUNNOW=1"
choco install microsoft-teams-new-bootstrapper --yes
choco install choco-upgrade-all-at-startup


Write-Host -ForegroundColor Cyan "Procurando pen USB com Office..."

$OfficeInstalled = $false

$Drives = Get-Volume | Where-Object {
    $_.DriveType -eq 'Removable' -and $_.DriveLetter
}

foreach ($Drive in $Drives) {
    $Path = "$($Drive.DriveLetter):\Office\setup.exe"
    $Config = "$($Drive.DriveLetter):\Office\config.xml"

    if (Test-Path $Path) {
        Write-Host -ForegroundColor Green "Office encontrado em $Path"

        if (Test-Path $Config) {
            Write-Host "Instalando Office com config.xml..."
            Start-Process -FilePath $Path -ArgumentList "/configure `"$Config`"" -Wait
        }
        else {
            Write-Host "Instalando Office modo default..."
            Start-Process -FilePath $Path -ArgumentList "/quiet" -Wait
        }

        $OfficeInstalled = $true
        break
    }
}

if (-not $OfficeInstalled) {
    Write-Host -ForegroundColor Yellow "Nenhuma instalação do Office encontrada na pen."
}

# Rename PC
$Serial = (Get-CimInstance Win32_BIOS).SerialNumber
$Suffix = $Serial.Substring($Serial.Length - 5)
$NewName = "CMP-$Suffix"

Rename-Computer -NewName $NewName -Force



