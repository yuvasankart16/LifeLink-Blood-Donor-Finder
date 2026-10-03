# LifeLink account pages

## Create account
Use **Sign in** in the top-right corner, then choose **Create an account**.

Required fields:
- Full name
- Email address
- Password (minimum 6 characters)

## Sign in
Use the email and password from the account you created.

## Demo mode
If MongoDB is not configured, accounts are kept in server memory while the server is running. This is useful for a college demo.

## MongoDB mode
Set `MONGO_URI` in `server/.env`. User accounts are stored in MongoDB with a salted scrypt password hash.
