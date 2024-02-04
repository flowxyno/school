import os

filePath = "S:\\Testing_Ground\\TestFile.txt"

if os.access(filePath, os.W_OK):
    # Perform file operations here
    print("Permissions are not the problem")
else:
    print(f"Permission denied for {filePath}. Check file permissions.")