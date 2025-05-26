CREATE database Ola;
Use Ola;

 Q1.Retrieve all successful bookings:
Create view Succesful_Bookings as
select*from bookings
where Booking_Status='Success';
select*from Succesful_Bookings;
 2. Find the average ride distance for each vehicle type:

 select Vehicle_Type,AVG(Ride_Distance)
 as avg_distance from bookings
 group by Vehicle_Type;
 3. Get the total number of cancelled rides by customers:
 create view canceled_rides_by_customers as
 select count(*)from bookings
 where Booking_Status='Canceled by Customer';
 select*from canceled_rides_by_customers;
 4. List the top 5 customers who booked the highest number of rides:
 create View Top_5_Customers as 
 select Customer_ID,COUNT(Booking_ID) as total_rides 
 FROM bookings
 GROUP BY Customer_ID
 ORDER BY total_rides DESC LIMIT 5;
 select*from Top_5_Customers;
 
 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 select count (*) from Bookings
 Where Canceled_Rides_by_Driver='Personal & Car related issue';
 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 select MAX(Driver_Ratings) as max_rating,
 MIN(Driver_Ratings) as min_rating
 From bookings where Vehicle_Type='Prime Sedan';
 7. Retrieve all rides where payment was made using UPI:
create view UPI_Payment as
select *
from bookings where Payment_Method='UPI';
 8. Find the average customer rating per vehicle type:
 Create view AVG_CUST_Rating as 
 Select Vehicle_Type,AVG(Customer_Rating ) as avg_customer_rating
 from bookings 
 Group by Vehicle_type;
 9. Calculate the total booking value of rides completed successfully:
create view total_succesful_ride_values as
 select sum(Booking_Value) as total_succesful_value
 from bookings 
 where Booking_status='Success';
 10. List all incomplete rides along with the reason:
 create view Incomplete_Rides_Reason as
 select Booking_ID,Incomplete_Rides_Reason 
 FROM bookings 
 Where Incomplete_Rides='Yes';
