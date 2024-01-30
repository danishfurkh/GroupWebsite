function filterPublications() {
    const yearSelector = document.getElementById('year-selector');
    const publicationsContainer = document.getElementById('publications-container');
  
    yearSelector.addEventListener('change', (event) => {
      const selectedYear = event.target.value;
      const publications = Array.from(publicationsContainer.getElementsByClassName('publication'));
  
      if (selectedYear === '') {
        publications.forEach((publication) => {
          publication.style.display = 'block';
        });
      } else {
        publications.forEach((publication) => {
          const publicationYear = publication.getAttribute('data-year');
          if (publicationYear === selectedYear) {
            publication.style.display = 'block';
          } else {
            publication.style.display = 'none';
          }
        });
      }
    });
  }
  
  document.addEventListener('DOMContentLoaded', filterPublications);
  