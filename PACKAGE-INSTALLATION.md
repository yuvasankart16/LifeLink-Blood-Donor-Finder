# LifeLink Package Installation

This ZIP contains the complete source code and package definitions for both sides of the application.

## Frontend

Location: `client/`

```bash
cd client
npm install
npm run dev
```

Main packages:
- React
- React DOM
- Lucide React
- Vite
- Vite React plugin

## Backend

Location: `server/`

```bash
cd server
npm install
npm start
```

Main packages:
- Express
- CORS
- dotenv
- Mongoose
- Nodemon for development

## Root project

From the project root:

```bash
npm install
npm run install-all
npm run dev
```

Do not copy `node_modules` from another computer. Install packages locally with npm so native dependencies and versions are resolved correctly.
