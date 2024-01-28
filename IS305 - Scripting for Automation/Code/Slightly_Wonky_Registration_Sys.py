import re
import pyinputplus as pyip

def validate_email_format(email):
    # Regular expression for basic email validation
    email_pattern = re.compile(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
    return bool(re.match(email_pattern, email))

print("Welcome to the Game Registration System!")

# Get username pyInputPlus with escape characters in the prompt
username = pyip.inputStr(prompt = "Enter your username (use \\n for a new line): ")

# Demonstrating string methods
print("\nString Manipulation:")
print(f"Original Username: {username}")
print(f"Uppercase: {username.upper()}")
print(f"Lowercase: {username.lower()}")
print(f"Is Lowercase: {username.islower()}")

# Get email and store for input validation
email = input("Enter your email: ")

# Demonstrating regular expressions
print("\nRegular Expressions:")
print(f"Email Validation: {validate_email_format(email)}")

# Account Menu using pyInputPlus
selection = pyip.inputMenu(['Account', 'Play a Game', 'Log Out'], numbered=True)
print(f"Your selection was: {selection}")