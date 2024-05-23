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