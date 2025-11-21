#!/bin/bash

# Portfolio Setup Script
# This script helps you quickly set up your portfolio for deployment

echo "🚀 Luke Panaccio Portfolio Setup"
echo "================================"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " github_username
echo ""

# Get repository name
read -p "Enter your repository name (default: portfolio): " repo_name
repo_name=${repo_name:-portfolio}
echo ""

# Check if using custom domain
read -p "Will you use a custom domain? (y/n): " use_custom_domain
echo ""

if [[ $use_custom_domain == "y" ]]; then
    read -p "Enter your custom domain (e.g., lukepanaccio.com): " custom_domain
    site_url="https://$custom_domain"
    base_path="/"
    
    # Create CNAME file
    echo "$custom_domain" > public/CNAME
    echo "✅ Created CNAME file for $custom_domain"
else
    site_url="https://$github_username.github.io"
    base_path="/$repo_name"
fi

# Update astro.config.mjs
echo "📝 Updating Astro configuration..."
sed -i.bak "s|site: 'https://lukepanaccio.github.io'|site: '$site_url'|g" astro.config.mjs
sed -i.bak "s|base: '/portfolio'|base: '$base_path'|g" astro.config.mjs
rm astro.config.mjs.bak
echo "✅ Updated astro.config.mjs"

# Update package.json name
sed -i.bak "s|\"name\": \"luke-panaccio-portfolio\"|\"name\": \"$repo_name\"|g" package.json
rm package.json.bak
echo "✅ Updated package.json"

echo ""
echo "🎉 Setup complete!"
echo ""
echo "Next steps:"
echo "1. Install dependencies: npm install"
echo "2. Add project images to public/images/"
echo "3. Add your resume PDF to public/"
echo "4. Update social links in components/Footer.astro and components/Header.astro"
echo "5. Initialize git and push to GitHub:"
echo ""
echo "   git init"
echo "   git add ."
echo "   git commit -m 'Initial commit'"
echo "   git branch -M main"
echo "   git remote add origin https://github.com/$github_username/$repo_name.git"
echo "   git push -u origin main"
echo ""
echo "6. Enable GitHub Pages in repository settings (Source: GitHub Actions)"
echo "7. Your site will be live at: $site_url$base_path"
echo ""
echo "Run 'npm run dev' to start developing! 🚀"
