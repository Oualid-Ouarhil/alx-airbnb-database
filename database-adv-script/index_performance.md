-- Index for User table: user_id (used in JOINs and WHERE clauses)
CREATE INDEX idx_user_id ON User(user_id);

-- Index for User table: email (used in WHERE clauses for lookups)
CREATE INDEX idx_user_email ON User(email);

-- Index for Property table: property_id (used in JOINs with Booking and Review tables)
CREATE INDEX idx_property_id ON Property(property_id);

-- Index for Property table: host_id (used in JOINs with User table)
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index for Booking table: booking_id (used in JOINs with Payment table)
CREATE INDEX idx_booking_id ON Booking(booking_id);

-- Index for Booking table: property_id (used in JOINs with Property table)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index for Booking table: user_id (used in JOINs with User table)
CREATE INDEX idx_booking_user_id ON Booking(user_id);


EXPLAIN SELECT 
    User.first_name, User.last_name, COUNT(Booking.booking_id) 
FROM 
    User
INNER JOIN 
    Booking ON User.user_id = Booking.user_id
GROUP BY 
    User.user_id;


EXPLAIN SELECT 
    User.first_name, User.last_name, COUNT(Booking.booking_id) 
FROM 
    User
INNER JOIN 
    Booking ON User.user_id = Booking.user_id
GROUP BY 
    User.user_id;


-- database_index.sql

-- Index for User table: user_id (used in JOINs and WHERE clauses)
CREATE INDEX idx_user_id ON User(user_id);

-- Index for User table: email (used in WHERE clauses for lookups)
CREATE INDEX idx_user_email ON User(email);

-- Index for Property table: property_id (used in JOINs with Booking and Review tables)
CREATE INDEX idx_property_id ON Property(property_id);

-- Index for Property table: host_id (used in JOINs with User table)
CREATE INDEX idx_property_host_id ON Property(host_id);

-- Index for Booking table: booking_id (used in JOINs with Payment table)
CREATE INDEX idx_booking_id ON Booking(booking_id);

-- Index for Booking table: property_id (used in JOINs with Property table)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index for Booking table: user_id (used in JOINs with User table)
CREATE INDEX idx_booking_user_id ON Booking(user_id);
