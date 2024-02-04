# This script takes in user text input and saves it to a file and then retrieves that and reads the content 

import pathlib as pl

# Function that writes input to the file
def writeFile(filePath, content):
    with open(filePath, 'w') as file:
        file.write(content)

# Function that reads the file
def readFile(filePath):
    with open(filePath, 'r') as file:
        currentContents = file.read()
        return currentContents


def main():
    # Get user input
    userInput = input("Type some sample text in for the test file: ")

    # Define the path
    filePath = pl.Path("S:\\Testing_Ground\\test.txt")

    #Check if the file exists and then what to do with it
    if filePath.is_file():
        print(f"\nThe file {filePath} already exists.")

        # Read file and display the current contents
        fileContent = readFile(filePath)
        print("\n", fileContent)
    else:
        print(f"\nThe file {filePath} does not exist. Creating it now.")
        # Write user input to the file
        writeFile(filePath, userInput)
        print(f"User input has been written to {filePath}")

main()
        
        