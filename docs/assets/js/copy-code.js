// Copy to Clipboard functionality for code blocks
document.addEventListener('DOMContentLoaded', function() {
  const codeBlocks = document.querySelectorAll('pre code');
  
  codeBlocks.forEach(function(codeBlock) {
    const pre = codeBlock.parentElement;
    
    // Skip if already has a copy button
    if (pre.querySelector('.copy-code-btn')) {
      return;
    }
    
    // Create copy button
    const copyBtn = document.createElement('button');
    copyBtn.className = 'copy-code-btn';
    copyBtn.textContent = 'Copy';
    copyBtn.setAttribute('aria-label', 'Copy code to clipboard');
    
    // Insert button
    pre.style.position = 'relative';
    pre.appendChild(copyBtn);
    
    // Copy functionality
    copyBtn.addEventListener('click', function() {
      const text = codeBlock.textContent;
      
      navigator.clipboard.writeText(text).then(function() {
        copyBtn.textContent = 'Copied!';
        copyBtn.classList.add('copied');
        
        setTimeout(function() {
          copyBtn.textContent = 'Copy';
          copyBtn.classList.remove('copied');
        }, 2000);
      }).catch(function(err) {
        console.error('Failed to copy:', err);
        copyBtn.textContent = 'Error';
        setTimeout(function() {
          copyBtn.textContent = 'Copy';
        }, 2000);
      });
    });
  });
});
