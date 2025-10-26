# Airbnb Database Normalization (Up to Third Normal Form - 3NF)

## 🎯 Objective
The goal of normalization is to minimize redundancy and dependency by organizing fields and table relationships properly.  
This ensures data consistency, scalability, and efficient querying.

---

## 🧱 Step 1: First Normal Form (1NF)

### ✅ Requirements:
1. Each table has a **primary key**.
2. All fields contain **atomic (indivisible)** values.
3. There are **no repeating groups or arrays**.

### 💡 Application to Airbnb Schema:
- Each table (User, Property, Booking, Payment, Review, Message) has a unique primary key (UUID).  
- All attributes hold **single values** (e.g., one email, one phone number per user).  
- No repeating columns such as `phone1`, `phone2`, etc.

✅ **Result:** The schema satisfies **1NF**.

---

## 🧩 Step 2: Second Normal Form (2NF)

### ✅ Requirements:
1. The table must be in 1NF.
2. All **non-key attributes** must depend **entirely on the primary key** — no **partial dependency**.

### 💡 Application to Airbnb Schema:
- In every table, all non-key attributes depend on the full primary key:
  - In **User**, all fields depend on `user_id`.
  - In **Property**, attributes like `name`, `location`, and `pricepernight` depend on `property_id`.
  - In **Booking**, fields like `start_date` and `total_price` depend on `booking_id`.
  - In **Payment**, fields like `amount` and `payment_method` depend on `payment_id`.
  - In **Review**, fields like `rating` and `comment` depend on `review_id`.
  - In **Message**, fields like `message_body` depend on `message_id`.

✅ **Result:** The schema satisfies **2NF** — no partial dependencies exist.

---

## 🧮 Step 3: Third Normal Form (3NF)

### ✅ Requirements:
1. The table must be in 2NF.
2. There are **no transitive dependencies** — meaning non-key attributes should not depend on other non-key attributes.

### 💡 Application to Airbnb Schema:
- **User Table:**  
  - `role`, `email`, `first_name`, etc., all depend directly on `user_id` — no transitive dependency.
- **Property Table:**  
  - `host_id` references `User.user_id`, but other attributes (e.g., `location`, `pricepernight`) depend only on `property_id`.
- **Booking Table:**  
  - `property_id` and `user_id` are foreign keys, but all booking details depend only on `booking_id`.
- **Payment Table:**  
  - All attributes depend directly on `payment_id`, not on other non-key fields.
- **Review Table:**  
  - `rating`, `comment`, `created_at` depend on `review_id`, not on `property_id` or `user_id`.
- **Message Table:**  
  - `message_body` depends directly on `message_id`, not on `sender_id` or `recipient_id`.

✅ **Result:** The schema satisfies **3NF** — no transitive dependencies found.

---

## 🧾 Final Normalized Structure Summary (3NF)

| Table | Primary Key | Key Dependencies | Normalization Achieved |
|--------|--------------|------------------|------------------------|
| **User** | user_id | All attributes depend on user_id | ✅ 3NF |
| **Property** | property_id | Depends on property_id; host_id is FK | ✅ 3NF |
| **Booking** | booking_id | Depends on booking_id; links User + Property | ✅ 3NF |
| **Payment** | payment_id | Depends on payment_id; linked to Booking | ✅ 3NF |
| **Review** | review_id | Depends on review_id; linked to User + Property | ✅ 3NF |
| **Message** | message_id | Depends on message_id; sender/recipient linked to User | ✅ 3NF |

---

## ✅ Conclusion

The **Airbnb database design** is **fully normalized up to Third Normal Form (3NF)**.  
- Each entity has a single primary key.  
- All non-key attributes depend directly on that key.  
- No redundant or derived data exists across entities.  
- Referential integrity is maintained via foreign key relationships.

**Result:** Efficient, scalable, and consistent database design ready for implementation.
