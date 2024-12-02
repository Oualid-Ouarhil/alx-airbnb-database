-- Insert Sample Data into User Table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('111e4567-e89b-12d3-a456-426614174000', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1234567890', 'host', NOW()),
('222e4567-e89b-12d3-a456-426614174000', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '0987654321', 'guest', NOW()),
('333e4567-e89b-12d3-a456-426614174000', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', NULL, 'guest', NOW());

-- Insert Sample Data into Property Table
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
('444e4567-e89b-12d3-a456-426614174000', '111e4567-e89b-12d3-a456-426614174000', 'Cozy Apartment', 'A nice and cozy apartment in the city center.', 'Paris, France', 150.00, NOW(), NOW()),
('555e4567-e89b-12d3-a456-426614174000', '111e4567-e89b-12d3-a456-426614174000', 'Beachfront Villa', 'Luxury villa with ocean views.', 'Marrakech, Morocco', 500.00, NOW(), NOW());

-- Insert Sample Data into Booking Table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, status, created_at)
VALUES
('666e4567-e89b-12d3-a456-426614174000', '444e4567-e89b-12d3-a456-426614174000', '222e4567-e89b-12d3-a456-426614174000', '2024-12-15', '2024-12-20', 'confirmed', NOW()),
('777e4567-e89b-12d3-a456-426614174000', '555e4567-e89b-12d3-a456-426614174000', '333e4567-e89b-12d3-a456-426614174000', '2024-12-22', '2024-12-27', 'pending', NOW());

-- Insert Sample Data into Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('888e4567-e89b-12d3-a456-426614174000', '666e4567-e89b-12d3-a456-426614174000', 750.00, NOW(), 'credit_card'),
('999e4567-e89b-12d3-a456-426614174000', '777e4567-e89b-12d3-a456-426614174000', 2500.00, NOW(), 'skrill');

-- Insert Sample Data into Review Table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('aaa24567-e89b-12d3-a456-426614174000', '444e4567-e89b-12d3-a456-426614174000', '222e4567-e89b-12d3-a456-426614174000', 5, 'Amazing apartment, but could be better!', NOW()),
('bbb34567-e89b-12d3-a456-426614174000', '555e4567-e89b-12d3-a456-426614174000', '333e4567-e89b-12d3-a456-426614174000', 4, 'Great but expensive.', NOW());

-- Insert Sample Data into Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('ccc4567-e89b-12d3-a456-426614174000', '222e4567-e89b-12d3-a456-426614174000', '111e4567-e89b-12d3-a456-426614174000', 'Hi, I want to rent.', NOW()),
('ddd4567-e89b-12d3-a456-426614174000', '111e4567-e89b-12d3-a456-426614174000', '222e4567-e89b-12d3-a456-426614174000', 'Sure, when!', NOW());
