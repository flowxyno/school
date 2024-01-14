# This program is the introduce you to Cloud my VS Code pet

print('Hello, my name is Cloud. I am the VS code pet you can see on the lower left of the screen. If you tell me your name I will tell you my favorite hobby.')

print('What is your name?') # Prompt user for input
name = input() # Takes input from the user and stores it in the name variable
print('Awesome to meet you ' + name + '! My favorite hobby is gaming on steam. My favorite game is stray. Yes I understand that stray is a cat game and I am a dog')

print('How many games do you have in your steam library ' + name + '?')
gameCount = input()
print('If you were to buy stray you would have ' + str(int(gameCount) + 1 ) + ' games in your library')