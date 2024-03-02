import time
import threading
import subprocess

# Function to launch a program using subprocess
def launch_program(program_path):
    subprocess.Popen(program_path)

# Function to close a program using subprocess
def close_program(program_name, delay):
    while delay > 0:
        print(f"{program_name} will close in {delay} seconds...")
        time.sleep(1)
        delay -= 1
    subprocess.Popen(["taskkill", "/f", "/im", program_name])

def main():
    # Paths to the calculator and notepad programs
    notepad_path = r"C:\Windows\System32\notepad.exe"
    calculator_path = r"C:\Windows\System32\calc.exe"

    # Launch programs using multithreading
    threading.Thread(target=launch_program, args=(notepad_path,)).start()
    threading.Thread(target=launch_program, args=(calculator_path,)).start()

    # Schedule task to close programs after 30 seconds
    notepad_delay = 30
    calculator_delay = 20  # Example different delay for calculator
    threading.Thread(target=close_program, args=("notepad.exe", notepad_delay)).start()
    threading.Thread(target=close_program, args=("calculatorApp.exe", calculator_delay)).start()

main()