Use Car_Salesdb;

-- Total Cars: To get count of total records
	Select Count(*) as Total_Cars
    From Car_Sales;
    
-- How many cars will be availabe in year 2020,2021,2022,2023?
	Select Year,Count(*) as Total_Cars_Available
    From car_sales
    Where Year In (2020,2021,2022,2023)
    Group By Year;	
    
-- Total cars available by year
	Select Year,Count(*) as Total_Cars_Available
    From car_sales
    Group By Year;	
    
-- Total revenue.
	Select Sum(Selling_Price) as Total_Revenue
    From Car_Sales;
    
-- Total revenue by year.
	Select Year,Sum(Selling_Price) as Total_Revenue
    From Car_Sales
    Group by year;
    
-- Total revenue by fuel type.
	Select Fuel as Fuel_Type,Sum(Selling_Price) as Total_Revenue
    From Car_Sales
    Group by Fuel;
    
-- Total revenue by owner Category.
	Select Owner as Owner_Category,Sum(Selling_Price) as Total_Revenue
    From Car_Sales
    Group by Owner;

-- Total revenue by Transmission type.
	Select Transmission as Transmission_Type,Sum(Selling_Price) as Total_Revenue
    From Car_Sales
    Group by Transmission;
    
-- Total revenue by Seats.
	Select Seats,Sum(Selling_Price) as Total_Revenue
    From Car_Sales
    Group by Seats
    order by Total_Revenue desc;
    
-- How many Total diesel cars available by year?
	Select Year,Count(*) as Total_Diesel_Cars_Available
    From car_sales
    where fuel = "Diesel"
    Group By Year;
    
-- How many Total petrol cars available by year?
	Select Year,Count(*) as Total_Diesel_Cars_Available
    From car_sales
    where fuel = "Petrol"
    Group By Year;
    
 -- Which year had more than 100 Cars?
	Select Year,Count(*) as Total_Cars
    From car_sales
    Group by year
    having Total_Cars > 100;
    
-- All cars details between 2015 & 2020 years?
	Select *
    From car_sales
    Where year between 2015 and 2020;
    
-- Total Cars available by Owners category
	Select Owner, Count(*) as Total_Cars_Available
    From Car_Sales
    Group by Owner
    Order by Total_Cars_Available desc;
    
-- Total Cars available by Transmission type
    Select Transmission, Count(*) as Total_Cars_Available
    From Car_Sales
    Group by Transmission
    Order by Total_Cars_Available desc;
    
-- Total Cars available by seller_type
    Select Seller_type, Count(*) as Total_Cars_Available
    From Car_Sales
    Group by Seller_type
    Order by Total_Cars_Available desc;
    
-- Top 10 Cars by highest Mileage.
	Select Name,Mileage_kmpl as "Mileage(kmpl)"
    From car_sales
    Order by Mileage_kmpl desc limit 10;
    
-- Top 10 Cars by engine(CC).
	Select Name,engine_cc as "Engine(CC)"
    From car_sales
    Order by engine_CC desc limit 10;
    
-- Top 10 Cars by Max_Power.
	Select Name,Max_Power_bhp as "Max_Power(bhp)"
    From car_sales
    Order by Max_Power_bhp desc limit 10;
    
-- Total Cars Available by Seat number.
	Select Seats, Count(*) as Total_Cars_Available
    From Car_Sales
    Group by Seats
    Order by Total_Cars_Available desc;

-- Most km_driven cars.
	Select name,Km_Driven
    From car_sales
    order by km_driven desc limit 10;
    
-- Highest selling_price cars by year.
	Select name,selling_price,year
    From car_sales
    Order by selling_price desc limit 20;
    
-- Highest Mileage of cars by transmission
	Select Transmission,Max(Mileage_kmpl) as Max_Mileage_kmpl
    From car_sales
    Group by Transmission;
    
-- Higest Mileage of cars by Fuel type.
	Select Fuel as Fuel_Type,Max(Mileage_kmpl) as Max_Mileage_kmpl
    From car_sales
    Group by Fuel
    Order by Max_mileage_kmpl desc;
    
-- Highest selling_price of cars by transmission
	Select Transmission,Max(selling_price) as Max_selling_price
    From car_sales
    Group by Transmission;
    
-- Higest Mileage of cars by Fuel type.
	Select Fuel as Fuel_Type,Max(selling_price) as Max_selling_price
    From car_sales
    Group by Fuel
    Order by Max_selling_price desc;
    
-- All Hyundai Company Cars.	
    Select name,count(*) as Cars_Number 
    From car_sales 
    Where name like "Hyundai%" 
    Group by name
    Order by Cars_Number desc;
    
-- All Mahindra Company Cars.
	Select name,count(*) as Cars_Number 
    From car_sales 
    Where name like "Mahindra%" 
    Group by name
    Order by Cars_Number desc;


	


    
    
    
