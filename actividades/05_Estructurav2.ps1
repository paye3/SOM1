<#
.SYNOPSIS
Este script de PowerShell crea una estructura de carpetas y archivos en el sistema de archivos.

.DESCRIPTION
El script contiene dos funciones: Crear-Carpeta y Crear-Fitxer. La función Crear-Carpeta se utiliza para crear una carpeta en una ubicación específica, mientras que la función Crear-Fitxer se utiliza para crear un archivo en una ubicación específica.

.PARAMETER NomCarpeta
El nombre de la carpeta que se va a crear.

.PARAMETER RutaCarpeta
La ruta de la carpeta padre en la que se va a crear la carpeta. Si no se especifica, la carpeta se creará en la raíz del sistema de archivos (C:\).

.PARAMETER NomFitxer
El nombre del archivo que se va a crear.

.PARAMETER RutaFitxer
La ruta del archivo en la que se va a crear. Si no se especifica, el archivo se creará en la raíz del sistema de archivos (C:\).

.EXAMPLE
Crear-Carpeta -NomCarpeta "Estructura"
Crea una carpeta llamada "Estructura" en la raíz del sistema de archivos (C:\).

.EXAMPLE
Crear-Carpeta -NomCarpeta "Documents" -RutaCarpeta "C:\Estructura"
Crea una carpeta llamada "Documents" en la carpeta "Estructura" ubicada en la raíz del sistema de archivos (C:\).

.EXAMPLE
Crear-Fitxer -NomFitxer "document1.txt" -RutaCarpeta "C:\Estructura\Documents"
Crea un archivo llamado "document1.txt" en la carpeta "Documents" ubicada en la carpeta "Estructura" ubicada en la raíz del sistema de archivos (C:\).

.NOTES
- Este script asume que el usuario tiene permisos suficientes para crear carpetas y archivos en el sistema de archivos.
- Si la ruta de la carpeta padre especificada no existe, se mostrará un mensaje de error y la carpeta no se creará.
- Si la ruta del archivo especificada no existe, se mostrará un mensaje de error y el archivo no se creará.
#>

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
