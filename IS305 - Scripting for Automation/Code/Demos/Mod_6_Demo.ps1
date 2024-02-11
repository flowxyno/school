#This script Demonstrates switches, for loops, do while loops, and functions with and with out parameters

# Function demoing a for loop
function forLoopDemo {
    for($i = 1; $i -le 10; $i++) {
        Write-Host "The value of i is $i"
    }
    Read-Host "Press enter to continue ..."
    main
}

# Function demoing a do while loop
function doWhileLoopDemo {
    param($n, $j)
    $count = 0
    Do {
        Write-Host "$n has jumped the rope $count times."
        $count++
    }while($count -le $j)
    Read-Host "Press enter to continue ..."
    main
}

# Function that controls the main script
function main {
    # Menu of options for the user to choose from
    Write-Host "Choose from the following options: "
    Write-Host "1 - For Loop Demo"
    Write-Host "2 - Do While Loop Demo"
    Write-Host "Type 'exit' to quit"
    # Take in the Users choice
    $option = Read-Host "Enter your selection: "

    # A switch to execute what the user would like to do
    switch($option){
        '1' {
            forLoopDemo
        }
        '2' {
            $name = Read-Host "What is your name?"
            $jumps = Read-Host "How many times would you like to jump (1-5)?"
            doWhileLoopDemo $name $jumps
        }
        'exit' {
            Write-Host "Program is exiting ..."
            exit
        }
    }
}

main