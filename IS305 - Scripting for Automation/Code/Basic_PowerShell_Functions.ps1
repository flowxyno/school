# This script does basic PowerShell operations

# Data types to create variables 
$intVariable = 30
$floatVariable = 3.14
$strVariable = "Welcome to PowerShell"

# Demo printing to screen in PowerShell
Write-Host $strVariable

# Arithmetic in PowerShell
$resultAdd = $intVariable + $intVariable
Write-Host "Addition result: $resultAdd"

$resultSub = $intVariable - $intVariable
Write-Host "Subtraction result: $resultSub"

$resultMult = $floatVariable * $intVariable
Write-Host "Multiplication result: $resultMult"

$resultDiv = $intVariable / $floatVariable
Write-Host "Division result: $resultDiv"

# Create a new folder in PowerShell
$newFolder = "S:\Testing_Ground\Poof_it_appears"
New-Item -ItemType Directory -Path $newFolder

# Move a file from one folder to another
Move-Item -Path "S:\Testing_Ground\move_this\Move_Me.txt" -Destination "S:\Testing_Ground\Poof_it_appears"