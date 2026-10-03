# LifeLink Find Donor White-Page Fix

The Find Donors screen had a React runtime problem: the search UI referenced `searchLoading`, `searchError`, and `hasSearched` without declaring their React state. That caused the app to fail while rendering the application and could produce a blank/white page.

Fixed in this build:
- Declared all donor-search state correctly.
- Added a React error boundary so a UI runtime error shows a recovery screen instead of a blank page.
- Added built-in demo donor fallback if the backend is unavailable.
- Donor search still uses the Express API when available.
- Compatibility, city, area, PIN, availability and radius filtering remain supported.
- Updated the service-worker cache version to force the repaired assets to replace the older cached build.
- Responsive donor cards and controls remain compatible with laptop, Android and iPhone widths.

## Run

1. Extract the ZIP.
2. Double-click `START-ADVANCED.bat`.
3. Open `http://localhost:5173`.
4. Click `Find Donors`.
5. The donor cards should appear automatically.
6. Use blood group, city, area or PIN filters and click `Search donors`.

If an older build is still displayed, use Ctrl+F5 on the laptop. On mobile, close the old browser tab and reopen the current URL.

## Package installation

The ZIP intentionally does not include `node_modules`. Run `npm install` in both `server` and `client`, or use `START-ADVANCED.bat`, which installs the package definitions before starting the app.
