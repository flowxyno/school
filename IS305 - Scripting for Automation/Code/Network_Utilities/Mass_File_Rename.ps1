# Prompt for working directory
$directory = Read-Host "Enter working directory"

if (-not(Test-Path $directory -Pathtype Container)) {
    Write-Host "Directory '$directory' not found." -ForegroundColor Red
    Read-Host "Press Enter to continue"
    exit
}

# Prompt the user for the base file name
$baseName = Read-Host "Enter the base filename"

# Get all of the files in the directory
$files = Get-ChildItem -Path $directory

# Initilize fileCount
$fileCount = 0

# Loop through the files in the directory
foreach ($file in $files) {
    # increment the file count 
    $fileCount++

    # Construct new filename
    $newFileName = "{0}{1}{2}" -f $baseName, $fileCount, $file.Extension

    # Rename the file
    $file | Rename-Item -NewName $newFileName
}

Read-Host "Press Enter to return to the Main menu"
Main_Menu.ps1