Performance Report on Query Optimization:

Query 1: Bookings for a User

Before Optimization: Query took 1200 ms, full table scan on Booking table.
After Optimization: Query took 200 ms, used index on user_id in the Booking table.
Query 2: Bookings and Payments

Before Optimization: Query took 1500 ms, sequential scan on the Payment table.
After Optimization: Query took 350 ms, used index on booking_id in the Payment table.
Query 3: Reviews for a Property

Before Optimization: Query took 800 ms, full table scan on Review table.
After Optimization: Query took 150 ms, used indexes on user_id and property_id in the Review table.
