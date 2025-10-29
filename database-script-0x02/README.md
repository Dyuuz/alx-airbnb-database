# Airbnb Database Seeding Script

### 🎯 Objective
This script populates the **ALX Airbnb database** with realistic sample data for testing and development.  
Entities include:  
- `User`  
- `Property`  
- `Booking`  
- `Payment`  
- `Review`  
- `Message`

---

### 🧩 Data Overview

| Table | Sample Records | Description |
|-------|----------------|--------------|
| **User** | 4 | Hosts and guests with distinct roles |
| **Property** | 3 | Listings owned by hosts |
| **Booking** | 3 | Guest bookings with varied statuses |
| **Payment** | 3 | Associated with bookings |
| **Review** | 3 | Guest feedback after stays |
| **Message** | 3 | Direct messages between hosts and guests |

---

### 🗂️ Usage
To seed the database:

```bash
psql -U your_username -d airbnb_db -f seed.sql
