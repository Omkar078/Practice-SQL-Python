-- Problem 1 — Easy
-- Business Context: You're a data analyst at an e-commerce company. The marketing team wants to send a promotional email to customers from a specific city to boost regional sales

-- Task: Retrieve the full name (as a single column called full_name) and email of all customers from Mumbai, sorted by their signup date from newest to oldest.

create table customers (
    customer_id   INT PRIMARY KEY,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    city          VARCHAR(50),
    email         VARCHAR(100),
    signup_date   DATE
)

INSERT INTO customers (customer_id, first_name, last_name, city, email, signup_date)
VALUES
(1, 'Amit', 'Sharma', 'Mumbai', 'amit.sharma@email.com', '2023-01-15'),
(2, 'Priya', 'Patel', 'Pune', 'priya.patel@email.com', '2023-02-20'),
(3, 'Rahul', 'Verma', 'Delhi', 'rahul.verma@email.com', '2023-03-10'),
(4, 'Sneha', 'Joshi', 'Bangalore', 'sneha.joshi@email.com', '2023-04-05'),
(5, 'Vikram', 'Singh', 'Hyderabad', 'vikram.singh@email.com', '2023-05-18'),
(6, 'Neha', 'Gupta', 'Chennai', 'neha.gupta@email.com', '2023-06-22'),
(7, 'Arjun', 'Mehta', 'Ahmedabad', 'arjun.mehta@email.com', '2023-07-11'),
(8, 'Kavya', 'Reddy', 'Kolkata', 'kavya.reddy@email.com', '2023-08-30'),
(9, 'Rohan', 'Desai', 'Jaipur', 'rohan.desai@email.com', '2023-09-14'),
(10, 'Pooja', 'Nair', 'Lucknow', 'pooja.nair@email.com', '2023-10-25'),
(11, 'Suresh', 'Iyer', 'Mumbai', 'suresh.iyer@email.com', '2023-11-02'),
(12, 'Anjali', 'Kapoor', 'Delhi', 'anjali.kapoor@email.com', '2023-11-10'),
(13, 'Manish', 'Yadav', 'Pune', 'manish.yadav@email.com', '2023-11-18'),
(14, 'Divya', 'Malhotra', 'Bangalore', 'divya.malhotra@email.com', '2023-11-25'),
(15, 'Karan', 'Chopra', 'Hyderabad', 'karan.chopra@email.com', '2023-12-01'),
(16, 'Meera', 'Saxena', 'Chennai', 'meera.saxena@email.com', '2023-12-08'),
(17, 'Nikhil', 'Bansal', 'Ahmedabad', 'nikhil.bansal@email.com', '2023-12-15'),
(18, 'Shreya', 'Menon', 'Kolkata', 'shreya.menon@email.com', '2023-12-22'),
(19, 'Aditya', 'Kulkarni', 'Jaipur', 'aditya.kulkarni@email.com', '2024-01-05'),
(20, 'Ritika', 'Sinha', 'Lucknow', 'ritika.sinha@email.com', '2024-01-12'),
(21, 'Harsh', 'Agarwal', 'Mumbai', 'harsh.agarwal@email.com', '2024-01-20'),
(22, 'Simran', 'Kaur', 'Delhi', 'simran.kaur@email.com', '2024-01-28'),
(23, 'Yash', 'Trivedi', 'Pune', 'yash.trivedi@email.com', '2024-02-04'),
(24, 'Ishita', 'Bhatt', 'Bangalore', 'ishita.bhatt@email.com', '2024-02-11'),
(25, 'Varun', 'Mishra', 'Hyderabad', 'varun.mishra@email.com', '2024-02-19'),
(26, 'Tanvi', 'Pandey', 'Chennai', 'tanvi.pandey@email.com', '2024-02-26'),
(27, 'Siddharth', 'Rao', 'Ahmedabad', 'siddharth.rao@email.com', '2024-03-03'),
(28, 'Ayesha', 'Fernandes', 'Kolkata', 'ayesha.fernandes@email.com', '2024-03-10'),
(29, 'Deepak', 'Jain', 'Jaipur', 'deepak.jain@email.com', '2024-03-18'),
(30, 'Nandini', 'Pillai', 'Lucknow', 'nandini.pillai@email.com', '2024-03-25');


select CONCAT(c.first_name,' ', c.last_name) as full_name, c.email
from customers c 
where c.city = 'Mumbai'
order by c.signup_date desc

-- Task: List the plan_name and price_inr of all active monthly plans with a price between ₹500 and ₹2000 (inclusive), ordered by price ascending

create table subscription_plans (
    plan_id       INT PRIMARY KEY,
    plan_name     VARCHAR(50),
    price_inr     DECIMAL(10,2),
    billing_cycle VARCHAR(20),   -- 'monthly', 'annual'
    is_active     BOOLEAN
)

INSERT INTO subscription_plans (plan_id, plan_name, price_inr, billing_cycle, is_active)
VALUES
(1, 'Basic Plan', 499.00, 'monthly', TRUE),
(2, 'Standard Plan', 999.00, 'monthly', TRUE),
(3, 'Premium Plan', 1499.00, 'monthly', TRUE),
(4, 'Basic Annual', 4999.00, 'annual', TRUE),
(5, 'Standard Annual', 9999.00, 'annual', TRUE),
(6, 'Premium Annual', 14999.00, 'annual', TRUE),
(7, 'Student Plan', 299.00, 'monthly', TRUE),
(8, 'Enterprise Plan', 24999.00, 'annual', FALSE),
(9, 'Trial Plan', 0.00, 'monthly', TRUE),
(10, 'Legacy Plan', 799.00, 'monthly', FALSE),
(11, 'Starter Plan', 399.00, 'monthly', TRUE),
(12, 'Pro Plan', 1999.00, 'monthly', TRUE),
(13, 'Business Plan', 3499.00, 'monthly', TRUE),
(14, 'Family Plan', 1299.00, 'monthly', TRUE),
(15, 'Family Annual', 12999.00, 'annual', TRUE),
(16, 'Startup Plan', 5999.00, 'annual', TRUE),
(17, 'Corporate Plan', 49999.00, 'annual', FALSE),
(18, 'Education Plan', 199.00, 'monthly', TRUE),
(19, 'NGO Plan', 999.00, 'monthly', TRUE),
(20, 'Freelancer Plan', 699.00, 'monthly', TRUE),
(21, 'Silver Plan', 799.00, 'monthly', TRUE),
(22, 'Gold Plan', 1599.00, 'monthly', TRUE),
(23, 'Platinum Plan', 2499.00, 'monthly', TRUE),
(24, 'Silver Annual', 7999.00, 'annual', TRUE),
(25, 'Gold Annual', 15999.00, 'annual', TRUE),
(26, 'Platinum Annual', 24999.00, 'annual', TRUE),
(27, 'Intern Plan', 149.00, 'monthly', TRUE),
(28, 'Seasonal Offer Plan', 899.00, 'monthly', FALSE),
(29, 'Holiday Special Plan', 1099.00, 'monthly', FALSE),
(30, 'VIP Plan', 59999.00, 'annual', TRUE);

