# PoseMagic Documentation

This is the documentation website for PoseMagic, hosted on GitHub Pages.

## Setup

1. **Configure GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: `main` branch
   - Folder: `/docs`
   - Save

2. **The site will be available at:**
   `https://feudalism-dev.github.io/posemagic-manuals/`

## Local Development

To test locally:

```bash
cd docs
bundle install
bundle exec jekyll serve
```

Visit `http://localhost:4000`

## Structure

- `_config.yml` - Jekyll configuration
- `_layouts/` - Page layouts
- `_includes/` - Reusable components
- `assets/` - CSS, JS, images
- Content pages in root and subdirectories

## Notes

- Uses Jekyll with Minima theme (overridden)
- Dark theme with custom color palette
- All content is in Markdown
- Search is client-side JavaScript
