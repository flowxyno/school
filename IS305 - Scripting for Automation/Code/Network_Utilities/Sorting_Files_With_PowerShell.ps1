# Function to sort files
function sortFiles {
    param(
        [string]$sourceDirectory,
        [string]$destinationDirectory,
        [string[]]$extensions
    )

    $filesMoved = $false
    foreach ($ext in $extensions) {
        $files = Get-ChildItem -Path $sourceDirectory -Filter "*$ext"
        if ($files) {
            Write-Host "Moving $ext files to $destinationDirectory..."
            $files | ForEach-Object {
                Write-Host "Moving $($_.Name)..."
                Move-Item -Path $_.FullName -Destination $destinationDirectory -Verbose
            }
            $filesMoved = $true
        }
    }

    if (-not $filesMoved) {
        Write-Host "No files found with specified extensions in $sourceDirectory"
    } else {
        Write-Host "All files have been moved to $destinationDirectory."
    }
    Read-Host "Press enter to continue ..."
}

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

# Main script switch
$loop = $true
while ($loop) {
    $option = Show-Menu
    switch ($option) {
        '1' {
            $sourceDirectory = Read-Host "Enter the source directory for photos"
            $photoDestination = Read-Host "Enter the destination directory for sorted photos"
            sortFiles -sourceDirectory $sourceDirectory -destinationDirectory $photoDestination -extensions @(".jpg", ".jpeg", ".png")
        }
        '2' {
            $sourceDirectory = Read-Host "Enter the source directory for videos"
            $videoDestination = Read-Host "Enter the destination directory for sorted videos"
            sortFiles -sourceDirectory $sourceDirectory -destinationDirectory $videoDestination -extensions @(".mpg", ".avi", ".mp4", ".3gp", ".3g2", ".MOD", ".wmv")
        }
        '3' {
            Write-Host "Exiting..."
            $loop = $false
        }
        default {
            Write-Host "Invalid choice. Please try again."
        }
    }
}