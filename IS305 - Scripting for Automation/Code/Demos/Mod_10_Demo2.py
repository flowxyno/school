from PIL import Image

def main():
    # Open the image and set the width and height variables
    image = Image.open("Ramadi_Puddle_Sharks_GroundLvl.jpg")
    width, height = image.size

    # Convert to Greyscale
    grayScaleImg = image.convert('L')
    
    # Resize to half the images original size
    resizedImg = grayScaleImg.resize((int(grayScaleImg.width / 2), int(grayScaleImg.height / 2)))

    # Save the resized and greyed out image
    resizedImg.save("smallGrayImg.jpg")

    # Let the user know the process is done
    print("Process completed, please see file named smallGrayImg.jpg")

main()