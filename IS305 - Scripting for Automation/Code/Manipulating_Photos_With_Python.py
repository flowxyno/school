from PIL import Image

def main():
    image = Image.open("Ramadi_Puddle_Sharks_GroundLvl.jpg")
    width, height = image.size

    # Convert to Greyscale
    grayScaleImg = image.convert('L')

    # Resize to half the images original size
    resizedImg = grayScaleImg.resize((int(grayScaleImg.width / 2), int(grayScaleImg.height / 2)))

    # Save the resized and greyed out image
    resizedImg.save("smallGrayImage.jpg")

    # Let the user know the process is done
    print("Image has been saved. Check the image file smallGrayImage.jpg")

main()