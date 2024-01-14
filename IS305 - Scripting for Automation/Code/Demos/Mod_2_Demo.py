#This program will flip a coin to see how many times Cloud gets to chase his ball 
import random

# Control for flipping the coin 
def flip_coin():
    return random.choice(["Heads", "Tails"])

# Control for throwing the ball
def ball_toss():
    result = flip_coin()
    if result == "Heads":
        print("Cloud's ball gets thrown")
    else: 
        print("Cloud's ball does not get thrown.")

# Control for the script from flip to ball toss
def is_cloud_lucky(flips): 
    current_flip = 1
    while current_flip <= flips:
        print("This is Flip Number: " + str(current_flip))
        ball_toss()
        current_flip += 1

# intake user input for number of flips
num_flips = int(input("How many flips are you going to give Cloud?: "))

# pass in that userinput to the script
is_cloud_lucky(num_flips)