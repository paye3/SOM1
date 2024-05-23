# Funció per crear una carpeta
function Crear-Carpeta {
    # CmdletBinding no és necessari en aquest cas
    param (
        # Nom de la carpeta
        [Parameter(Mandatory=$true)]
        $NomCarpeta,

        # Ruta de la carpeta pare (opcional)
        [Parameter(ValueFromRemainingArguments=$true)]
        $RutaCarpeta = "C:\"
    )

    # Comprovar si la ruta de la carpeta pare existeix
    if (-Not (Test-Path -Path $RutaCarpeta)) {
        Write-Error "La ruta de la carpeta pare '$RutaCarpeta' no existeix."
        return
    }

    # Crear la carpeta
    New-Item -ItemType Directory -Path "$RutaCarpeta\$NomCarpeta" -Force
}

# Funció per crear un fitxer
function Crear-Fitxer {
    # CmdletBinding no és necessari en aquest cas
    param (
        # Nom del fitxer
        [Parameter(Mandatory=$true)]
        $NomFitxer,

        # Ruta del fitxer (opcional)
        [Parameter(ValueFromRemainingArguments=$true)]
        $RutaFitxer = "C:\"
    )

    # Crear el fitxer
    New-Item -ItemType File -Path "$RutaFitxer\$NomFitxer" -Force
}

# Crear la carpeta arrel
Crear-Carpeta -NomCarpeta "Estructura"

# Crear subcarpetes
Crear-Carpeta -NomCarpeta "Documents" -RutaCarpeta "C:\Estructura"
Crear-Carpeta -NomCarpeta "Imatges" -RutaCarpeta "C:\Estructura"
Crear-Carpeta -NomCarpeta "Música" -RutaCarpeta "C:\Estructura"
Crear-Carpeta -NomCarpeta "Vídeos" -RutaCarpeta "C:\Estructura"

# Crear fitxers a cada subcarpeta
Crear-Fitxer -NomFitxer "document1.txt" -RutaCarpeta "C:\Estructura\Documents"
Crear-Fitxer -NomFitxer "document2.docx" -RutaCarpeta "C:\Estructura\Documents"
Crear-Fitxer -NomFitxer "image1.jpg" -RutaCarpeta "C:\Estructura\Imatges"
Crear-Fitxer -NomFitxer "image2.png" -RutaCarpeta "C:\Estructura\Imatges"
Crear-Fitxer -NomFitxer "music1.mp3" -RutaCarpeta "C:\Estructura\Música"
Crear-Fitxer -NomFitxer "music2.wav" -RutaCarpeta "C:\Estructura\Música"
Crear-Fitxer -NomFitxer "video1.mp4" -RutaCarpeta "C:\Estructura\Vídeos"
Crear-Fitxer -NomFitxer "video2.avi" -RutaCarpeta "C:\Estructura\Vídeos"

# Missatge de confirmació
Write-Host "Estructura creada correctament a: C:\Estructura"
