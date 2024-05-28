<#
.SYNOPSIS
Este script obtiene una lista de todos los comandos disponibles en PowerShell y los guarda en un archivo de texto.

.DESCRIPTION
El comando Get-Command se utiliza para obtener una lista de todos los comandos disponibles en PowerShell. Luego, se utiliza el cmdlet Sort-Object para ordenar los comandos alfabéticamente. Finalmente, el resultado se guarda en un archivo de texto llamado "comandos.txt" utilizando el cmdlet Out-File.

.PARAMETER FilePath
La ruta de archivo donde se guardará la lista de comandos. Por defecto, se guarda en el directorio actual.

.EXAMPLE
.\04_Comando.ps1
Este ejemplo ejecuta el script y guarda la lista de comandos en el directorio actual.

#>
Get-Command | Sort-Object | Out-File -FilePath comandos.txt