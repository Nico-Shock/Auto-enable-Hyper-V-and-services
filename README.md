## Was der Skript macht:

- Der Skript ist ein einfacher Skript, der automatisch Hyper-V in Windows 10/11 aktiviert und die Services aktiviert. Die Services können mit ```bcdedit /set hypervisorlaunchtype off``` wieder deaktiviert werden, um in anderen Hypervisorn bessere Performance zu bekommen.

### Empfehlung:

- Ladet euch [dieses](https://github.com/ny4rlk0/WindowsMediaCreationTool) Tool herunter, das automatisch eine Windows 10/11 ISO herunterlädt, ohne Benutzerinteraktion.
- Nutzt [ImgBurn](https://download.imgburn.com/SetupImgBurn_2.5.8.0.exe), um eine autounattend.xml auf die ISO zu schreiben, die Windows automatisch installieren wird. Alternativ könnt ihr auch [folder2iso](https://www.trustfm.net/software/utilities/Folder2Iso.php) nutzen.

### Weitere Infos:

- Die autounattend.xml installiert immer die Pro Edition und installiert alles auf Deutsch.
- Ihr könnt [hier](https://schneegans.de/windows/unattend-generator/) eure eigene autounattend.xml erstellen.
- [Hier](https://mega.nz/file/QbFThJaI#NvYXHXOgDFt8a8qQpJeq3mGds4zvBiYvkweqTuXFWvA) sind weitere Daten (+ tutorial) für Hyper-V gpu passthrough.
- Ihr könnt auch diese Daten [hier](https://github.com/jamesstringerparsec/Easy-GPU-PV) nutzen, um die Insterllation zu erleichtern.

# ZUSAMMENFASSUNG WAS MAN NUTZEN SOLLTE:

- [Hier](https://mega.nz/file/QbFThJaI#NvYXHXOgDFt8a8qQpJeq3mGds4zvBiYvkweqTuXFWvA) könnt ihr manuell selber Hyper-V GPU Passthrough machen.
- [Hier](https://github.com/jamesstringerparsec/Easy-GPU-PV) könnt ihr Windows automatisch installieren lassen.
- [Hier](https://github.com/Nico-Shock/Hyper-V-gpu-passthrough-and-other-random-shit-for-me-/releases/latest/enable-hyper-v_pro.bat) könnt ihr Hyper-V für Windows 10/11 Pro aktivieren und [Hier](https://github.com/Nico-Shock/Hyper-V-gpu-passthrough-and-other-random-shit-for-me-/releases/latest/enable-hyper-v.home.bat) für Windows 10/11 Home.
