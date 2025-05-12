#!/bin/bash

# This script helps set up your GitHub repository for wallpath.pro

# Text formatting
BOLD='\033[1m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BOLD}Wallpath GitHub Pages Setup Script${NC}"
echo -e "${BLUE}This script will help you set up a GitHub repository for your wallpath.pro landing page${NC}\n"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Please install Git first."
    exit 1
fi

# Ask for GitHub username
read -p "Enter your GitHub username: " github_username

# Initialize git repository
echo -e "\n${GREEN}Initializing Git repository...${NC}"
git init

# Add all files
echo -e "\n${GREEN}Adding files to Git...${NC}"
git add .

# Commit changes
echo -e "\n${GREEN}Committing files...${NC}"
git commit -m "Initial commit for Wallpath landing page"

# Create GitHub repository instructions
echo -e "\n${BOLD}Next steps:${NC}"
echo -e "1. Create a new repository on GitHub named: ${GREEN}${github_username}.github.io${NC} or ${GREEN}wallpath.github.io${NC}"
echo -e "2. Run the following commands to push your code:"
echo -e "${BLUE}git remote add origin https://github.com/${github_username}/wallpath.github.io.git${NC}"
echo -e "${BLUE}git branch -M main${NC}"
echo -e "${BLUE}git push -u origin main${NC}"

echo -e "\n3. In GitHub repository settings, scroll down to GitHub Pages section"
echo -e "4. Set source to 'main' branch and save"
echo -e "5. Configure your custom domain 'wallpath.pro' in the GitHub Pages settings"
echo -e "6. At your domain registrar, set up these DNS records:"
echo -e "   ${BOLD}For apex domain (wallpath.pro):${NC}"
echo -e "   A @ 185.199.108.153"
echo -e "   A @ 185.199.109.153"
echo -e "   A @ 185.199.110.153"
echo -e "   A @ 185.199.111.153"
echo -e "   ${BOLD}For www subdomain:${NC}"
echo -e "   CNAME www ${github_username}.github.io."

echo -e "\n${GREEN}Done! Your local repository is ready to push to GitHub.${NC}"
echo -e "Make sure to add screenshots to the 'images' folder before pushing to GitHub." 