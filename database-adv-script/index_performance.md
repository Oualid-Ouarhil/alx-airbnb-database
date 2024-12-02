
CREATE INDEX idx_user_id ON User(user_id);


CREATE INDEX idx_user_email ON User(email);

CREATE INDEX idx_property_id ON Property(property_id);

CREATE INDEX idx_property_host_id ON Property(host_id);

CREATE INDEX idx_booking_id ON Booking(booking_id);

CREATE INDEX idx_booking_property_id ON Booking(property_id);

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



CREATE INDEX idx_user_id ON User(user_id);

CREATE INDEX idx_user_email ON User(email);

CREATE INDEX idx_property_id ON Property(property_id);

CREATE INDEX idx_property_host_id ON Property(host_id);

CREATE INDEX idx_booking_id ON Booking(booking_id);

CREATE INDEX idx_booking_property_id ON Booking(property_id);

CREATE INDEX idx_booking_user_id ON Booking(user_id);