select plan_name, price_inr
from subscription_plans
where (price_inr between 500 and 2000)
and billing_cycle = 'monthly'
and is_active = 'TRUE'
order by price_inr asc

--- Task: Find all shipments that were delivered more than 3 days late. Show shipment_id, carrier, expected_delivery, actual_delivery, and a calculated column called days_delayed. Only include shipments with a status of 'delivered'. Sort by days_delayed descending.

SELECT shipment_id, carrier, expected_delivery, actual_delivery, DATEDIFF(actual_delivery, expected_delivery) AS days_delayed 
FROM shipments
WHERE status = 'delivered'
AND DATEDIFF(actual_delivery, expected_delivery) > 3

-- Task: Find all patients who had more than 5 check-ins in April 2024. Show patient_id and their total check-in count as total_checkins, ordered by total_checkins descending.

SELECT hc.patient_id,
       COUNT(*) AS total_checkins
FROM health_checkins hc
WHERE YEAR(hc.checkin_date) = 2024
  AND MONTH(hc.checkin_date) = 4
GROUP BY hc.patient_id
HAVING total_checkins > 5
ORDER BY total_checkins DESC;

--- Task: For each acquisition channel, find the top 3 users by total events logged. Show channel, username, total_events, and their rank within that channel. If a channel has fewer than 3 users, show all of them.

SELECT
    channel,
    username,
    total_events,
    user_rank
FROM (
    SELECT
        u.channel,
        u.username,
        COUNT(e.event_id) AS total_events,
        DENSE_RANK() OVER (
            PARTITION BY u.channel
            ORDER BY COUNT(e.event_id) DESC
        ) AS user_rank
    FROM users u
    LEFT JOIN events e
        ON u.user_id = e.user_id
    GROUP BY u.channel, u.username
) ranked_users
WHERE user_rank <= 3
ORDER BY channel, user_rank, username;

--------

-- Task: Retrieve order_id, full_name, email, order_date, and order_status for all orders. Sort by order_date ascending.

create table customer (
    customer_id   INT PRIMARY KEY,
    full_name     VARCHAR(100),
    email         VARCHAR(100),
    city          VARCHAR(50)
)

create table orders (
    order_id      INT PRIMARY KEY,
    customer_id   INT,
    order_date    DATE,
    order_status  VARCHAR(20),   -- 'pending', 'shipped', 'delivered'
    total_amount  DECIMAL(10,2)
)

INSERT INTO customer (customer_id, full_name, email, city)
VALUES
(1, 'Amit Sharma', 'amit.sharma@gmail.com', 'Mumbai'),
(2, 'Priya Verma', 'priya.verma@gmail.com', 'Pune'),
(3, 'Rahul Patil', 'rahul.patil@gmail.com', 'Nagpur'),
(4, 'Sneha Joshi', 'sneha.joshi@gmail.com', 'Nashik'),
(5, 'Vikram Singh', 'vikram.singh@gmail.com', 'Delhi'),
(6, 'Neha Kapoor', 'neha.kapoor@gmail.com', 'Bangalore'),
(7, 'Arjun Mehta', 'arjun.mehta@gmail.com', 'Hyderabad'),
(8, 'Pooja Nair', 'pooja.nair@gmail.com', 'Chennai'),
(9, 'Karan Malhotra', 'karan.malhotra@gmail.com', 'Kolkata'),
(10, 'Anjali Desai', 'anjali.desai@gmail.com', 'Ahmedabad'),
(11, 'Rohit Yadav', 'rohit.yadav@gmail.com', 'Jaipur'),
(12, 'Meera Iyer', 'meera.iyer@gmail.com', 'Surat'),
(13, 'Sanjay Kulkarni', 'sanjay.kulkarni@gmail.com', 'Indore'),
(14, 'Divya Reddy', 'divya.reddy@gmail.com', 'Bhopal'),
(15, 'Manish Gupta', 'manish.gupta@gmail.com', 'Lucknow'),
(16, 'Kavita Shah', 'kavita.shah@gmail.com', 'Kanpur'),
(17, 'Deepak Sinha', 'deepak.sinha@gmail.com', 'Patna'),
(18, 'Ritu Arora', 'ritu.arora@gmail.com', 'Chandigarh'),
(19, 'Nitin Jain', 'nitin.jain@gmail.com', 'Noida'),
(20, 'Shreya Das', 'shreya.das@gmail.com', 'Guwahati'),
(21, 'Tarun Verma', 'tarun.verma@gmail.com', 'Bhubaneswar'),
(22, 'Aisha Khan', 'aisha.khan@gmail.com', 'Kochi'),
(23, 'Yash Thakur', 'yash.thakur@gmail.com', 'Dehradun'),
(24, 'Simran Kaur', 'simran.kaur@gmail.com', 'Amritsar'),
(25, 'Harsh Vardhan', 'harsh.vardhan@gmail.com', 'Varanasi'),
(26, 'Nandini Rao', 'nandini.rao@gmail.com', 'Mysore'),
(27, 'Abhishek Mishra', 'abhishek.mishra@gmail.com', 'Allahabad'),
(28, 'Ishita Sen', 'ishita.sen@gmail.com', 'Ranchi'),
(29, 'Gaurav Bansal', 'gaurav.bansal@gmail.com', 'Jodhpur'),
(30, 'Tanvi Chawla', 'tanvi.chawla@gmail.com', 'Shimla');



-- Insert data into orders table (30 rows)
-- customer_id is linked with customer.customer_id

INSERT INTO orders (order_id, customer_id, order_date, order_status, total_amount)
VALUES
(101, 1, '2024-05-10', 'delivered', 2500.00),
(102, 1, '2024-05-15', 'shipped', 1800.50),
(103, 2, '2024-05-18', 'pending', 3200.75),
(104, 3, '2024-05-20', 'delivered', 1500.00),
(105, 3, '2024-05-22', 'shipped', 2750.25),
(106, 4, '2024-05-25', 'pending', 999.99),
(107, 5, '2024-05-28', 'delivered', 4200.00),
(108, 6, '2024-06-01', 'shipped', 3100.00),
(109, 7, '2024-06-03', 'pending', 2750.80),
(110, 8, '2024-06-05', 'delivered', 5400.50),
(111, 9, '2024-06-07', 'shipped', 1200.00),
(112, 10, '2024-06-09', 'pending', 890.75),
(113, 11, '2024-06-10', 'delivered', 4500.00),
(114, 12, '2024-06-11', 'shipped', 1999.99),
(115, 13, '2024-06-12', 'pending', 3500.20),
(116, 14, '2024-06-13', 'delivered', 6100.00),
(117, 15, '2024-06-14', 'shipped', 1450.00),
(118, 16, '2024-06-15', 'pending', 2755.55),
(119, 17, '2024-06-16', 'delivered', 3300.00),
(120, 18, '2024-06-17', 'shipped', 4100.75),
(121, 19, '2024-06-18', 'pending', 5000.00),
(122, 20, '2024-06-19', 'delivered', 2800.00),
(123, 21, '2024-06-20', 'shipped', 1990.90),
(124, 22, '2024-06-21', 'pending', 3650.60),
(125, 23, '2024-06-22', 'delivered', 7200.00),
(126, 24, '2024-06-23', 'shipped', 1800.00),
(127, 25, '2024-06-24', 'pending', 2950.45),
(128, 26, '2024-06-25', 'delivered', 4100.10),
(129, 27, '2024-06-26', 'shipped', 1600.75),
(130, 28, '2024-06-27', 'pending', 5200.00)

