select * from student_bookings;
/*
Revenue Analysis:
Write a query to calculate the total confirmed revenue for each country in Q1 2024. Sort by revenue descending.
*/

with cte as 
(select 
country,
cast(year(booking_date) as varchar(4)) + '-Q' + cast(datepart(quarter, booking_date) as varchar(1)) as year_qtr,
round(monthly_rent_usd,2) as monthly_rent_usd
from student_bookings
where booking_status = 'Confirmed')

select
year_qtr as YEAR_QUARTER,
country as COUNTRY,
sum(monthly_rent_usd) as TOTAL_REVENUE
from cte
where year_qtr = '2024-Q1'
group by year_qtr, country
order by TOTAL_REVENUE desc;


/*
Cancellation Ratio:
For each country, find the cancellation rate = (Cancelled bookings / Total bookings) × 100.
*/

select 
country as COUNTRY,
cast(cast((count(case when booking_status = 'Cancelled' then 1 end)*100.0/count(*)*1.0) as decimal(10,2)) as varchar(50)) + '%' as CANCELLATION_RATE
from student_bookings
group by country
order by CANCELLATION_RATE desc;

/*
Time to Move In:
Find the average number of days between booking_date and move_in_date for confirmed bookings only.
*/

select 
avg(DATEDIFF(day, booking_date, move_in_date)) as AVERAGE_DAYS_TO_MOVE
from student_bookings 
where booking_status = 'Confirmed';


/*
Top Properties:
Find the top 3 properties by total revenue (confirmed bookings only) in the UK.
*/

select top 3
property_id as PROPERTY_ID,
cast(sum(monthly_rent_usd) as decimal(10,2)) as TOTAL_REVENUE
from student_bookings
where booking_status = 'Confirmed' and Country = 'UK'
group by property_id
order by TOTAL_REVENUE desc;


/*
Retention Insight:
Identify students who booked more than once in 2024. Return student_id and number of confirmed bookings.
*/

select 
student_id as STUDENT_ID,
count(student_id) as BOOK_COUNT,
count(case when booking_status='Confirmed' then 1 end) as CONFIRMRD_BOOK_COUNT
from student_bookings 
where year(booking_date) = '2024'
group by student_id
having count(student_id) > 1
order by BOOK_COUNT desc, CONFIRMRD_BOOK_COUNT desc
