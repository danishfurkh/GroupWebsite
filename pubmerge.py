import json

# Function to merge and deduplicate publications
def merge_publications(old_data, new_data):
    merged_data = new_data.copy()

    for publication in old_data:
        # Check if the publication name is not already in the old data
        if publication['title'] not in {pub['title'] for pub in new_data}:
            merged_data.append(publication)

    return merged_data

# Load the old and new JSON files
with open('_data/OldPubs.json', 'r', encoding='utf-8') as old_file:
    old_data = json.load(old_file)

with open('publications.json', 'r', encoding='utf-8') as new_file:
    new_data = json.load(new_file)

# Merge and deduplicate publications
merged_publications = merge_publications(old_data, new_data)

# Save the updated data back to the old JSON file
with open('_data/OldPubs.json', 'w') as old_file:
    json.dump(merged_publications, old_file, indent=4)

print("Data merged and saved successfully.")
