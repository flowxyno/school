# This script will create directories for my pictures and video and then sort the files by file extension

import os
import shutil

# Function to create the new directories
def createDirectories(rootFolder):
    # Create variables of the paths for the new folders
    photoPath = os.path.join(rootFolder, "Photos")
    videoPath = os.path.join(rootFolder, "Videos")
    
    # Create the "photos" and "video" directories
    os.makedirs(photoPath, exist_ok = True)
    os.makedirs(videoPath, exist_ok = True)
    
    
# function to move the files to the new directories
def moveFiles(rootFolder, sourceFolder, extension, destinationFolder):
    # Create variables for source / dest paths
    sourcePath = os.path.join(rootFolder, sourceFolder)
    destinationPath = os.path.join(rootFolder, destinationFolder)

    # Walk through the source folder
    for foldername, subfolders, filenames in os.walk(sourcePath):
        for filename in filenames:
            if filename.lower().endswith(extension.lower()):
                # Create variables for source / dest files
                sourceFile = os.path.join(foldername, filename)
                destinationFile = os.path.join(destinationPath, filename)

                # Move the file to the destination folder
                shutil.move(sourceFile, destinationFile)
                print(f"Moved: {sourceFile} -> {destinationFile}")
                
                
                
def main():
    # Root folder path
    rootFolder = "S:\\Testing_Ground"

    # Create the "photos" and "videos" directories
    createDirectories(rootFolder)

    # Move .jpg files from "TEMP" to "photos" directory
    moveFiles(rootFolder, "TEMP", ".jpg", "Photos")

    # Move .avi files from "TEMP" to "photos" directory
    moveFiles(rootFolder, "TEMP", ".avi", "Videos")
    
main()
