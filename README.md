# LifeLink — Smart Blood Donor Network

A responsive MERN-style blood donor discovery and blood-request management project with demo data, account registration/login, smart matching, inventory, analytics and PWA support.

## What is included

- Premium LifeLink homepage
- Uploaded blood-donation artwork displayed in a glass-style showcase panel
- Connected Donor Network section near the bottom of the homepage
- Footer with © 2026 LifeLink and technologies used
- Smart donor finder with blood compatibility, city/area/PIN, radius and location search
- Emergency and normal blood requests
- Live request list
- Blood-bank inventory status
- Donor dashboard and availability control
- Notifications in demo mode
- Analytics/admin dashboard
- Responsive mobile UI
- PWA manifest/service worker
- Demo sample donors, requests and inventory
- Functional account registration and login
- Persistent demo-mode accounts in `server/data/users.json`
- Frontend and backend package definitions

## Demo account

Email: `demo@lifelink.test`
Password: `LifeLink123`

You can also create a new account from **Register**. The backend validates the name, email, password and confirmation, hashes passwords with Node's `crypto.scryptSync`, saves the demo account and returns a session token.

## Run locally

### Option 1 — one click

Double-click `START-ADVANCED.bat`.

Then open:

`http://localhost:5173`

### Option 2 — manual

Terminal 1:

```bash
cd server
npm install
npm start
```

Terminal 2:

```bash
cd client
npm install
npm run dev
```

The Vite development server proxies `/api` to `http://127.0.0.1:5000`.

## Package files

Frontend packages are defined in `client/package.json`.
Backend packages are defined in `server/package.json`.
The root `package.json` provides install-all, development and production build scripts.

`node_modules` is intentionally not included in the ZIP. Run `npm install` so the correct packages are installed for the user's machine.

## Test the account system

See `ACCOUNT-TESTING.md` for registration/login steps and the demo account.

Backend health endpoint:

`http://localhost:5000/api/health`

## MongoDB

MongoDB is optional for this academic/demo build. Without `MONGO_URI`, the application runs with the supplied demo donors, requests and inventory and stores newly registered demo accounts in `server/data/users.json`.

For MongoDB, create `server/.env`:

```env
MONGO_URI=your_mongodb_connection_string
PORT=5000
CORS_ORIGIN=
```

## Android / same Wi-Fi

The Vite server uses `--host 0.0.0.0`. Connect the phone and computer to the same Wi-Fi and open:

`http://YOUR-PC-IP:5173`

Use `OPEN-ON-ANDROID-SAME-WIFI.bat` and allow Node.js through Windows Firewall on a private network if prompted.

## Important medical note

The blood compatibility feature is a software search aid only. Actual transfusion decisions, donor eligibility and blood-bank verification must be handled by qualified medical professionals and authorized blood banks.

Donor search was fixed in the latest build. See DONOR-SEARCH-FIX.md for testing steps.

## One-click mobile access

Double-click `OPEN-ON-MOBILE.bat`. It detects the laptop's active LAN IPv4 address, starts the backend and frontend, and displays the exact URL to open on Android or iPhone.

## Laptop + Mobile on Same Wi-Fi

Use `OPEN-ON-SAME-WIFI.bat`. It automatically detects the laptop's LAN IP, starts the frontend and backend, displays the laptop URL and the exact mobile URL, and opens the laptop version. Connect the Android/iPhone to the same Wi-Fi and enter the displayed mobile URL.
