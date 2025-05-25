# Icon Reference Mapping

This document maps the icon references in HTML, browserconfig.xml, and site.webmanifest to the actual files in the `/images/favicon/` directory.

## Current References in HTML

```html
<link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
<link rel="icon" type="image/x-icon" href="images/favicon/favicon.ico">
<link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
<link rel="mask-icon" href="images/favicon/safari-pinned-tab.svg" color="#000033">
<link rel="manifest" href="images/favicon/site.webmanifest">
```

## Current References in browserconfig.xml

```xml
<square70x70logo src="images/favicon/mstile-70x70.png"/>
<square150x150logo src="images/favicon/mstile-150x150.png"/>
<square310x310logo src="images/favicon/mstile-310x310.png"/>
<wide310x150logo src="images/favicon/mstile-310x150.png"/>
```

## Current References in site.webmanifest

```json
{
  "icons": [
    {
      "src": "/images/favicon/web-app-manifest-192x192.png",
      "sizes": "192x192",
      "type": "image/png",
      "purpose": "maskable"
    },
    {
      "src": "/images/favicon/web-app-manifest-512x512.png",
      "sizes": "512x512",
      "type": "image/png",
      "purpose": "maskable"
    }
  ]
}
```

## Actual Files in `/images/favicon/` Directory

- favicon.ico
- favicon.svg
- favicon-16x16.png
- favicon-32x32.png
- favicon-96x96.png
- apple-touch-icon.png
- android-chrome-192x192.png
- android-chrome-512x512.png
- web-app-manifest-192x192.png (duplicate of android-chrome-192x192.png)
- web-app-manifest-512x512.png (duplicate of android-chrome-512x512.png)
- site.webmanifest

## Microsoft Tile Icons (Missing)

- mstile-70x70.png
- mstile-150x150.png
- mstile-310x310.png
- mstile-310x150.png

## Safari Specific (Missing)

- safari-pinned-tab.svg

## Issues and Recommendations

1. **Duplicate Files**: There are duplicate files for Android Chrome icons:
   - `android-chrome-192x192.png` and `web-app-manifest-192x192.png`
   - `android-chrome-512x512.png` and `web-app-manifest-512x512.png`
   
   **Recommendation**: Keep only one version of each file and update all references to use the same filename.

2. **Missing Files**: The following referenced files are missing:
   - `safari-pinned-tab.svg` (referenced in HTML)
   - All Microsoft Tile icons (referenced in browserconfig.xml)
   
   **Recommendation**: Generate these missing files or update references to use existing files.

3. **Site Manifest Path**: The HTML references `images/favicon/site.webmanifest` but the site.webmanifest references icons with paths starting with `/images/favicon/`.
   
   **Recommendation**: Ensure path consistency by either:
   - Using relative paths in both places: `images/favicon/web-app-manifest-192x192.png`
   - Using absolute paths in both places: `/images/favicon/web-app-manifest-192x192.png`

## Action Items

1. Decide on standard naming convention (either keep `android-chrome-*.png` or `web-app-manifest-*.png`)
2. Remove duplicate files after standardizing names
3. Generate missing Microsoft Tile icons using the script provided
4. Create or obtain a `safari-pinned-tab.svg` file
5. Update all references in HTML, browserconfig.xml, and site.webmanifest to use consistent paths 