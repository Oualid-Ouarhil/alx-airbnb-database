-- partitioning.sql

-- Step 1: Drop the existing Booking table if it exists
DROP TABLE IF EXISTS Booking;

-- Step 2: Create the partitioned Booking table based on the start_date column
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions for specific date ranges (e.g., yearly partitions)
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: (Optional) Add indexes on the partitioned table for faster query performance
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);


-- Test Query Before Partitioning (On Unpartitioned Table)
EXPLAIN ANALYZE 
SELECT * 
FROM Booking 
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';

-- Test Query After Partitioning (On Partitioned Table)
EXPLAIN ANALYZE 
SELECT * 
FROM Booking 
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';
