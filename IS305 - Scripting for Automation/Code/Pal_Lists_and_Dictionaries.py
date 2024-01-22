# Create a list of Pal types
pal_types = ['Fire', 'Water', 'Grass', 'Electric', 'Ground', 'Ice', 'Neutral']

# Add elements to the list
pal_types.append('Dark') # To the end
pal_types.insert(2, 'Ice') # At index 2 the thrid element

# Change the value of an element
pal_types[2] = 'Dragon'

# Demonstrate slicing
selected_types = pal_types[2:5]

# Looping over a list with a for loop
print("Pal Types:")
for pal_type in pal_types:
    print(pal_type)

# Demonstrate list methods
print("\nList methods:")
print("Original Pal Types:", pal_types)
pal_types.sort()  # Sort the list in-place
print("Sorted Pal Types:", pal_types)

# Create a dictionary of Pal attributes
pal_attributes = {'Lamball': 'Neutral', 'Lifmunk': 'Grass', 'Foxparks': 'Electric'}

# Add a new Pal
pal_attributes['Daedream'] = 'Dark'

# Change the type of a Pal
pal_attributes['Foxparks'] = 'Fire'

# Looping over a dictionary using .items() method
print("\nPal Attributes:")
for name, types in pal_attributes.items():
    print(name + ": " + types)

