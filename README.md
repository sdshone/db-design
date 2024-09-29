# Movie Ticket Booking System

This project is a simplified version of a movie ticket booking system, similar to platforms like BookMyShow. It allows users to browse movie shows in different theaters, view available show timings, and book tickets. The database schema includes several key entities such as movies, theaters, users, and bookings, which are designed to be normalized and optimized for efficient querying.

# Setup Instructions

1. Clone the repository from GitHub:
```bash
git clone https://github.com/your-repo-url.git
```

2. Set up MySQL and create the database:
```sql
CREATE DATABASE movie_booking_db;
USE movie_booking_db;
```

3. Run the SQL scripts to create tables and insert sample data:
```bash
mysql -u username -p movie_booking_db < definition.sql
mysql -u username -p movie_booking_db < sample-data.sql
```