select o.order_id, c.full_name, c.email, o.order_date, o.order_status
from customer c 
join orders o 
on c.customer_id = o.customer_id 
order by o.order_date asc


--- Task: Find all customers who have no orders at all. Show customer_id, full_name, and email.


select o.customer_id, c.full_name, c.email
from customer c 
join orders o 
on c.customer_id = o.customer_id 
where o.order_id is null or o.order_id = ''

---- Task: Show all orders with their assigned agent's agent_name and zone. Unassigned orders must still appear. Show order_id, customer_name, order_date, total_amount, agent_name, and zone. Sort by order_date, then order_id.

create table delivery_orders (
    order_id       INT PRIMARY KEY,
    customer_name  VARCHAR(100),
    order_date     DATE,
    total_amount   DECIMAL(10,2),
    agent_id       INT            -- NULL if unassigned
)

create table delivery_agents (
    agent_id      INT PRIMARY KEY,
    agent_name    VARCHAR(100),
    zone          VARCHAR(50),
    is_available  BOOLEAN
)


iNSERT INTO delivery_orders (order_id, customer_name, order_date, total_amount, agent_id)
VALUES
(101, 'Amit Sharma', '2024-05-10', 2500.00, 1),
(102, 'Priya Verma', '2024-05-11', 1800.50, 2),
(103, 'Rahul Patil', '2024-05-12', 3200.75, NULL),
(104, 'Sneha Joshi', '2024-05-13', 1500.00, 4),
(105, 'Vikram Singh', '2024-05-14', 2750.25, 5),
(106, 'Neha Kapoor', '2024-05-15', 999.99, NULL),
(107, 'Arjun Mehta', '2024-05-16', 4200.00, 7),
(108, 'Pooja Nair', '2024-05-17', 3100.00, 8),
(109, 'Karan Malhotra', '2024-05-18', 2750.80, NULL),
(110, 'Anjali Desai', '2024-05-19', 5400.50, 10),
(111, 'Rohit Yadav', '2024-05-20', 1200.00, 11),
(112, 'Meera Iyer', '2024-05-21', 890.75, NULL),
(113, 'Sanjay Kulkarni', '2024-05-22', 4500.00, 13),
(114, 'Divya Reddy', '2024-05-23', 1999.99, 14),
(115, 'Manish Gupta', '2024-05-24', 3500.20, NULL),
(116, 'Kavita Shah', '2024-05-25', 6100.00, 16),
(117, 'Deepak Sinha', '2024-05-26', 1450.00, 17),
(118, 'Ritu Arora', '2024-05-27', 2755.55, NULL),
(119, 'Nitin Jain', '2024-05-28', 3300.00, 19),
(120, 'Shreya Das', '2024-05-29', 4100.75, 20),
(121, 'Tarun Verma', '2024-05-30', 5000.00, NULL),
(122, 'Aisha Khan', '2024-05-31', 2800.00, 22),
(123, 'Yash Thakur', '2024-06-01', 1990.90, 23),
(124, 'Simran Kaur', '2024-06-02', 3650.60, NULL),
(125, 'Harsh Vardhan', '2024-06-03', 7200.00, 25),
(126, 'Nandini Rao', '2024-06-04', 1800.00, 26),
(127, 'Abhishek Mishra', '2024-06-05', 2950.45, NULL),
(128, 'Ishita Sen', '2024-06-06', 4100.10, 28),
(129, 'Gaurav Bansal', '2024-06-07', 1600.75, 29),
(130, 'Tanvi Chawla', '2024-06-08', 5200.00, NULL);

INSERT INTO delivery_agents (agent_id, agent_name, zone, is_available)
VALUES
(1, 'Ravi Kumar', 'Mumbai', TRUE),
(2, 'Sneha Patil', 'Pune', TRUE),
(3, 'Aman Verma', 'Delhi', FALSE),
(4, 'Pooja Sharma', 'Bangalore', TRUE),
(5, 'Karan Singh', 'Hyderabad', FALSE),
(6, 'Neha Joshi', 'Chennai', TRUE),
(7, 'Arjun Mehta', 'Kolkata', TRUE),
(8, 'Divya Reddy', 'Ahmedabad', FALSE),
(9, 'Rohit Jain', 'Jaipur', TRUE),
(10, 'Meera Nair', 'Lucknow', TRUE),
(11, 'Sanjay Das', 'Indore', FALSE),
(12, 'Kavita Shah', 'Surat', TRUE),
(13, 'Nitin Gupta', 'Patna', TRUE),
(14, 'Anjali Rao', 'Bhopal', FALSE),
(15, 'Vikas Yadav', 'Nagpur', TRUE),
(16, 'Priya Kapoor', 'Noida', TRUE),
(17, 'Tarun Malhotra', 'Chandigarh', FALSE),
(18, 'Aisha Khan', 'Kochi', TRUE),
(19, 'Harsh Vardhan', 'Mysore', TRUE),
(20, 'Simran Kaur', 'Amritsar', FALSE),
(21, 'Yash Thakur', 'Dehradun', TRUE),
(22, 'Nandini Sen', 'Ranchi', TRUE),
(23, 'Abhishek Mishra', 'Varanasi', FALSE),
(24, 'Ishita Arora', 'Guwahati', TRUE),
(25, 'Gaurav Bansal', 'Jodhpur', TRUE),
(26, 'Tanvi Chawla', 'Shimla', FALSE),
(27, 'Deepak Sinha', 'Allahabad', TRUE),
(28, 'Ritu Verma', 'Bhubaneswar', TRUE),
(29, 'Manish Kulkarni', 'Nashik', FALSE),
(30, 'Shreya Iyer', 'Kanpur', TRUE);

select d.order_id, d.customer_name, d.order_date, d.total_amount,
a.agent_name, a.zone
from delivery_orders d
left join delivery_agents a on d.agent_id = a.agent_id
order by d.order_date, d.order_id asc

