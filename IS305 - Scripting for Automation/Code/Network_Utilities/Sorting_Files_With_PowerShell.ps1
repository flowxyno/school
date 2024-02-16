# Function to display the main menu
function Show-Menu {
    Clear-Host
    Write-Host "Main Menu"
    Write-Host "1. Sort Photos"
    Write-Host "2. Sort Videos"
    Write-Host "Exit"
    $option = Read-Host "Enter your selection"
    return $option
}

# Function to sort photos
function sortPhotos {
    $sourceDirectory = Read-Host "Enter the source directory for photos"
    $photoDestination = Read-Host "Enter the destination directory for sorted photos"
    
    # Move .jpg files to the photo destination
    $jpgFiles = Get-ChildItem -Path $sourceDirectory -Filter *.jpg
    if ($jpgFiles) {
        Write-Host "Moving .jpg files to $photoDestination..."
        $jpgFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $photoDestination -Verbose
        }
        Write-Host "All Photos have been moved to $photoDestination."
        Read-Host "Press enter to continue ..."
    } else {
        Write-Host "No .jpg files found in $sourceDirectory."
    }
}

# Function to sort videos
function sortVideos {
    $sourceDirectory = Read-Host "Enter the source directory for videos"
    $videoDestination = Read-Host "Enter the destination directory for sorted videos"
    
    # Move .mpg and .avi files to the video destination
    $videoFiles = Get-ChildItem -Path $sourceDirectory -Filter *.mpg, *.avi
    if ($videoFiles) {
        Write-Host "Moving .mpg and .avi files to $videoDestination..."
        $videoFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } else {
        Write-Host "No .mpg or .avi files found in $sourceDirectory."
    }
}

# Main script logic
$loop = $True
while ($loop -eq $True) {
    $option = Show-Menu
    switch ($option) {
        '1' {
            sortPhotos
        }
        '2' {
            sortVideos
        }
        '3' {
            Write-Host "Exiting..."
            $loop = $False
        }
        default {
            Write-Host "Invalid choice. Please try again."
        }
    }
}