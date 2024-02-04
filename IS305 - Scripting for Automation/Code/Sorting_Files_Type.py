import os
import shutil

def create_directories(root_folder):
    # Create variables of paths for new folders
    photos_path = os.path.join(root_folder, 'photos')
    videos_path = os.path.join(root_folder, 'videos')

    # Create 'photos' and 'videos' directories
    os.makedirs(photos_path, exist_ok=True)
    os.makedirs(videos_path, exist_ok=True)

def move_files(root_folder, source_folder, extension, destination_folder):
    source_path = os.path.join(root_folder, source_folder)
    destination_path = os.path.join(root_folder, destination_folder)

    # Walk through the source folder
    for foldername, subfolders, filenames in os.walk(source_path):
        for filename in filenames:
            if filename.lower().endswith(extension.lower()):
                source_file = os.path.join(foldername, filename)
                destination_file = os.path.join(destination_path, filename)

                # Move the file to the destination folder
                shutil.move(source_file, destination_file)
                print(f'Moved: {source_file} -> {destination_file}')

def main():
    # Specify the root folder
    root_folder = "S:\\Testing_Ground"  # Change this to the actual path
    
    # Create 'photos' and 'videos' directories
    create_directories(root_folder)

    # Move .jpg files from TEMP to 'photos' directory
    move_files(root_folder, 'TEMP', '.jpg', 'photos')

    # Move .avi files from TEMP to 'videos' directory
    move_files(root_folder, 'TEMP', '.avi', 'videos')

if __name__ == "__main__":
    main()
    