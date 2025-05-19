choco install 7zip.install --yes
choco install anydesk --yes --params="'/INSTALL /DESKTOPICON /UPDATETYPE:auto --set-password aifrd5d'"
choco install firefox --yes
choco install googlechrome --ignore-checksums --yes
choco install notepadplusplus.install --yes
choco install jre8 --yes
choco install paint.net --yes
choco install pdf24 --yes
choco install vlc --yes
choco install zoom --yes
choco install dotnet-8.0-desktopruntime --yes
choco install --yes tightvnc --installArguments "ADDLOCAL=Server SERVER_REGISTER_AS_SERVICE=1 SERVER_ADD_FIREWALL_EXCEPTION=1 SET_USEVNCAUTHENTICATION=1 VALUE_OF_USEVNCAUTHENTICATION=1 SET_PASSWORD=1 VALUE_OF_PASSWORD=P@ssw0rd SET_USECONTROLAUTHENTICATION=1 VALUE_OF_USECONTROLAUTHENTICATION=1 SET_CONTROLPASSWORD=1 VALUE_OF_CONTROLPASSWORD=Penela01"
choco install glpi-agent --yes --install-arguments="SERVER=https://glpi.cm-penela.pt/front/inventory.php TAG=InstalledByChocolatey RUNNOW=1 ADD_FIREWALL_EXCEPTION=1"
