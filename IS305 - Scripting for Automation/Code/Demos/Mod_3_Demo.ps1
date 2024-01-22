# This script does basic PowerShell operations

# Use Data types as variables
$intVariable = 30 
$floatVariable = 3.14
$strVariable = "Welcome to PowerShell"

# Demo Printing to the terminal in PowerShell
Write-Host $strVariable

# Demo Arithmetic in PowerShell 
$resultAdd = $intVariable + $intVariable
Write-Host "Addition result: $resultAdd"

$resultSub = $intVariable - $intVariable
Write-Host "Subtraction result: $resultSub"

$resultMult = $floatVariable * $intVariable
Write-Host "Multiplication result: $resultMult"

$resultDiv = $intVariable / $floatVariable
Write-Host "Division result: $resultDiv"

# Create a folder using PowerShell commandlets
$newFolder = "S:\Testing_Ground\Poof_it_appears"
New-item -ItemType Directory -Path $newFolder

# Move a file from one directory to another
Move-Item -Path "S:\Testing_Ground\Move_This\Move_Me.txt" -Destination "S:\Testing_Ground\Poof_it_appears"