--- Task: Show doctor_name, specialization, hospital, and total_appointments for all doctors in 2024. Include doctors with zero appointments. Sort by total_appointments descending.

create table doctors (
    doctor_id     INT PRIMARY KEY,
    doctor_name   VARCHAR(100),
    specialization VARCHAR(100),
    hospital      VARCHAR(100)
)

create table appointments (
    appointment_id  INT PRIMARY KEY,
    doctor_id       INT,
    patient_name    VARCHAR(100),
    appointment_date DATE,
    status          VARCHAR(20)   -- 'completed', 'cancelled', 'no_show'
)

-- Insert data into doctors table (30 rows)

INSERT INTO doctors (doctor_id, doctor_name, specialization, hospital)
VALUES
(1, 'Dr. Amit Sharma', 'Cardiology', 'Apollo Hospital'),
(2, 'Dr. Priya Verma', 'Neurology', 'Fortis Hospital'),
(3, 'Dr. Rahul Patil', 'Orthopedics', 'Lilavati Hospital'),
(4, 'Dr. Sneha Joshi', 'Dermatology', 'Jaslok Hospital'),
(5, 'Dr. Vikram Singh', 'Pediatrics', 'Kokilaben Hospital'),
(6, 'Dr. Neha Kapoor', 'Gynecology', 'Nanavati Hospital'),
(7, 'Dr. Arjun Mehta', 'ENT', 'Hinduja Hospital'),
(8, 'Dr. Pooja Nair', 'Ophthalmology', 'Max Hospital'),
(9, 'Dr. Karan Malhotra', 'Psychiatry', 'AIIMS'),
(10, 'Dr. Anjali Desai', 'General Medicine', 'Wockhardt Hospital'),
(11, 'Dr. Rohit Yadav', 'Urology', 'Medanta Hospital'),
(12, 'Dr. Meera Iyer', 'Oncology', 'Tata Memorial Hospital'),
(13, 'Dr. Sanjay Kulkarni', 'Nephrology', 'Ruby Hall Clinic'),
(14, 'Dr. Divya Reddy', 'Endocrinology', 'Care Hospital'),
(15, 'Dr. Manish Gupta', 'Pulmonology', 'Manipal Hospital'),
(16, 'Dr. Kavita Shah', 'Gastroenterology', 'Sterling Hospital'),
(17, 'Dr. Deepak Sinha', 'Radiology', 'Seven Hills Hospital'),
(18, 'Dr. Ritu Arora', 'Pathology', 'Global Hospital'),
(19, 'Dr. Nitin Jain', 'Plastic Surgery', 'BLK Hospital'),
(20, 'Dr. Shreya Das', 'Rheumatology', 'Paras Hospital'),
(21, 'Dr. Tarun Verma', 'Hematology', 'Columbia Asia Hospital'),
(22, 'Dr. Aisha Khan', 'Dentistry', 'Smile Care Hospital'),
(23, 'Dr. Yash Thakur', 'Physiotherapy', 'Sunrise Hospital'),
(24, 'Dr. Simran Kaur', 'Anesthesiology', 'City Hospital'),
(25, 'Dr. Harsh Vardhan', 'Immunology', 'Metro Hospital'),
(26, 'Dr. Nandini Rao', 'Geriatrics', 'Green Life Hospital'),
(27, 'Dr. Abhishek Mishra', 'Emergency Medicine', 'Lifeline Hospital'),
(28, 'Dr. Ishita Sen', 'Infectious Disease', 'Zenith Hospital'),
(29, 'Dr. Gaurav Bansal', 'Sports Medicine', 'Prime Hospital'),
(30, 'Dr. Tanvi Chawla', 'Nutrition', 'Wellness Hospital');



-- Insert data into appointments table (30 rows)
-- doctor_id is linked with doctors.doctor_id

INSERT INTO appointments (appointment_id, doctor_id, patient_name, appointment_date, status)
VALUES
(101, 1, 'Ramesh Patil', '2024-05-10', 'completed'),
(102, 2, 'Sonal Mehta', '2024-05-11', 'cancelled'),
(103, 3, 'Vikas Sharma', '2024-05-12', 'completed'),
(104, 4, 'Priti Shah', '2024-05-13', 'no_show'),
(105, 5, 'Anil Verma', '2024-05-14', 'completed'),
(106, 6, 'Kiran Joshi', '2024-05-15', 'cancelled'),
(107, 7, 'Nisha Rao', '2024-05-16', 'completed'),
(108, 8, 'Suresh Nair', '2024-05-17', 'completed'),
(109, 9, 'Komal Singh', '2024-05-18', 'no_show'),
(110, 10, 'Raj Malhotra', '2024-05-19', 'completed'),
(111, 11, 'Aarti Deshmukh', '2024-05-20', 'cancelled'),
(112, 12, 'Mohit Yadav', '2024-05-21', 'completed'),
(113, 13, 'Snehal Patkar', '2024-05-22', 'completed'),
(114, 14, 'Deepa Rane', '2024-05-23', 'no_show'),
(115, 15, 'Varun Gupta', '2024-05-24', 'completed'),
(116, 16, 'Pallavi Jain', '2024-05-25', 'cancelled'),
(117, 17, 'Rohini Kulkarni', '2024-05-26', 'completed'),
(118, 18, 'Nitin Arora', '2024-05-27', 'completed'),
(119, 19, 'Shweta Kapoor', '2024-05-28', 'no_show'),
(120, 20, 'Akash Mishra', '2024-05-29', 'completed'),
(121, 21, 'Manoj Das', '2024-05-30', 'cancelled'),
(122, 22, 'Priyanshi Kaur', '2024-05-31', 'completed'),
(123, 23, 'Harshit Tiwari', '2024-06-01', 'completed'),
(124, 24, 'Ananya Roy', '2024-06-02', 'no_show'),
(125, 25, 'Siddharth Sen', '2024-06-03', 'completed'),
(126, 26, 'Lavanya Iyer', '2024-06-04', 'cancelled'),
(127, 27, 'Kunal Bhatia', '2024-06-05', 'completed'),
(128, 28, 'Rekha Menon', '2024-06-06', 'completed'),
(129, 29, 'Devansh Arora', '2024-06-07', 'no_show'),
(130, 30, 'Tanya Chopra', '2024-06-08', 'completed');


SELECT d.doctor_name, d.specialization, d.hospital,
       COUNT(a.appointment_id) AS total_appointments
FROM doctors d
LEFT JOIN appointments a 
       ON d.doctor_id = a.doctor_id
      AND YEAR(a.appointment_date) = 2024
GROUP BY d.doctor_id, d.doctor_name, d.specialization, d.hospital
ORDER BY total_appointments DESC;

drop table orders

