import random

def flip_coin():
    return random.choice(['Heads', 'Tails'])

def throw_ball():
    result = flip_coin()
    if result == 'Heads':
        print("Cloud's ball gets thrown!")
    else:
        print("Cloud's ball does not get thrown.")

def is_cloud_lucky(flips):
    current_flip = 1
    while current_flip <= flips:
        print("\nFlip number: " + str(current_flip))
        throw_ball()
        current_flip += 1

# Get the number of iterations from user input
num_flips = int(input("Enter the number of iterations: "))

# Simulate iterations with a while loop
is_cloud_lucky(num_flips)