import os
import pathlib

# Function that writes input to the file
def writeFile(filePath, content):
    with open(filePath, 'w') as file:
        file.write(content)

# Function to Read the file
def readFile(filePath):
    with open(filePath, 'r') as file:
        content = file.read()
        return content
    
def main():
    # Get user input
    userInput = input("Enter some text to write to the file: ")

    # Define the path
    filePath = pathlib.Path("S:\\Testing_Ground\\TestFile.txt")

    # Check if the file exists and what to do with it
    if filePath.is_file():
        print(f"The '{filePath}' already exists.")

        # Read and display the content of the file
        existingContent = readFile(filePath)
        print(existingContent)
    else: 
        print(f"The file '{filePath}' does not exist. Creating it now")
        writeFile(filePath, userInput)
        print(f"User input has been written to '{filePath}'.")

if __name__ == "__main__":
    main()