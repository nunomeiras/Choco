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
choco install choco-upgrade-all-at-startup


# Rename PC
$Serial = (Get-CimInstance Win32_BIOS).SerialNumber
$Suffix = $Serial.Substring($Serial.Length - 5)
$NewName = "CMP-$Suffix"

Rename-Computer -NewName $NewName -Force



