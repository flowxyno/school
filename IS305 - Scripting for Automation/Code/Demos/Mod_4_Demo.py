# This program simulates a wonky game registration system .... kind of.

import re
import pyinputplus as pyip

# Define validateEmail with regular expressions:
def validateEmail(email):
    email_pattern = re.compile(r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-.]+\.[a-zA-Z0-9]+$')
    return bool(re.match(email_pattern, email))

print('Welcome to the Game Registration System!!! (Please ignore what we do with your data)')

# Get the username using pyinputplus with escape characters in the prompt:
username = pyip.inputStr(prompt = '\nEnter username (This is the administrator\'s favoite part)')

# Demonstrating the string methods:
print('\nString Method Demo: ')
print(f'The original username was: {username}')
print(f'Uppercase: {username.upper()}')
print(f'Lowercase: {username.lower()}')
print(f'Was the original username lowercase? {username.islower()}')

# Get the email and store for validation
email = input('\nEnter your Email address: ')

# Demonstrating that the regular expression works
print('\nRegular Expression Demo: ')
print(f'The email Was Validated: {validateEmail(email)}')

# Account Menu using pyinputplus
print('\nWelcome to your new account!!')
selection = pyip.inputMenu(['Play Game', 'Edit Account', 'Log Out'], numbered=True)
print(f'Your selection was: {selection}')