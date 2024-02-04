# Extracting data types from Variables and Demoing Environment variables

# How to get the type of data in a variable:
$strVar = "Hello my name is Tracy"
#$strVar.GetType()
$strVar.GetType().Name
$arrayVar = "Black", 34, $True, 3.14
#$arrayVar.GetType()
$arrayVar.GetType().Name
$boolVar = $False
#$boolVar.GetType()
$boolVar.GetType().Name

# Environment Variables:
Write-Host "The name of my computer is: $Env:COMPUTERNAME"
$Env:COMPUTERNAME.GetType().Name

$Env:TESTUSER = "Tracy"
Write-Host "Hey $Env:TESTUSER!! You can use environment variables in your scripts."