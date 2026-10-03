# LifeLink Account, Contact and Profile Fixes

## Find Donors
- Email now first reveals the donor email address.
- Send email uses the device/browser mail handler without opening a normal website tab.
- Contact reveals the phone number before the Call action.

## Live Requests
- Emergency requests now have a Show contact button.
- The patient/hospital contact number is displayed before Call now.

## Dashboard
- View my saved profile opens a real profile modal.
- Saved profile shows name, blood group, age, city, area, PIN, phone, email, last donation and availability.
- Save / Update profile and Delete saved profile remain available.

## Login / Registration
- Registration returns to Login with a success message.
- The same email and password can then be used to sign in.
- After login, the top-right user chip shows the logged-in user's name and email.
- Clicking the user chip opens account details.
- A deterministic demo account is seeded on server startup:
  - Email: demo@lifelink.test
  - Password: LifeLink123
  - Role: donor
  - Blood group: O+
  - City: Chennai
  - Area: Velachery
  - Phone: 9876543210

## Cache
- The PWA service-worker cache was bumped so these fixes replace older cached JavaScript.
