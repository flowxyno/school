import openpyxl

# Path to the directory containing the data
dirPath = r'S:\Testing_Ground\SampleData'

# Load the workbook as wb
wb = openpyxl.load_workbook(dirPath + r'\MTG_Card_Sample.xlsx')

# Get the active sheet
orgSheet = wb.active

# Create a new workbook to save requested data in
wb_rare = openpyxl.Workbook()

# Get the active sheet in the new workbook
rareSheet = wb_rare.active

# Copy header row for column names
for col in range(1, orgSheet.max_column +1):
    rareSheet.cell(row=1, column=col).value = orgSheet.cell(row=1, column=col).value

# Copy data for rare cards
rare_row = 2
for row in range(2, orgSheet.max_row +1):
    rarity = orgSheet.cell(row=row, column = 2).value
    if rarity == 'Rare':
        for col in range(1, orgSheet.max_column + 1):
            rareSheet.cell(row=rare_row, column=col).value = orgSheet.cell(row=row, column=col).value

        rare_row +=1

# Save the new workbook
wb_rare.save(dirPath + r'\MTG_Rare_Cards.xlsx')