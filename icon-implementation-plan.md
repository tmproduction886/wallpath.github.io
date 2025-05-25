# Wallpath Icon Implementation Plan

This document outlines the steps needed to fix the discrepancies between the icon references in your HTML/configuration files and the actual files in your favicon directory.

## Current Issues

1. **Duplicate Files**: You have both `android-chrome-*.png` and `web-app-manifest-*.png` files that are duplicates.
2. **Missing Files**: The following files are referenced but don't exist:
   - `safari-pinned-tab.svg`
   - Microsoft Tile icons (`mstile-*.png`)
3. **Inconsistent Paths**: The site.webmanifest file uses absolute paths while HTML uses relative paths.

## Implementation Steps

### 1. Standardize on Android Chrome Naming Convention

Since `android-chrome-*.png` is the standard naming convention used by most favicon generators:

- [x] Update site.webmanifest to reference `android-chrome-*.png` instead of `web-app-manifest-*.png`
- [ ] Delete the duplicate `web-app-manifest-*.png` files after confirming everything works

### 2. Create Missing Safari Pinned Tab Icon

Since the HTML references `safari-pinned-tab.svg` but the file doesn't exist:

- [ ] Option 1: Create a `safari-pinned-tab.svg` file (monochrome SVG for Safari pinned tabs)
- [ ] Option 2: Remove the reference from HTML if Safari pinned tabs are not needed

### 3. Create Microsoft Tile Icons

Since browserconfig.xml references Microsoft Tile icons but they don't exist:

- [ ] Run the `generate-missing-icons.sh` script to create Microsoft Tile icons from android-chrome-512x512.png
- [ ] Verify the generated icons look good

### 4. Ensure Path Consistency

To ensure consistent paths:

- [ ] Update HTML to use the correct path for site.webmanifest
- [ ] Make sure all icon references use consistent paths (either all relative or all absolute)

### 5. Create Social Share Image

For social media sharing:

- [ ] Create a social-share.jpg (1200×630 pixels) image for social media sharing
- [ ] Verify Open Graph and Twitter card meta tags reference the correct path

## Testing Plan

After implementing these changes:

1. Test favicon appearance in browser tabs
2. Test website appearance when added to home screen on iOS
3. Test website appearance when added to home screen on Android
4. Test website appearance when pinned in Windows
5. Test website appearance when shared on social media
6. Test Safari pinned tab appearance

## Recommended File Structure

```
/images/favicon/
├── android-chrome-192x192.png
├── android-chrome-512x512.png
├── apple-touch-icon.png
├── favicon-16x16.png
├── favicon-32x32.png
├── favicon-96x96.png
├── favicon.ico
├── favicon.svg
├── mstile-70x70.png
├── mstile-150x150.png
├── mstile-310x150.png
├── mstile-310x310.png
├── safari-pinned-tab.svg
└── site.webmanifest
``` 