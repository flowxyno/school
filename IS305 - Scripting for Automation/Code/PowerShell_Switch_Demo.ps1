# Function demoing a for loop
function ForLoopDemo {
    Write-Host "Executing For Loop..."
    for ($i = 1; $i -le 5; $i++) {
        Write-Host "Iteration $i"
    }
    Read-Host "Press Enterto continue..."
    Main
}

# Function demoing a while loop
function DoWhileLoopDemo {
    Write-Host "Executing Do-While Loop..."
    $counter = 1
    do {
        Write-Host "Iteration $counter"
        $counter++
    } while ($counter -le 5)
    Read-Host "Press Enter to Continue..."
    Main
}

# Function that controls the main script
function Main {
    # Menu of options for the user to choose from
    Write-Host "Choose an option:"
    Write-Host "1. For Loop"
    Write-Host "2. Do-While Loop"
    Write-Host "Type 'exit' to quit"
    # Take in the Users choice
    $option = Read-Host "Enter your choice"

    # A switch to execute what the user would like to do
    switch ($option) {
        '1' {
            ForLoopDemo
        }
        '2' {
            DoWhileLoopDemo
        }
        'exit' {
            Write-Host "Exiting Program ..."
            exit
        }
        default {
            Write-Host "Invalid option. Please choose 1 or 2. or type 'exit'"
        }
    }
}

Main