require 'nokogiri'
require 'httparty'

# Replace with the URL of the Scopus profile page you want to scrape
profile_url = 'https://www.scopus.com/authid/detail.uri?authorId=55942696400'

# Make an HTTP GET request to the profile page
response = HTTParty.get(profile_url)

# Parse the HTML content of the page using Nokogiri
page = Nokogiri::HTML(response.body)

# Extract the publication information
publications = []
page.css('.ResultItem').each do |publication|
  title = publication.css('.title a').text.strip
  publication_url = publication.css('.title a').attr('href').text
  authors = publication.css('.authorGroup .authorName').map(&:text).join(', ')
  year = publication.css('.SubType').text[/\d{4}/] # Extract year using regular expression
  # You can add more fields like journal, volume, pages, etc. as needed

  publications << {
    title: title,
    authors: authors,
    year: year,
    url: publication_url
    # Add more fields as needed
  }
end

# Generate a BibTeX file from the extracted information
bibtex = ""
publications.each do |publication|
  bibtex += "@article{#{publication[:title]},\n"
  bibtex += "  title = {#{publication[:title]}},\n"
  bibtex += "  author = {#{publication[:authors]}},\n"
  bibtex += "  year = {#{publication[:year]}},\n"
  bibtex += "  url = {#{publication[:url]}}\n"
  # Add more BibTeX fields as needed
  bibtex += "}\n\n"
end

# Save the BibTeX content to a file
File.open('publications.bib', 'w') { |file| file.write(bibtex) }

puts "BibTeX file saved as 'publications.bib'"
