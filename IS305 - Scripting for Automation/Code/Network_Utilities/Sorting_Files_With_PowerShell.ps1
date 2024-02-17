# Function to display the main menu
function Show-Menu {
    Clear-Host
    Write-Host "Main Menu"
    Write-Host "1. Sort Photos"
    Write-Host "2. Sort Videos"
    Write-Host "3. Go Back"
    $option = Read-Host "Enter your selection"
    return $option
}

# Function to sort photos
function sortPhotos {
    $sourceDirectory = Read-Host "Enter the source directory for photos"
    $photoDestination = Read-Host "Enter the destination directory for sorted photos"
    
    # Move various phot files files to the photo destination
    $jpgFiles = Get-ChildItem -Path $sourceDirectory -Filter *.jpg
    $jpegFiles = Get-ChildItem -Path $sourceDirectory -Filter *.jpeg
    $pngFiles = Get-ChildItem -Path $sourceDirectory -Filter *.png

    if ($jpgFiles) {
        Write-Host "Moving .jpg files to $photoDestination..."
        $jpgFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $photoDestination -Verbose
        }
    } 
    if ($jpegFiles) {
        Write-Host "Moving .jpeg files to $photoDestination..."
        $jpegFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $photoDestination -Verbose
        }
    } 
    if ($pngFiles) {
        Write-Host "Moving .png files to $photoDestination..."
        $pngFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $photoDestination -Verbose
        }
    } 
    
    if (!$jpgFiles -and !$jpegFiles -and !$pngFiles) {
        Write-Host "No .jpg, .jpeg, or .png files found in $sourceDirectory"
    }else {
        Write-Host "All Photos have been moved to $photoDestination."
    }
    Read-Host "Press enter to continue ..."
}

# Function to sort videos
function sortVideos {
    $sourceDirectory = Read-Host "Enter the source directory for videos"
    $videoDestination = Read-Host "Enter the destination directory for sorted videos"
    
    # Move various video files to the video destination
    $mpgFiles = Get-ChildItem -Path $sourceDirectory -Filter *.mpg
    $aviFiles = Get-ChildItem -Path $sourceDirectory -Filter *.avi
    $mp4Files = Get-ChildItem -Path $sourceDirectory -Filter *.mp4
    $3gpFiles = Get-ChildItem -Path $sourceDirectory -Filter *.3gp
    $3g2Files = Get-ChildItem -Path $sourceDirectory -Filter *.3g2
    $modFiles = Get-ChildItem -Path $sourceDirectory -Filter *.MOD
    $wmvFiles = Get-ChildItem -Path $sourceDirectory -Filter *.wmv

    if ($mpgFiles) {
        Write-Host "Moving .mpg files to $videoDestination..."
        $mpgFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($aviFiles) {
        Write-Host "Moving .avi files to $videoDestination..."
        $aviFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($mp4Files) {
        Write-Host "Moving .mp4 files to $videoDestination..."
        $mp4Files | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($3gpFiles) {
        Write-Host "Moving .3gp files to $videoDestination..."
        $3gpFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($3g2Files) {
        Write-Host "Moving .3g2 files to $videoDestination..."
        $3g2Files | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($modFiles) {
        Write-Host "Moving .MOD files to $videoDestination..."
        $modFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 
    if ($wmvFiles) {
        Write-Host "Moving .wmv files to $videoDestination..."
        $wmvFiles | ForEach-Object {
            Write-Host "Moving $($_.Name)..."
            Move-Item -Path $_.FullName -Destination $videoDestination -Verbose
        }
    } 

    if (!$mpgFiles -and !$aviFiles -and !$mp4Files -and !$3gpFiles -and !$3g2Files -and !$modFiles -and !$wmvFiles) {
        Write-Host "No .mpg, .avi, .mp4, .3gp, .3g2, .MOD, and .wmv files found in $sourceDirectory"
    }else {
        Write-Host "All Videos have been moved to $videoDestination."
    }
    Read-Host "Press enter to continue ..."
}

# Main script switch
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