---- Show product_name, category, total_quantity_sold, and total_revenue for all products.
-- Only count sales from completed orders in Q1 2024. Products with no qualifying sales show 0 for both metrics. Sort by total_revenue descending.

create table products (
    product_id    INT PRIMARY KEY,
    product_name  VARCHAR(100),
    category      VARCHAR(50),
    unit_price    DECIMAL(10,2)
)

create table orders (
    order_id      INT PRIMARY KEY,
    order_date    DATE,
    status        VARCHAR(20)   -- 'completed', 'cancelled', 'returned'
)

create table order_items (
    item_id       INT PRIMARY KEY,
    order_id      INT,
    product_id    INT,
    quantity      INT,
    sale_price    DECIMAL(10,2)
)

-- Insert data into products table (30 rows)

INSERT INTO products (product_id, product_name, category, unit_price)
VALUES
(1, 'Laptop', 'Electronics', 55000.00),
(2, 'Smartphone', 'Electronics', 25000.00),
(3, 'Headphones', 'Electronics', 2500.00),
(4, 'Keyboard', 'Electronics', 1500.00),
(5, 'Mouse', 'Electronics', 800.00),
(6, 'Office Chair', 'Furniture', 7000.00),
(7, 'Study Table', 'Furniture', 9500.00),
(8, 'Water Bottle', 'Home', 500.00),
(9, 'Backpack', 'Accessories', 1800.00),
(10, 'Notebook', 'Stationery', 120.00),
(11, 'Pen Set', 'Stationery', 300.00),
(12, 'Printer', 'Electronics', 12000.00),
(13, 'Monitor', 'Electronics', 15000.00),
(14, 'Tablet', 'Electronics', 22000.00),
(15, 'Power Bank', 'Electronics', 1800.00),
(16, 'Desk Lamp', 'Home', 1200.00),
(17, 'Fan', 'Home Appliances', 2800.00),
(18, 'Air Purifier', 'Home Appliances', 9500.00),
(19, 'Shoes', 'Fashion', 3500.00),
(20, 'T-Shirt', 'Fashion', 900.00),
(21, 'Jeans', 'Fashion', 2200.00),
(22, 'Wrist Watch', 'Accessories', 4500.00),
(23, 'Sunglasses', 'Accessories', 2500.00),
(24, 'Coffee Mug', 'Home', 400.00),
(25, 'Mixer Grinder', 'Home Appliances', 6500.00),
(26, 'Bedsheet', 'Home', 1800.00),
(27, 'Curtains', 'Home', 2200.00),
(28, 'Bluetooth Speaker', 'Electronics', 3200.00),
(29, 'Router', 'Electronics', 2800.00),
(30, 'External Hard Drive', 'Electronics', 6000.00);



-- Insert data into orders table (30 rows)

INSERT INTO orders (order_id, order_date, status)
VALUES
(101, '2024-05-01', 'completed'),
(102, '2024-05-02', 'cancelled'),
(103, '2024-05-03', 'completed'),
(104, '2024-05-04', 'returned'),
(105, '2024-05-05', 'completed'),
(106, '2024-05-06', 'cancelled'),
(107, '2024-05-07', 'completed'),
(108, '2024-05-08', 'returned'),
(109, '2024-05-09', 'completed'),
(110, '2024-05-10', 'completed'),
(111, '2024-05-11', 'cancelled'),
(112, '2024-05-12', 'completed'),
(113, '2024-05-13', 'returned'),
(114, '2024-05-14', 'completed'),
(115, '2024-05-15', 'completed'),
(116, '2024-05-16', 'cancelled'),
(117, '2024-05-17', 'completed'),
(118, '2024-05-18', 'returned'),
(119, '2024-05-19', 'completed'),
(120, '2024-05-20', 'completed'),
(121, '2024-05-21', 'cancelled'),
(122, '2024-05-22', 'completed'),
(123, '2024-05-23', 'returned'),
(124, '2024-05-24', 'completed'),
(125, '2024-05-25', 'completed'),
(126, '2024-05-26', 'cancelled'),
(127, '2024-05-27', 'completed'),
(128, '2024-05-28', 'returned'),
(129, '2024-05-29', 'completed'),
(130, '2024-05-30', 'completed');



-- Insert data into order_items table (30 rows)
-- order_id linked with orders.order_id
-- product_id linked with products.product_id

INSERT INTO order_items (item_id, order_id, product_id, quantity, sale_price)
VALUES
(1, 101, 1, 1, 54000.00),
(2, 102, 2, 1, 24500.00),
(3, 103, 3, 2, 2400.00),
(4, 104, 4, 1, 1400.00),
(5, 105, 5, 3, 750.00),
(6, 106, 6, 1, 6800.00),
(7, 107, 7, 1, 9200.00),
(8, 108, 8, 4, 450.00),
(9, 109, 9, 2, 1700.00),
(10, 110, 10, 5, 100.00),
(11, 111, 11, 3, 280.00),
(12, 112, 12, 1, 11500.00),
(13, 113, 13, 1, 14500.00),
(14, 114, 14, 1, 21000.00),
(15, 115, 15, 2, 1700.00),
(16, 116, 16, 2, 1100.00),
(17, 117, 17, 1, 2600.00),
(18, 118, 18, 1, 9000.00),
(19, 119, 19, 2, 3300.00),
(20, 120, 20, 4, 850.00),
(21, 121, 21, 2, 2100.00),
(22, 122, 22, 1, 4300.00),
(23, 123, 23, 2, 2400.00),
(24, 124, 24, 6, 350.00),
(25, 125, 25, 1, 6200.00),
(26, 126, 26, 2, 1700.00),
(27, 127, 27, 2, 2100.00),
(28, 128, 28, 1, 3000.00),
(29, 129, 29, 1, 2600.00),
(30, 130, 30, 1, 5800.00);

SELECT 
    p.product_name,
    p.category,
    COALESCE(SUM(oi.quantity), 0) AS total_quantity_sold,
    COALESCE(SUM(oi.quantity * oi.sale_price), 0) AS total_revenue
FROM products p
LEFT JOIN order_items oi 
    ON p.product_id = oi.product_id
LEFT JOIN orders o 
    ON oi.order_id = o.order_id
    AND o.status = 'completed'
    AND o.order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY 
    p.product_id,
    p.product_name,
    p.category
ORDER BY total_revenue DESC;


drop table shipments 

create table shipments (
    shipment_id    INT PRIMARY KEY,
    dispatch_date  DATE,
    destination    VARCHAR(100),
    weight_kg      DECIMAL(8,2),
    shipment_value DECIMAL(10,2),
    status         VARCHAR(20)  -- 'dispatched','in_transit','delivered','failed'
)

