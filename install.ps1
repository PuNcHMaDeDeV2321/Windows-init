# Función para imprimir mensajes de éxito en verde
function Write-Success {
    param([string]$message)
    Write-Host $message -ForegroundColor Green
}

# Función para imprimir mensajes de error en rojo
function Write-Error {
    param([string]$message)
    Write-Host $message -ForegroundColor Red
}

# Función para instalar programas usando winget
function Install-Winget {
    param (
        [string]$packageName,
        [string]$displayName
    )
    try {
        Write-Host "Instalando $displayName..."
        winget install --id $packageName -e
        Write-Success "$displayName instalado correctamente."
    } catch {
        Write-Error "Error al instalar $displayName con winget: $_"
    }
}

Install-Winget -packageName "Microsoft.PowerToys" -displayName "Microsoft PowerToys"
Install-Winget -packageName "Microsoft.VisualStudioCode" -displayName "Visual Studio Code"
Install-Winget -packageName "Python.Python.3" -displayName "Python"
Install-Winget -packageName "NodeJS.NodeJS" -displayName "Node.js"
Install-Winget -packageName "Brave.Brave" -displayName "Brave Browser"

Write-Host "Instalación de programas completada."

