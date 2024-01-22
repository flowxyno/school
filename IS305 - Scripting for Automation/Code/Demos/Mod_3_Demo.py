# This program will demonstrate lists and dictionaries and some of the things you can do with them

# Create a list of pal types
pal_types = ['Water', 'Grass', 'Fire', 'Electric', 'Ground', 'Ice', 'Neutral']
print('\nOriginal List: ', pal_types)

# Adds the type "Dark" to the end of the list
pal_types.append('Dark')
print('\nAppended List: ', pal_types)

# Add type ice to the middle of the list with insert
pal_types.insert(2, 'Ice')
print('\nExpanded List: ', pal_types)

# Change the value of an element
pal_types[2] = 'Dragon'
print('\nCorrected List: ', pal_types)

# Demonstrating Slicing
fav_pals = pal_types[3:5]
print('\nFavorite Pal types: ', fav_pals)

# Looping through the list
print('\nPal Types: ')
for pal_type in pal_types:
    print(pal_type)

# Demonstrating the list sort method
print('\nDemo of the list sort method: ')
print('\nComplete List: ', pal_types)
pal_types.sort() # Will sort the list alphabetically
print('\nSorted List: ', pal_types)

# Create a dictionary of Pal attributes
pal_att = {'Lamball':'Neutral', 'LifMunk':'Grass', 'Foxparks':'Electric'}
print('\nOriginal Dictionary: ', pal_att)

# Add a new Pal Daedream
pal_att['Daedream'] = 'Dark'
print('\nExpanded Dictionary: ', pal_att)

# Change the type of a Pal
pal_att['Foxparks'] = 'Fire'
print('\nCorrected Dictionary: ', pal_att)

# Looping over a dictionary using the items method
print('\nPals Elements: ')
for name, type in pal_att.items:
    print(name, " : ", type)
