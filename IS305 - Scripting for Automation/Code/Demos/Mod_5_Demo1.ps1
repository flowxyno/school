# This script will introduce  you to my pack at home

# Create the array of dogs
$dogsArr = @(
    [PSCustomObject]@{
        Name = "Raza"
        Age = 6
        Breed = "German Shepard"
    }
    [PSCustomObject]@{
        Name = "Pip"
        Age = 7
        Breed = "Brussels-Griffon/Chihuahua"
    }
)

#How old is Raza?
Write-Host "`nHow old is Raza?" $dogsArr[0].Age

# What breed is Pip?
Write-Host "`nPip is a" $dogsArr[1].Breed

#Add Indy to the array
$dogsArr += [PSCustomObject]@{
    Name = "Indy"
    Age = 6
    Breed = "Blue Heeler"
}

# Was Indy added to the array
$foundDog = $dogsArr | Where-Object {$_.Name -eq "Indy"}

if($foundDog) {
    Write-Host "`nIndy was in the array"
}else{
    Write-Host "`nIndy was not in the array"
}

# Pack introductions through iterations
$dogsArr.ForEach({
    Write-Host "The dog named $($_.Name) is $($_.Age) and is a $($_.Breed)"
})