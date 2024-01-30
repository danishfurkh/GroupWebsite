# bib_to_json.rb
require 'bibtex'
require 'json'

# Load the .bib file
bib = BibTeX.open('_data/scopus.bib')

# Initialize an array to store the publications
publications = []

# Iterate through each entry in the .bib file
bib.each_entry do |entry|
  # Extract relevant information
  publication = {
    title: entry.title.to_s,
    authors: entry.authors.to_s,
    year: entry.year.to_s,
    doi: entry['doi'] ? entry['doi'].to_s : ''
  }
  publications << publication
end



# Write the publications to a JSON file
File.open('_data/OldPubs.json', 'w') do |file|
  file.puts JSON.pretty_generate(publications)
end
