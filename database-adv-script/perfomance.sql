
SELECT 
    Booking.booking_id,
    User.first_name AS user_first_name,
    User.last_name AS user_last_name,
    User.email AS user_email,
    Property.name AS property_name,
    Property.location AS property_location,
    Property.pricepernight,
    Payment.payment_id,
    Payment.amount AS payment_amount,
    Payment.payment_method,
    Payment.payment_date
FROM 
    Booking
INNER JOIN 
    User ON Booking.user_id = User.user_id
INNER JOIN 
    Property ON Booking.property_id = Property.property_id
INNER JOIN 
    Payment ON Booking.booking_id = Payment.booking_id;



EXPLAIN ANALYZE 
SELECT 
    Booking.booking_id,
    User.first_name AS user_first_name,
    User.last_name AS user_last_name,
    User.email AS user_email,
    Property.name AS property_name,
    Property.location AS property_location,
    Property.pricepernight,
    Payment.payment_id,
    Payment.amount AS payment_amount,
    Payment.payment_method,
    Payment.payment_date
FROM 
    Booking
INNER JOIN 
    User ON Booking.user_id = User.user_id
INNER JOIN 
    Property ON Booking.property_id = Property.property_id
INNER JOIN 
    Payment ON Booking.booking_id = Payment.booking_id;
