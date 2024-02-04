# Extracting data types from Variables and Demoing Environmental variables

# How to get the type of data in a variable:
$strVar = "Hello my name is Tracy."
#$strVar.GetType()
$strVar.GetType().Name

$arrayVar = "Red", 25, $True, 3.14
#$arrayVar.GetType()
$arrayVar.GetType().Name

$boolVar = $False
#$boolVar.GetType()
$boolVar.GetType().Name

# Environment Variables:
Write-Host "This is my Homepath: $Env:HOMEPATH"
Write-Host "Here is how many processors are in my computer: $Env:NUMBER_OF_PROCESSORS"

$Env:TESTUSER = "Tracy"
$testuserType = $Env:TESTUSER.GetType().Name
Write-Host "Hey $Env:TESTUSER!! We can even use custom environmental variable in a script"
Write-Host "The type of data in Env:TESTUSER is: $testuserType"