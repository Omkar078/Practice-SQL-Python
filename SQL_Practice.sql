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


select CONCAT(c.first_name,' ', c.last_name) as full_name, email
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
select hc.patient_id, count(*)  as total_checkins
from health_checkins hc 
group by hc.patient_id
having  total_checkins > 5
order by total_checkins desc

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
