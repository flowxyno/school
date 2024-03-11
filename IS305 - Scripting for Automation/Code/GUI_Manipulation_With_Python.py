import pyautogui
import time

def main():
    # Move mouse to (2650, 100) in 1 second
    pyautogui.moveTo(2650, 100, duration=1)

    # Click left mouse button
    pyautogui.click()

    # Ask ChatGPT to tell me a joke .25 sec interval between key strokes
    pyautogui.typewrite("Tell me a joke.", interval=0.25)

    # Press the Enter key
    pyautogui.press('enter')

    # Wait for 1 second
    time.sleep(1)

    # Move mouse to (4000, 500) in 1 second
    pyautogui.moveTo(4000, 500, duration=1)

    # Right click mouse
    pyautogui.rightClick()

main()