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
      "src": "/web-app-manifest-192x192.png",
      "sizes": "192x192",
      "type": "image/png",
      "purpose": "maskable"
    },
    {
      "src": "/web-app-manifest-512x512.png",
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
- safari-pinned-tab.svg
- web-app-manifest-192x192.png (renamed from android-chrome-192x192.png)
- web-app-manifest-512x512.png (renamed from android-chrome-512x512.png)
- site.webmanifest

## Microsoft Tile Icons (May be missing)

- mstile-70x70.png
- mstile-150x150.png
- mstile-310x310.png
- mstile-310x150.png

## Action Items

1. Ensure all referenced files exist in the `/images/favicon/` directory
2. Update references in HTML, browserconfig.xml, and site.webmanifest to match actual filenames
3. Create any missing files or rename existing files to match references 