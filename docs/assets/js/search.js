// Simple client-side search functionality
document.addEventListener('DOMContentLoaded', function() {
  const searchInput = document.getElementById('search-input');
  const searchResults = document.getElementById('search-results');
  
  if (!searchInput || !searchResults) {
    return;
  }
  
  // Build search index from page content
  const searchIndex = [];
  const headings = document.querySelectorAll('h1, h2, h3');
  const paragraphs = document.querySelectorAll('p');
  
  headings.forEach(function(heading) {
    searchIndex.push({
      text: heading.textContent,
      url: window.location.pathname + '#' + (heading.id || heading.textContent.toLowerCase().replace(/\s+/g, '-')),
      type: 'heading'
    });
  });
  
  paragraphs.forEach(function(para) {
    if (para.textContent.length > 50) {
      searchIndex.push({
        text: para.textContent.substring(0, 200),
        url: window.location.pathname,
        type: 'content'
      });
    }
  });
  
  // Simple fuzzy search
  function search(query) {
    if (query.length < 2) {
      return [];
    }
    
    const lowerQuery = query.toLowerCase();
    const results = [];
    
    searchIndex.forEach(function(item) {
      const lowerText = item.text.toLowerCase();
      if (lowerText.includes(lowerQuery)) {
        const score = (lowerText.match(new RegExp(lowerQuery, 'g')) || []).length;
        results.push({ ...item, score });
      }
    });
    
    return results.sort(function(a, b) {
      return b.score - a.score;
    }).slice(0, 10);
  }
  
  // Handle search input
  searchInput.addEventListener('input', function() {
    const query = this.value.trim();
    
    if (query.length < 2) {
      searchResults.innerHTML = '';
      searchResults.style.display = 'none';
      return;
    }
    
    const results = search(query);
    
    if (results.length === 0) {
      searchResults.innerHTML = '<div class="search-no-results">No results found</div>';
      searchResults.style.display = 'block';
      return;
    }
    
    let html = '<ul class="search-results-list">';
    results.forEach(function(result) {
      html += `<li><a href="${result.url}">${result.text.substring(0, 100)}${result.text.length > 100 ? '...' : ''}</a></li>`;
    });
    html += '</ul>';
    
    searchResults.innerHTML = html;
    searchResults.style.display = 'block';
  });
  
  // Hide results when clicking outside
  document.addEventListener('click', function(e) {
    if (!searchInput.contains(e.target) && !searchResults.contains(e.target)) {
      searchResults.style.display = 'none';
    }
  });
});
