# Wallpath App Landing Page

This repository contains the landing page for the Wallpath app, a puzzle game where players draw paths through walls and unlock beautiful landscapes.

## Setting up GitHub Pages with Custom Domain (wallpath.pro)

### 1. Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in or create an account
2. Click on the "+" icon in the top right and select "New repository"
3. Name your repository `wallpath.github.io` (or something similar)
4. Make the repository public
5. Click "Create repository"

### 2. Upload Your Files

You can upload all the files in this directory to your GitHub repository using either:

- GitHub's web interface (drag and drop)
- Git commands:
  ```
  git init
  git add .
  git commit -m "Initial commit"
  git remote add origin https://github.com/YOUR_USERNAME/wallpath.github.io.git
  git push -u origin main
  ```

### 3. Set Up GitHub Pages

1. Go to your repository on GitHub
2. Click on "Settings"
3. Scroll down to the "GitHub Pages" section
4. Under "Source", select "main" branch
5. Click "Save"

### 4. Configure Your Custom Domain (wallpath.pro)

1. In your repository, create a file named `CNAME` (no file extension)
2. Add your domain name: `wallpath.pro` (without any "http://" or "www.")
3. Save the file and commit it to your repository

### 5. Configure DNS Settings

At your domain registrar (where you purchased wallpath.pro), set up the following DNS records:

#### Option 1: Apex Domain (wallpath.pro)
Create the following A records:
```
A   @   185.199.108.153
A   @   185.199.109.153
A   @   185.199.110.153
A   @   185.199.111.153
```

#### Option 2: www Subdomain (www.wallpath.pro)
Create a CNAME record:
```
CNAME   www   your-username.github.io.
```

#### Recommended: Set Up Both
Set up both the apex domain and www subdomain for better user experience.

### 6. Wait for DNS Propagation

DNS changes can take 24-48 hours to fully propagate. Be patient!

### 7. Verify Custom Domain

1. In your repository's Settings, under GitHub Pages
2. Ensure your custom domain appears and is verified
3. Optionally, check "Enforce HTTPS" for secure connections

## Updating Your Landing Page

To update your landing page:
1. Make changes to the files locally
2. Commit and push the changes to GitHub
3. GitHub Pages will automatically update your site

## Image Files Needed

Before publishing, make sure to add the following images to the `images` directory:

- `app-icon.png` (App icon, ideally 512x512px)
- `favicon.png` (Small favicon, 32x32px)
- `app-store-badge.svg` (App Store download badge)
- `hero-device.png` (Phone mockup with screenshot)
- `screenshot-1.jpg` through `screenshot-4.jpg` (App screenshots)

## Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Custom Domain Setup Guide](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site) 