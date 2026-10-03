# Use BloodBridge on laptop + Android/iPhone

## Important
`localhost` means "this device". If you open `http://localhost:5173` on an Android phone, the phone looks for a website running on the phone itself. It will NOT reach your laptop.

There are two correct ways to use the project on another phone.

## Option 1 — Same Wi-Fi (quick demo)

1. Start the project on the laptop:
   `npm run dev`
2. Make sure the laptop and phone are connected to the same Wi-Fi.
3. Find the laptop's IPv4 address:
   - Windows: open Command Prompt and run `ipconfig`
   - Find `IPv4 Address`, for example `192.168.1.10`
4. On the phone open:
   `http://192.168.1.10:5173`
5. If Windows Firewall asks, allow Node.js on Private networks.
6. The frontend will call the backend at localhost by default, so for LAN phone testing create:
   `client/.env`
   with:
   `VITE_API_URL=http://192.168.1.10:5000/api`
7. Stop and restart `npm run dev` after changing `.env`.

If the phone can open the page but searches fail, the usual cause is the backend URL or Windows Firewall blocking port 5000.

## Option 2 — Public Internet (recommended for final submission)

For classmates/teachers to open the project from any network, the frontend and backend must be deployed to public hosting.

A typical setup is:
- Frontend: Vercel/Netlify
- Backend: Render/Railway
- Database: MongoDB Atlas

After deploying the backend, set the frontend environment variable:

`VITE_API_URL=https://YOUR-BACKEND-DOMAIN/api`

Then build/redeploy the frontend.

The Android/iPhone browser does not need Node.js or VS Code. It only needs the public website URL.

## Mobile design

The UI is responsive and includes mobile navigation, single-column forms, touch-friendly controls, and responsive donor/request cards.
