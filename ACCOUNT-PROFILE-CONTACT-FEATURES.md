# LifeLink Account, Donor Profile & Contact Features

## Account flow
1. Register with name, email, password, confirm password and account type.
2. The server creates the account and returns: **Account created successfully. Please sign in...**
3. The user is taken to the Login page.
4. Enter the same email and password.
5. Login opens the LifeLink Home page.
6. The top-right user chip shows the signed-in user's name and email.
7. Clicking the user chip opens the account details panel.

## Saved donor profile
From Dashboard, a signed-in user can:
- Create a donor profile
- View the saved profile
- Edit/update every profile field
- Change donor availability
- Delete only their saved donor profile while keeping the LifeLink account

The profile is linked to the account in demo mode using `server/data/users.json` and the in-memory donor store.

## Donor contact
On a sample donor card:
- **Contact** reveals the donor's phone number and provides a Call button.
- **Email** reveals the donor's email address and provides an Open email button.

## Mobile
The account/profile UI is responsive for laptop, Android and iPhone screens.
