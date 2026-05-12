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

select * from delivery_orders d
left join delivery_agent a on d.agent_id = a.agent_id








































