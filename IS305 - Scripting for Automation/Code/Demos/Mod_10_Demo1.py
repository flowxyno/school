import pyautogui as gui
import time

def main():
    # Move mouse to (2650, 100) in 1 second
    gui.moveTo(2650, 100, duration=1)

    # Click left mouse button
    gui.click()

    # Ask ChatGPT to tell me a joke .25 sec interval between key strokes
    gui.typewrite("Tell me a joke.", interval=0.25)

    # Press the Enter key
    gui.press("enter")

    # Wait for 2 seconds
    time.sleep(2)

    # Move mouse to (3000, 500) in 1 second
    gui.moveTo(3000, 500, duration=1)

    # Right click mouse
    gui.rightClick()

main()