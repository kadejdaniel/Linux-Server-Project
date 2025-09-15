# 🔗 Połączenie SSH z mojego Windowsa do Linuxa (VirtualBox, LAN)

Chcę połączyć się z mojego domowego PC z systemem **Windows** do serwera **Linux**, który działa na maszynie wirtualnej w **VirtualBox**.  
Całość ma działać w mojej lokalnej sieci (LAN).

---

## 🛠️ Mój plan działania

### 1. Ustawienie sieci maszyny wirtualnej
Na początek muszę w VirtualBox zmienić ustawienia sieci z **NAT** na **kartę mostkowaną (Bridged Adapter)**.  
Dzięki temu moja wirtualka dostanie własny adres IP w LAN i będzie widoczna dla innych urządzeń, a nie ukryta za adresem hosta.

---

### 2. Firewall
Kolejny krok to konfiguracja firewalla:
- Na Linuxie (gościu) muszę upewnić się, że port **22** (SSH) jest otwarty.  
- Na Windowsie (hoście) sprawdzę, czy żadne reguły nie blokują ruchu wychodzącego na ten port.  

---

### 3. Instalacja i konfiguracja SSH na Linuxie
Na serwerze Linux instaluję usługę:
```bash
sudo apt update
sudo apt install openssh-server -y - instalacja z flaga -y aby dać automatyczne yes
sudo systemctl status ssh - sprawdzenie czy dziala ssh
```

### 4. Sprawdzenie sieci

Sprawdzenie sieci na linuxie, sprawdzam adres IP za pomocą:
``` bash
ip a
```
### 5. Połączenie z Windowsa

Na moim PC z windowsem otwieram cmd i wpisuję:

ssh dankad@192.168.x.x