INSERT INTO shipments (
    shipment_id,
    dispatch_date,
    destination,
    weight_kg,
    shipment_value,
    status
) VALUES
(1,  '2026-01-05', 'Mumbai',        120.50,  45000.00, 'dispatched'),
(2,  '2026-01-07', 'Delhi',          85.75,  32000.00, 'in_transit'),
(3,  '2026-01-10', 'Bangalore',     200.00,  78000.00, 'delivered'),
(4,  '2026-01-12', 'Pune',           95.20,  28000.00, 'failed'),
(5,  '2026-01-15', 'Hyderabad',     150.40,  54000.00, 'delivered'),
(6,  '2026-01-18', 'Chennai',       175.90,  61000.00, 'in_transit'),
(7,  '2026-01-20', 'Kolkata',       110.30,  39000.00, 'dispatched'),
(8,  '2026-01-22', 'Ahmedabad',      98.60,  35000.00, 'delivered'),
(9,  '2026-01-25', 'Jaipur',        140.75,  47000.00, 'failed'),
(10, '2026-01-28', 'Lucknow',        88.40,  30000.00, 'delivered'),
(11, '2026-02-02', 'Nagpur',        132.00,  42000.00, 'in_transit'),
(12, '2026-02-05', 'Indore',        105.25,  36000.00, 'dispatched'),
(13, '2026-02-08', 'Surat',         190.80,  72000.00, 'delivered'),
(14, '2026-02-10', 'Bhopal',         76.50,  25000.00, 'failed'),
(15, '2026-02-13', 'Patna',         160.00,  59000.00, 'in_transit'),
(16, '2026-02-16', 'Kanpur',         92.70,  31000.00, 'delivered'),
(17, '2026-02-18', 'Vadodara',      145.10,  50000.00, 'dispatched'),
(18, '2026-02-21', 'Ludhiana',      170.35,  64000.00, 'delivered'),
(19, '2026-02-24', 'Agra',           80.90,  27000.00, 'failed'),
(20, '2026-02-27', 'Nashik',        115.60,  41000.00, 'in_transit'),
(21, '2026-03-03', 'Faridabad',     125.45,  43000.00, 'delivered'),
(22, '2026-03-06', 'Rajkot',         99.80,  34000.00, 'dispatched'),
(23, '2026-03-09', 'Meerut',        185.20,  70000.00, 'in_transit'),
(24, '2026-03-12', 'Varanasi',       90.00,  29500.00, 'failed'),
(25, '2026-03-15', 'Amritsar',      155.75,  56000.00, 'delivered'),
(26, '2026-03-18', 'Aurangabad',    102.30,  37500.00, 'dispatched'),
(27, '2026-03-21', 'Coimbatore',    178.90,  66000.00, 'in_transit'),
(28, '2026-03-24', 'Mysore',         87.65,  28500.00, 'delivered'),
(29, '2026-03-27', 'Jodhpur',       148.50,  52000.00, 'failed'),
(30, '2026-03-30', 'Guwahati',      165.00,  60000.00, 'delivered');

select dispatch_date, count(s.shipment_id ) as total_shipments, sum(s.shipment_value) as total_value
from shipments s 
group by (dispatch_date)
order by dispatch_date asc

create table plans (
    plan_id        INT PRIMARY KEY,
    plan_name      VARCHAR(50),
    billing_cycle  VARCHAR(20),  -- 'monthly', 'annual', 'lifetime'
    price          DECIMAL(10,2),
    is_active      BOOLEAN
)


INSERT INTO plans (
    plan_id,
    plan_name,
    billing_cycle,
    price,
    is_active
) VALUES
(1,  'Basic Starter',      'monthly',   499.00,  TRUE),
(2,  'Basic Starter',      'annual',   4999.00,  TRUE),
(3,  'Pro Business',       'monthly',   999.00,  TRUE),
(4,  'Pro Business',       'annual',   9999.00,  TRUE),
(5,  'Enterprise',         'monthly',  1999.00,  TRUE),
(6,  'Enterprise',         'annual',  19999.00,  TRUE),
(7,  'Lifetime Gold',      'lifetime', 49999.00, TRUE),
(8,  'Student Pack',       'monthly',   299.00,  TRUE),
(9,  'Student Pack',       'annual',   2999.00,  TRUE),
(10, 'Freelancer Plus',    'monthly',   699.00,  TRUE),
(11, 'Freelancer Plus',    'annual',   6999.00,  TRUE),
(12, 'Startup Growth',     'monthly',  1299.00,  TRUE),
(13, 'Startup Growth',     'annual',  12999.00,  TRUE),
(14, 'Corporate Elite',    'monthly',  2499.00,  TRUE),
(15, 'Corporate Elite',    'annual',  24999.00,  TRUE),
(16, 'Legacy Premium',     'lifetime', 79999.00, FALSE),
(17, 'Health Care Plan',   'monthly',   899.00,  TRUE),
(18, 'Health Care Plan',   'annual',   8999.00,  TRUE),
(19, 'Education Prime',    'monthly',   599.00,  TRUE),
(20, 'Education Prime',    'annual',   5999.00,  TRUE),
(21, 'Family Secure',      'monthly',  1499.00,  TRUE),
(22, 'Family Secure',      'annual',  14999.00,  TRUE),
(23, 'Retail Connect',     'monthly',  1099.00,  TRUE),
(24, 'Retail Connect',     'annual',  10999.00,  TRUE),
(25, 'Silver Access',      'monthly',   399.00,  FALSE),
(26, 'Silver Access',      'annual',   3999.00,  FALSE),
(27, 'Gold Access',        'monthly',   799.00,  TRUE),
(28, 'Gold Access',        'annual',   7999.00,  TRUE),
(29, 'VIP Lifetime',       'lifetime', 99999.00, TRUE),
(30, 'Partner Exclusive',  'annual',  15999.00, TRUE);


select billing_cycle, MAX(price) as max_price, MIN(price) as min_price, avg(price) as avg_price
from plans
group by plan_id
order by  avg_price desc

drop table customers


drop table orders


create table customers (
    customer_id  INT PRIMARY KEY,
    full_name    VARCHAR(100),
    city         VARCHAR(50)
)

create table orders (
    order_id      INT PRIMARY KEY,
    customer_id   INT,
    order_date    DATE,
    status        VARCHAR(20),   -- 'completed','cancelled','returned'
    order_amount  DECIMAL(10,2)
)

-- Customers Table Insert (customer_id values repeated in Orders table)

INSERT INTO customers (
    customer_id,
    full_name,
    city
) VALUES
(1,  'Amit Sharma',       'Mumbai'),
(2,  'Priya Verma',       'Delhi'),
(3,  'Rahul Patil',       'Pune'),
(4,  'Sneha Joshi',       'Bangalore'),
(5,  'Vikram Singh',      'Hyderabad'),
(6,  'Neha Kapoor',       'Chennai'),
(7,  'Rohan Desai',       'Ahmedabad'),
(8,  'Pooja Nair',        'Kolkata'),
(9,  'Karan Mehta',       'Jaipur'),
(10, 'Anjali Kulkarni',   'Nagpur');


