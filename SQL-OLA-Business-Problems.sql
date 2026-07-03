CREATE DATABASE OLA;
USE OLA;

-- 1. Retrieve all successful bookings.  
	SELECT * FROM bookings
    WHERE Booking_status = 'Success';

-- 2. Find the average ride distance for each vehicle type. 
	SELECT Vehicle_type, AVG(Ride_Distance) as Avg_Distance FROM bookings
    GROUP BY Vehicle_type;
    
-- 3. Get the total number of canceled rides by customers. 
	SELECT COUNT(*) AS Total_Canceled_Rides_by_Customers FROM bookings
    WHERE Booking_Status = 'Canceled by Customer';
    
-- 4. List the top 5 customers who booked the highest number of rides.
	SELECT Customer_ID, COUNT(Booking_ID) as total_rides
    FROM bookings
    GROUP BY Customer_ID
    ORDER BY total_rides DESC LIMIT 5;
    
-- 5. Get the number of rides canceled by drivers due to personal and car-related issues. 
	SELECT COUNT(*) as Rides_canceled_by_drivers FROM bookings
    WHERE Canceled_rides_by_Driver = 'Personal & car related issue';
    
-- 6. Find the maximum and minimun driver ratings for Prime Sedan booking. 
	SELECT MAX(Driver_Ratings) as max_rating,
    MIN(Driver_Ratings) as min_rating 
    FROM bookings
    WHERE Vehicle_type = 'Prime Sedan';
    
-- 7. Retrieve all rides where payment was made using UPI.
	SELECT * FROM bookings
    WHERE Payment_Method = 'UPI';
    
-- 8. Find the average customer rating per vehicle type. 
	SELECT Vehicle_Type, AVG(Customer_Rating) as Customer_rating FROM bookings
    GROUP BY Vehicle_Type;
    
-- 9. Calculate the total booking value of rides completed successfully. 
	SELECT SUM(Booking_Value) as Total_successful_ride_value FROM bookings
    WHERE Booking_Status = 'Success';
    
-- 10. list all incomplete rides along with the reason. 
	SELECT Booking_ID, Incomplete_Rides, Incomplete_Rides_Reason FROM bookings
    WHERE Incomplete_Rides = 'Yes';

