# LifeLink Advanced Edition

This build expands LifeLink into a full academic MERN blood-donor platform.

## Included
- Smart donor finder: blood compatibility, city/area/PIN, radius 5/10/25/50 km, availability and distance sorting.
- Emergency and normal blood requests with patient ID, hospital, units, required time, urgency and live status.
- Location support with browser geolocation and OpenStreetMap navigation.
- Roles: donor, patient/requester, hospital and admin at account level.
- Password hashing with Node crypto/scrypt, session tokens, protected endpoints, logout and demo email verification/reset flows.
- Donor dashboard with profile and availability toggle.
- Matching notifications generated for compatible available donors.
- Hospital/request workflow and request matching endpoint.
- Blood inventory with Available/Low/Critical indicators.
- Admin analytics and activity overview.
- Responsive mobile UI and installable PWA shell.
- Premium LifeLink homepage using the included hero artwork.

## Demo mode
The server works without MongoDB using in-memory data so the project can be demonstrated immediately. Configure `MONGO_URI` for persistent MongoDB storage.

## Start
1. `npm install` in `client` and `server`.
2. Start server: `cd server && npm start`.
3. Start frontend: `cd client && npm run dev`.
4. Open `http://localhost:5173`.

For a real deployment, add production-grade email delivery, JWT/refresh-token rotation, persistent notification storage, verified hospital workflows, HTTPS, a real map provider, stronger audit controls and regulatory/privacy review.
