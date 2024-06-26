function Write-Success {
    param([string]$message)
    Write-Host $message -ForegroundColor Green
}

function Write-Error {
    param([string]$message)
    Write-Host $message -ForegroundColor Red
}

function Install-Winget {
    param (
        [string]$packageName,
        [string]$displayName
    )
    try {
        Write-Host "Instalando $displayName..."
        winget install $packageName -s winget -e
        Write-Success "$displayName instalado correctamente."
    } catch {
        Write-Error "Error al instalar $displayName con winget: $_"
    }
}

Install-Winget -packageName "Microsoft.PowerToys" -displayName "Microsoft PowerToys"
Install-Winget -packageName "Microsoft.VisualStudioCode" -displayName "Visual Studio Code"
Install-Winget -packageName "Python.Python.3" -displayName "Python"
Install-Winget -packageName "BraveSoftware.Brave-Browser" -displayName "Brave Browser"
Install-Winget -packageName "NodeJS.NodeJS" -displayName "Node.js"

Write-Host "Instalación de programas completada."
