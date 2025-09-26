
-- 1
-- Find customers who purchased a product in Electronics 
-- category and the product was shipped to Edmonton. 
-- Return id, name and email of the customers.

-- 2
-- Find window shoppers. These are customers who viewed or 
-- added products to cart, but never made payments. 
-- Return the id and name of those shoppers.

-- 3
-- Find the id of customers who have added products to cart 
-- at least three different times within the past 30 days 
-- but have not made any purchases within the same period 
-- (i.e., none of their sessions is linked to an order).

-- 4
-- Abandoned products are those that have been added to a 
-- shopping cart but were never purchased. Find the product 
-- id of each abandoned product, along with the id and name 
-- of the customer who abandoned it.

-- 5
-- Find the top 5 products most frequently abandoned in carts. 
-- For each product, return product id, name and the number of 
-- times it is abandoned (denoted as abandoned_count in this 
-- assignment).

-- 6
-- For each customer, compute conversion rate = number of 
-- checkouts / number of add-to-cart actions. Return customer 
-- id, name and the conversion rate. 

-- 7
-- Find orders that have more than 3 order lines, and at least 
-- 50% of their products belong to the Electronics category. 
-- Make your search case-insensitive. For each such order, 
-- return the order number.

-- 8
-- For each customer who has some session, report the number 
-- of sessions (sCnt), the mean length of those sessions in 
-- minutes (len), the mean number of activities per session 
-- (meanCnt) and the total number of orders (orderCnt).

-- 9
-- Create a view called product_stats with columns pid, name, 
-- yearMonth, view_cnt, add_cnt, and order_cnt; the view would 
-- include for each product and for each month within the past 
-- 12 months in which the product was ordered, the product id, 
-- product name, year-month (e.g., 2024-08), the number of 
-- product views, the number of times the product was added 
-- to a cart and the number of orders containing the product.

-- 10
-- Using the view creates in the previous question, find for 
-- each month within the past 12 months that contains at least 
-- one order, top three hot products. We define product's 
-- hotness score as x+y+3z, where x is the number of product 
-- views, y is the number of times the product was added to a 
-- cart, and z is the number of distinct orders that include 
-- the product. A product is considered hot if it has one of 
-- the three highest hotness scores for that month. In the 
-- case of ties, return all tied products. The output should 
-- include the year-month, product id, product name, and the 
-- hotness score, ordered by year-month  and hotness score 
-- in descending order.