-- Orders Table Insert
-- Same customer_id appears multiple times across different orders

INSERT INTO orders (
    order_id,
    customer_id,
    order_date,
    status,
    order_amount
) VALUES
(101, 1,  '2026-01-05', 'completed',  2500.00),
(102, 2,  '2026-01-06', 'cancelled',  1800.00),
(103, 1,  '2026-01-08', 'completed',  3200.00),
(104, 3,  '2026-01-10', 'returned',   2100.00),
(105, 4,  '2026-01-12', 'completed',  4500.00),
(106, 2,  '2026-01-15', 'completed',  3900.00),
(107, 5,  '2026-01-18', 'cancelled',  2750.00),
(108, 6,  '2026-01-20', 'completed',  5100.00),
(109, 3,  '2026-01-22', 'returned',   1600.00),
(110, 7,  '2026-01-25', 'completed',  4300.00),
(111, 8,  '2026-02-01', 'completed',  2900.00),
(112, 1,  '2026-02-03', 'completed',  6100.00),
(113, 9,  '2026-02-05', 'cancelled',  1750.00),
(114, 10, '2026-02-08', 'completed',  3400.00),
(115, 4,  '2026-02-10', 'returned',   2200.00),
(116, 5,  '2026-02-12', 'completed',  4700.00),
(117, 2,  '2026-02-15', 'completed',  3800.00),
(118, 6,  '2026-02-18', 'cancelled',  2600.00),
(119, 7,  '2026-02-20', 'completed',  5500.00),
(120, 3,  '2026-02-24', 'returned',   1950.00),
(121, 8,  '2026-03-01', 'completed',  4100.00),
(122, 9,  '2026-03-04', 'completed',  3650.00),
(123, 10, '2026-03-06', 'cancelled',  2800.00),
(124, 1,  '2026-03-08', 'completed',  7200.00),
(125, 4,  '2026-03-10', 'returned',   2400.00),
(126, 5,  '2026-03-12', 'completed',  5300.00),
(127, 2,  '2026-03-15', 'completed',  3100.00),
(128, 6,  '2026-03-18', 'cancelled',  2000.00),
(129, 7,  '2026-03-20', 'completed',  6000.00),
(130, 3,  '2026-03-25', 'returned',   1750.00);



select c.city, Count(c.customer_id) as completed_orders, round(avg(order_amount), 2) as avg_order_value
from customer c 
left join orders o 
on c.customer_id = o.customer_id
where o.status = 'completed'
group by c.customer_id 


drop table appointments


create table doctors (
    doctor_id    INT PRIMARY KEY,
    doctor_name  VARCHAR(100),
    specialization VARCHAR(100)
)

create table appointments (
    appointment_id   INT PRIMARY KEY,
    doctor_id        INT,
    patient_name     VARCHAR(100),
    booked_date      DATE,
    appointment_date DATE,
    status           VARCHAR(20)  -- 'completed','cancelled','no_show'
)

-- Doctors Table Insert

INSERT INTO doctors (
    doctor_id,
    doctor_name,
    specialization
) VALUES
(1,  'Dr. Amit Shah',        'Cardiology'),
(2,  'Dr. Priya Mehta',      'Dermatology'),
(3,  'Dr. Rahul Verma',      'Orthopedics'),
(4,  'Dr. Sneha Kulkarni',   'Pediatrics'),
(5,  'Dr. Vikram Joshi',     'Neurology'),
(6,  'Dr. Neha Kapoor',      'Gynecology'),
(7,  'Dr. Rohan Patil',      'ENT'),
(8,  'Dr. Pooja Nair',       'Ophthalmology'),
(9,  'Dr. Karan Desai',      'Psychiatry'),
(10, 'Dr. Anjali Singh',     'General Medicine');


-- Appointments Table Insert
-- doctor_id is repeated across multiple appointments

INSERT INTO appointments (
    appointment_id,
    doctor_id,
    patient_name,
    booked_date,
    appointment_date,
    status
) VALUES
(101, 1,  'Ramesh Gupta',      '2026-01-02', '2026-01-05', 'completed'),
(102, 2,  'Sonal Jain',        '2026-01-03', '2026-01-06', 'cancelled'),
(103, 1,  'Aakash Sharma',     '2026-01-04', '2026-01-07', 'completed'),
(104, 3,  'Priti Yadav',       '2026-01-05', '2026-01-08', 'no_show'),
(105, 4,  'Nitin Patil',       '2026-01-06', '2026-01-09', 'completed'),
(106, 2,  'Kavya Mehra',       '2026-01-07', '2026-01-10', 'completed'),
(107, 5,  'Manoj Rao',         '2026-01-08', '2026-01-11', 'cancelled'),
(108, 6,  'Divya Sharma',      '2026-01-09', '2026-01-12', 'completed'),
(109, 3,  'Harsh Vyas',        '2026-01-10', '2026-01-13', 'no_show'),
(110, 7,  'Meena Joshi',       '2026-01-11', '2026-01-14', 'completed'),
(111, 8,  'Ritika Nair',       '2026-02-01', '2026-02-04', 'completed'),
(112, 1,  'Sameer Kulkarni',   '2026-02-02', '2026-02-05', 'completed'),
(113, 9,  'Anu Verma',         '2026-02-03', '2026-02-06', 'cancelled'),
(114, 10, 'Kiran Deshmukh',    '2026-02-04', '2026-02-07', 'completed'),
(115, 4,  'Pallavi Shah',      '2026-02-05', '2026-02-08', 'no_show'),
(116, 5,  'Rohit Sinha',       '2026-02-06', '2026-02-09', 'completed'),
(117, 2,  'Tanya Kapoor',      '2026-02-07', '2026-02-10', 'completed'),
(118, 6,  'Arjun Malhotra',    '2026-02-08', '2026-02-11', 'cancelled'),
(119, 7,  'Shweta Rao',        '2026-02-09', '2026-02-12', 'completed'),
(120, 3,  'Deepak Yadav',      '2026-02-10', '2026-02-13', 'no_show'),
(121, 8,  'Nisha Patkar',      '2026-03-01', '2026-03-04', 'completed'),
(122, 9,  'Abhishek Jain',     '2026-03-02', '2026-03-05', 'completed'),
(123, 10, 'Ruchi Sharma',      '2026-03-03', '2026-03-06', 'cancelled'),
(124, 1,  'Vivek More',        '2026-03-04', '2026-03-07', 'completed'),
(125, 4,  'Komal Singh',       '2026-03-05', '2026-03-08', 'no_show'),
(126, 5,  'Naveen Gupta',      '2026-03-06', '2026-03-09', 'completed'),
(127, 2,  'Sakshi Patil',      '2026-03-07', '2026-03-10', 'completed'),
(128, 6,  'Varun Khanna',      '2026-03-08', '2026-03-11', 'cancelled'),
(129, 7,  'Isha Mehta',        '2026-03-09', '2026-03-12', 'completed'),
(130, 3,  'Pranav Kulkarni',   '2026-03-10', '2026-03-13', 'no_show');

