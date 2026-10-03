# LifeLink Sample Data

The demo server starts with sample data automatically when MongoDB is not configured.

## Sample donors
10 demo donor profiles across Chennai, Tambaram and Chengalpattu, including blood group, area, PIN, availability, verification, donation history and approximate map coordinates.

## Sample emergency/live requests
8 sample blood requests with urgent/normal priority and statuses Open, Donor Found and Fulfilled.

## Sample inventory
All 8 blood groups have demo inventory with Available, Low or Critical status.

## Demo behavior
The sample data is in-memory demo data. It resets when the backend restarts unless MongoDB is configured and the application is extended to persist these records.
