
DROP TABLE IF EXISTS Booking;


CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);


CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');


CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_status ON Booking(status);


EXPLAIN ANALYZE 
SELECT * 
FROM Booking 
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';

EXPLAIN ANALYZE 
SELECT * 
FROM Booking 
WHERE start_date BETWEEN '2023-05-01' AND '2023-06-01';
