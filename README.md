# 🏡 Student Accommodation Bookings Analysis (2023–2024)

![Student Accommodation](https://img.icons8.com/color/512/student-male.png)

## 📖 Project Overview
This project analyzes **student accommodation bookings** over a two-year period (**January 2023 – December 2024**).  
The dataset includes booking details, student ID, property information, and pricing data.  
Our goal is to identify **trends, patterns, and factors** that influence student housing preferences.

---

## 📂 Dataset Information
**File Name:** `student_bookings_large.csv`  
**Rows:** 800  
**Time Period:** Jan 2023 – Dec 2024  

**Key Columns:**
- `booking_id` – Unique booking identifier  
- `student_id` – Unique student identifier  
- `student_country` – Country of student  
- `booking_date` – Date of booking  
- `move_in_date` – Date student moves in  
- `property_id` – Unique property identifier  
- `property_city` – City where the property is located  
- `property_type` – e.g., Studio, Shared, Apartment  
- `monthly_rent` – Rent amount in USD  
- `booking_status` – e.g., Confirmed, Cancelled, Pending  

---

## 🛠️ Tools & Technologies Used
- **Python:** Pandas 
- **SQL:** MS SQL 
- **Jupyter Notebook**  

---

## 📊 Key Analyses Performed

### SQL Queries
- **Revenue Analysis:** Total confirmed revenue per country in Q1 2024  
- **Cancellation Ratio:** % of cancelled bookings per country  
- **Time to Move In:** Avg. days from booking to move-in (confirmed only)  
- **Top Properties:** 3 highest-revenue properties in the UK  
- **Retention Insight:** Students with multiple bookings in 2024  

### Python & Pandas
- Avg. rent by referral source (confirmed only)  
- Median days to move-in by country  
- Highest revenue property in Australia (confirmed only)  
- Monthly confirmed booking trends in 2024 (bar chart)  
- Referral source comparison: confirmed bookings & avg. rent  



