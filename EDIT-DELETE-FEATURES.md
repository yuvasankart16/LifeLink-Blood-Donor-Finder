# LifeLink Edit & Delete Features

The current build includes working CRUD-style edit/delete actions for donor profiles and blood requests.

## Donors

After signing in, open **Find Donors**. Each donor card has **Edit** and **Delete** actions.

- Edit opens a responsive form modal.
- Save sends `PATCH /api/donors/:id`.
- Delete asks for confirmation and sends `DELETE /api/donors/:id`.

## Blood Requests

Open **Live Requests** after signing in.

- Edit opens a responsive request form.
- Save sends `PATCH /api/requests/:id`.
- Delete asks for confirmation and sends `DELETE /api/requests/:id`.

## Security behavior

Edit/delete API methods require the current LifeLink session token. The demo server validates the token before changing data.

## Mobile

The edit forms use a responsive modal and stack fields/buttons on small Android/iPhone screens.
