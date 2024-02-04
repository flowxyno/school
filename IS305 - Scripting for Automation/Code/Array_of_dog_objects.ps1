# This script will introduce  you to my pack at home

$dogsArr = @(
    [PSCustomObject]@{
        Name = "Raza"
        Age = 6
        Breed = "German Shepard"
    }
    [PSCustomObject]@{
        Name = "Pip"
        Age = 7
        Breed = "Brussels-Griffon/Chiauaua"
    }
)

#How old is Raza?
Write-Host "`nHow old is Raza: " $dogsArr[0].Age

# What breed is Pip?
Write-Host "`nWhat breed is Pip: " $dogsArr[2].Breed

#Add Indy to the array
$dogsArr += [PSCustomObject]@{
    Name = "Indy"
    Age = 6
    Breed = "Blue Heeler"
}

# Was Indy added to the array
$foundDog = $dogsArr | Where-Object {$_.Name -eq "Indy"}

if($foundDog){
    Write-Host "`nIndy is in the array"
}else{
    Write-Host "`nIndy is not in the array"
}

# Pack introductions
$dogsArr.ForEach({
    Write-Host "`nDog named $($_.Name) is $($_.Age) years old and is a $($_.Breed)"
})
