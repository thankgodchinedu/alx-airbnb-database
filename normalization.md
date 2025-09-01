# Database Normalization – Airbnb Clone

## Goal
Apply normalization rules (1NF → 3NF) to the Airbnb database schema.

---

## 1NF — First Normal Form
- Each table has a primary key.
- Attributes are atomic (no repeating or multivalued fields).
- ✅ Schema is in 1NF.

---

## 2NF — Second Normal Form
- No partial dependency on composite keys.
- All tables use single-column primary keys (UUIDs).
- ✅ Schema is in 2NF.

---

## 3NF — Third Normal Form
- Remove transitive dependencies (non-key attributes depending on other non-key attributes).

### Findings:
- **Booking table:** `total_price` is derivable (`pricepernight × number_of_nights`). Keeping it violates 3NF.  
  **Solution:** Remove `total_price` and calculate when needed.  
- **Review table:** To ensure only real guests review, add `booking_id` FK → `Booking.booking_id`.  
  This enforces integrity and prevents fake reviews.

### Other tables:
- **User, Property, Payment, Message** → already satisfy 3NF.

---

## Summary of Changes
1. Remove `Booking.total_price` (normalize redundancy).  
2. Add `booking_id` to `Review` (improve integrity).  
3. All other tables remain unchanged.

---

## Conclusion
The schema now satisfies **Third Normal Form (3NF)**.  
- No repeating groups.  
- No partial dependencies.  
- No transitive dependencies.  
- Integrity enforced with better foreign key design.

