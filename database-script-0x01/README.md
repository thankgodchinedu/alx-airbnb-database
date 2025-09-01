# Database Schema (DDL)

This directory contains the SQL schema for the Airbnb clone project.

## Files
- **schema.sql** → Defines all tables, constraints, and indexes.

## Schema Design
The schema is based on the Airbnb system with the following entities:
- **Users**: Manages guest/host/admin accounts.
- **Properties**: Listings owned by hosts.
- **Bookings**: Reservations made by users for properties.
- **Payments**: Records of transactions tied to bookings.
- **Reviews**: Feedback linked to completed bookings.
- **Messages**: Communication between users.

## Normalization
- Schema follows **Third Normal Form (3NF)**:
  - Removed derived attributes (`Booking.total_price`).
  - Linked reviews to bookings (ensures integrity).
- Proper constraints ensure data consistency.

## Indexing
- Added indexes for fast lookups:
  - User email
  - Property location
  - Booking dates
  - Payment booking reference
  - Review booking reference
