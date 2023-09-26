-- My SQL Project: Second Hand Car Dealer

SELECT * FROM cars.car_dekho;
use cars;
-- READ DATA
select*from car_dekho;

-- Total cars: 	To get a count of total records
select count(*) from car_dekho;

-- The Manager asked the employee how many cars will be avilable in 2023?
select count(*) from car_dekho	where year = 2023;  #6

-- The manager asked the employee how many 	cars is available in 2020,2021,2022 
select count(*) from car_dekho	where year = 2020; #74
select count(*) from car_dekho	where year = 2021; #7
select count(*) from car_dekho	where year = 2022; #7

select count(*) as number_of_cars
from car_dekho
where year in (2020,2021,2022)
group by year;

-- client asked me to print total of all cars by year,
select year, count(*) from car_dekho group by year;

-- client asked to car dealer agent how many diesel cars will there be in 2020
select count(*)  from car_dekho where year = 2020 and fuel = 'Diesel';

-- client requested a car dealer agent how many petrol cars will there be in 2020
select count(*) from car_dekho where year = 2020 and fuel = 'petrol';  #51

-- the manager told the employee to give a print all the type of fuel cars 
select year, count(*) from car_dekho where fuel = 'petrol' group by year;
select year, count(*) from car_dekho where fuel = 'diesle' group by year;
select year, count(*) from car_dekho where fuel = 'CNG' group by year;

-- manager said there were more then 100 cars in a given year, which year had more the 100 cars
select year, count(*) from car_dekho group by year having count(*)>100;

-- the manager said to the employee all cars count details between 2015 and 2023, we need a complete list	
select count(*) from car_dekho where year between 2015 and 2023;  #4124

-- the manager said to the employee all car details between 2015 to 2023 we need complete list
select *  from car_dekho where year between 2015 and 2023;  


 

