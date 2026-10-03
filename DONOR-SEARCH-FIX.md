# LifeLink donor-search fix

The donor finder now:

- Automatically loads the available sample donors when the Find Donors page opens.
- Filters by recipient blood group using compatible donor groups.
- Filters by city, area and PIN.
- Uses the selected radius only when browser location is enabled.
- Sorts by distance when coordinates are available.
- Shows a clear loading state and a useful error when the API is unavailable.
- Shows a clear no-results message instead of a blank section.
- Falls back to the built-in sample donors if MongoDB is connected but contains no donor records.
- Works through the Vite `/api` proxy on laptop, Android and iPhone when all devices use the same Wi-Fi and the laptop firewall permits Node/Vite.

## Quick test

1. Start the project with `START-ADVANCED.bat`.
2. Open `http://localhost:5173` on the laptop.
3. Open **Find Donors**.
4. Sample donors should appear automatically.
5. Select `A+` and search: compatible A+, A-, O+, and O- donors are returned.
6. Select `O-` and search: O- donors are returned.
7. Enter `Chennai` to filter by city.
8. Use **Use my location** and then search to sort/filter by distance.

If a phone cannot connect, use the laptop's LAN address such as `http://<LAPTOP-IP>:5173` rather than `localhost` on the phone.