SELECT 
    d.doctor_name,
    d.specialization,
    COUNT(a.appointment_id) AS total_appointments, 
    SUM(
        CASE 
            WHEN a.status = 'completed' THEN 1 
            ELSE 0 
        END
    ) AS completed_appointments,
    ROUND(
        (
            SUM(
                CASE 
                    WHEN a.status = 'cancelled' THEN 1 
                    ELSE 0 
                END
            ) * 100.0
        ) / COUNT(a.appointment_id),
        1
    ) AS cancellation_rate,
    ROUND(
        AVG(
            TIMESTAMPDIFF(DAY, a.booked_date, a.appointment_date)
        ),
        1
    ) AS avg_days_to_appointment
FROM doctors d
JOIN appointments a 
    ON d.doctor_id = a.doctor_id
GROUP BY 
    d.doctor_name,
    d.specialization
ORDER BY 
    cancellation_rate DESC;

drop table customers

drop table transactions


create table customers (
    customer_id   INT PRIMARY KEY,
    full_name     VARCHAR(100),
    account_type  VARCHAR(20)   -- 'savings','current','premium'
)


create table transactions (
    txn_id         INT PRIMARY KEY,
    customer_id    INT,
    txn_date       DATE,
    txn_amount     DECIMAL(12,2),
    txn_type       VARCHAR(20)  -- 'credit','debit'
)



-- Customers Table Insert

INSERT INTO customers (
    customer_id,
    full_name,
    account_type
) VALUES
(1,  'Amit Sharma',       'savings'),
(2,  'Priya Verma',       'current'),
(3,  'Rahul Patil',       'premium'),
(4,  'Sneha Joshi',       'savings'),
(5,  'Vikram Singh',      'current'),
(6,  'Neha Kapoor',       'premium'),
(7,  'Rohan Desai',       'savings'),
(8,  'Pooja Nair',        'current'),
(9,  'Karan Mehta',       'premium'),
(10, 'Anjali Kulkarni',   'savings');


-- Transactions Table Insert
-- customer_id is repeated across multiple transactions

INSERT INTO transactions (
    txn_id,
    customer_id,
    txn_date,
    txn_amount,
    txn_type
) VALUES
(101, 1,  '2026-01-05',  5000.00, 'credit'),
(102, 2,  '2026-01-06',  2500.00, 'debit'),
(103, 1,  '2026-01-08',  7200.00, 'credit'),
(104, 3,  '2026-01-10',  3100.00, 'debit'),
(105, 4,  '2026-01-12',  4500.00, 'credit'),
(106, 2,  '2026-01-15',  1800.00, 'credit'),
(107, 5,  '2026-01-18',  3900.00, 'debit'),
(108, 6,  '2026-01-20',  6100.00, 'credit'),
(109, 3,  '2026-01-22',  2700.00, 'debit'),
(110, 7,  '2026-01-25',  5400.00, 'credit'),
(111, 8,  '2026-02-01',  3200.00, 'debit'),
(112, 1,  '2026-02-03',  8500.00, 'credit'),
(113, 9,  '2026-02-05',  2100.00, 'debit'),
(114, 10, '2026-02-08',  4700.00, 'credit'),
(115, 4,  '2026-02-10',  1600.00, 'debit'),
(116, 5,  '2026-02-12',  5900.00, 'credit'),
(117, 2,  '2026-02-15',  4300.00, 'debit'),
(118, 6,  '2026-02-18',  7800.00, 'credit'),
(119, 7,  '2026-02-20',  2400.00, 'debit'),
(120, 3,  '2026-02-24',  6600.00, 'credit'),
(121, 8,  '2026-03-01',  3500.00, 'credit'),
(122, 9,  '2026-03-04',  2900.00, 'debit'),
(123, 10, '2026-03-06',  5100.00, 'credit'),
(124, 1,  '2026-03-08',  9200.00, 'debit'),
(125, 4,  '2026-03-10',  4100.00, 'credit'),
(126, 5,  '2026-03-12',  3000.00, 'debit'),
(127, 2,  '2026-03-15',  6400.00, 'credit'),
(128, 6,  '2026-03-18',  2200.00, 'debit'),
(129, 7,  '2026-03-20',  7300.00, 'credit'),
(130, 3,  '2026-03-25',  2800.00, 'debit');


SELECT
    c.full_name,
    c.account_type,
    DATE_FORMAT(t.txn_date, '%Y-%m') AS txn_month,
    COUNT(t.txn_id) AS total_transactions,
    SUM(t.txn_amount) AS total_amount,
    ROUND(AVG(t.txn_amount), 2) AS avg_monthly_amount,
    MAX(t.txn_amount) AS max_transaction,
    CASE
        WHEN AVG(t.txn_amount) > (
            2 * (
                SELECT AVG(t2.txn_amount)
                FROM transactions t2
                WHERE t2.customer_id = c.customer_id
            )
        )
        THEN 'YES'
        ELSE 'NO'
    END AS is_spike
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id
GROUP BY
    c.customer_id,
    c.full_name,
    c.account_type,
    DATE_FORMAT(t.txn_date, '%Y-%m')
ORDER BY
    c.full_name,
    txn_month;

--------------------------

-- Find the total number of films in each rating category (G, PG, PG-13, etc.), sorted from most to least.

select f.rating, count(*) as cnt from sakila.film f
group by f.rating 
order by cnt desc

---- Find the average rental duration (rental_duration) and average rental rate (rental_rate) for each film category.

select fc.category_id, round(avg(f.rental_duration), 2) as average_rental_duration, round(avg(f.rental_rate),2) as average_rental_rate
from sakila.film f
inner join sakila.film_category fc on f.film_id = fc.film_id 
group by fc.category_id 

------ Find the top 5 customers who have spent the most money overall (using the payment table).


select p.customer_id, sum(amount) as total_spent
from sakila.payment p 
group by customer_id 
order by total_spent desc
limit 5

---- Find the number of films each actor has appeared in, but only show actors who have appeared in more than 25 films



select fa.actor_id, count(fa.film_id) as film_cnt
from sakila.film_actor fa 
group by fa.actor_id 
having count(fa.film_id) > 25

----- Find the total revenue generated by each store, along with the number of rentals processed at that store.

select i.store_id, 
       count(distinct r.rental_id) as total_rentals,
       sum(p.amount) as total_revenue
from sakila.rental r
inner join sakila.inventory i on r.inventory_id = i.inventory_id
inner join sakila.payment p on r.rental_id = p.rental_id
group by i.store_id
order by total_revenue desc


















