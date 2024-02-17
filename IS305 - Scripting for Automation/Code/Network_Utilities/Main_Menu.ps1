# Main menu function
function showMenu {
    Clear-Host # Clears the screen
    Write-Host "Main Menu:"
    Write-Host "1. Sorting File Types"
    Write-Host "2. Option 2"
    Write-Host "3. Option 3"
    Write-Host "4. Exit"
    $option = Read-Host "Enter your selection to begin: "
    return $option
}

# The main switch in a while loop
$loop = $True
while($loop -eq $True) {
    $choice = showMenu
    switch ($Choice) {
        '1' {
            .\Sorting_Files_With_PowerShell.ps1 #Calls an ouside script for sorting files
        }
        '2' {
            Write-Host "This function has not been defined yet."
        }
        '3' {
            Write-Host "This function has not been defined yet."
        }
        '4' {
            Write-Host "Exiting ..."
            $loop = $False
        }
        default {
            Write-Host "Invalid choice. Please try again."
        }
    }
}