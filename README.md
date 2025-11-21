# Luke Panaccio Portfolio

A modern, responsive portfolio site built with Astro, showcasing instructional design and AI-powered learning projects.

## 🚀 Tech Stack

- **Framework**: [Astro](https://astro.build) 4.16
- **Styling**: Tailwind CSS
- **Content**: Markdown/MDX
- **Deployment**: GitHub Pages
- **Package Manager**: npm

## 📁 Project Structure

```
luke-portfolio/
├── src/
│   ├── components/       # Reusable components
│   ├── layouts/          # Page layouts
│   ├── pages/           # Site pages and routes
│   │   ├── projects/    # Individual project pages (markdown)
│   │   ├── index.astro  # Homepage
│   │   └── about.astro  # About page
│   └── styles/          # Global styles
├── public/              # Static assets
│   └── images/         # Project images
├── astro.config.mjs    # Astro configuration
├── tailwind.config.mjs # Tailwind configuration
└── package.json        # Dependencies
```

## 🛠️ Development

### Prerequisites

- Node.js 18+ installed
- Git installed
- GitHub account

### Local Development

1. Clone the repository:
```bash
git clone https://github.com/[your-username]/portfolio.git
cd portfolio
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

4. Open [http://localhost:4321](http://localhost:4321) in your browser

### Building for Production

```bash
npm run build
```

This creates a production build in the `dist/` folder.

### Preview Production Build

```bash
npm run preview
```

## 🚀 Deployment to GitHub Pages

### Initial Setup

1. Create a new repository on GitHub named `portfolio` (or any name you prefer)

2. Update `astro.config.mjs`:
```javascript
export default defineConfig({
  site: 'https://[your-username].github.io',
  base: '/[repo-name]', // Use '/' if using custom domain
  // ... rest of config
});
```

3. Initialize git and push to GitHub:
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/[your-username]/[repo-name].git
git push -u origin main
```

4. Enable GitHub Pages:
   - Go to repository Settings → Pages
   - Source: "GitHub Actions"
   - Save

5. The site will automatically deploy when you push to the `main` branch

### Manual Deployment

If you prefer manual deployment:

```bash
npm run build
npx gh-pages -d dist
```

## 📝 Adding Content

### Adding a New Project

1. Create a new markdown file in `src/pages/projects/`:
```markdown
---
layout: '../../layouts/ProjectLayout.astro'
title: 'Project Title'
tagline: 'Short project description'
client: 'Client Name'
role: 'Your Role'
timeline: 'Duration'
tools: ['Tool1', 'Tool2']
heroImage: '/images/project-hero.jpg'
---

## The Challenge

Project content here...
```

2. Add project images to `public/images/`

3. Update the projects array in `src/pages/index.astro` to include your new project

### Updating About Page

Edit `src/pages/about.astro` to update your bio and professional information.

## 🎨 Customization

### Colors

Edit the color scheme in `tailwind.config.mjs`:
```javascript
colors: {
  primary: {
    // Your color palette
  }
}
```

### Fonts

Update fonts in `src/layouts/Layout.astro` in the `<head>` section.

## 📄 Custom Domain

To use a custom domain:

1. Add a `CNAME` file to the `public/` folder with your domain:
```
yourdomain.com
```

2. Update `astro.config.mjs`:
```javascript
site: 'https://yourdomain.com',
base: '/', // Remove base path for custom domain
```

3. Configure your domain's DNS:
   - Add A records pointing to GitHub's IPs
   - Or add a CNAME record pointing to `[username].github.io`

## 🐛 Troubleshooting

### Build Fails on GitHub Actions
- Check Node version in workflow matches local
- Ensure all dependencies are in `package.json`
- Check for case-sensitive file imports (GitHub Actions runs on Linux)

### Images Not Loading
- Ensure images are in `public/images/`
- Use absolute paths starting with `/images/`
- Check file extensions match exactly (case-sensitive)

### 404 on GitHub Pages
- Verify `base` path in `astro.config.mjs` matches repository name
- Ensure GitHub Pages is enabled in repository settings
- Wait a few minutes for deployment to complete

## 📚 Resources

- [Astro Documentation](https://docs.astro.build)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## 📜 License

MIT License - feel free to use this as a template for your own portfolio!

---

**Next Steps:**

1. [ ] Add project images to `/public/images/`
2. [ ] Update personal information and links
3. [ ] Add resume PDF to `/public/`
4. [ ] Customize colors and fonts
5. [ ] Deploy to GitHub Pages
6. [ ] Consider adding:
   - Google Analytics
   - Contact form backend
   - Blog section
   - More project pages

Good luck with your job search in 2026! 🚀
