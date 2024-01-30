from pybliometrics.scopus import ScopusSearch
from pybtex.database import BibliographyData, Entry
import re

# Function to export publications to a BibTeX file
def export_publications_to_bibtex(search_query, filename):
    # Perform a Scopus search
    search = ScopusSearch(search_query)
    print(search)
    # Create a BibliographyData object to store BibTeX entries
    bib_data = BibliographyData()

    # Iterate through the search results and generate BibTeX entries
    for entry in search.results:
        title = entry.title
        authors = ' and '.join(entry.authors)
        year = entry.coverDate.split('-')[0]
        doi = entry.doi

        # Construct the BibTeX entry
        bib_entry = Entry('article',
                          fields={
                              'title': title,
                              'author': authors,
                              'year': year,
                              'doi': doi if doi else None  # Include DOI if available
                          })

        # Add the BibTeX entry to the BibliographyData object
        bib_data.entries[entry.identifier] = bib_entry

    # Write the BibTeX data to a file
    with open(filename, 'w', encoding='utf-8') as bib_file:
        bib_file.write(bib_data.to_string('bibtex'))

    print(f"Exported {len(search.results)} publications to {filename}")

# Example usage:
search_query = 'AUTHLASTNAME(Fritzsche)'
export_publications_to_bibtex(search_query, 'scopus_publications.bib')
