<#
.SYNOPSIS
Este script crea una estructura de carpetas y archivos en la ruta "C:\Users\Aula Digital\Desktop\Programes\Powershell".

.DESCRIPTION
El script utiliza el cmdlet "New-Item" para crear una carpeta raíz y varias subcarpetas dentro de ella. Luego, crea archivos en cada una de las subcarpetas.

.PARAMETER None

.EXAMPLE
.\05_Estructura.ps1
Crea la estructura de carpetas y archivos en la ruta especificada.

#>

#CMDLET natius
# Crear la carpeta arrel
New-Item -ItemType Directory -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell"

New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Documents\document1.txt"

# Crear subcarpetes
New-Item -ItemType Directory -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Documents"
New-Item -ItemType Directory -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Imatges"
New-Item -ItemType Directory -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Música"
New-Item -ItemType Directory -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Vídeos"

# Crear arxius a cada subcarpeta
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Documents\document2.docx"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Imatges\image1.jpg"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Imatges\image2.png"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Música\music1.mp3"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Música\music2.wav"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Vídeos\video1.mp4"
New-Item -ItemType File -Path "C:\Users\Aula Digital\Desktop\Programes\Powershell\Vídeos\video2.avi"