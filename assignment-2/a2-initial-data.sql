-- PRAGMA foreign_keys = on;
-- -- 1. Customers
-- INSERT INTO customers VALUES (1, 'Alice Smith', 'alice@example.com');
-- INSERT INTO customers VALUES (2, 'Bob Johnson', 'bob@example.com');

-- -- 2. Products
-- INSERT INTO products VALUES (101, 'Laptop', 'Electronics', 1200.00, 10, 'High performance laptop');
-- INSERT INTO products VALUES (102, 'Headphones', 'Electronics', 150.00, 50, 'Noise-cancelling headphones');
-- INSERT INTO products VALUES (103, 'Coffee Maker', 'Home Appliances', 80.00, 20, '12-cup programmable coffee maker');

-- -- 3. Credit Cards
-- INSERT INTO creditCards VALUES (5001, 'Alice Smith', '2027-06-30');
-- INSERT INTO creditCards VALUES (5002, 'Bob Johnson', '2026-11-30');

-- -- 4. Orders
-- INSERT INTO orders VALUES (9001, '2025-09-01', '123 Main St, Edmonton');
-- INSERT INTO orders VALUES (9002, '2025-09-05', '456 Pine Ave, Calgary');

-- -- 5. Sessions
-- INSERT INTO sessions VALUES (1, 1, '2025-09-01 09:00:00', '2025-09-01 10:15:00');  -- Alice
-- INSERT INTO sessions VALUES (2, 1, '2025-09-05 14:00:00', '2025-09-05 15:30:00');  -- Bob

-- -- 6. Orderlines
-- INSERT INTO orderlines VALUES (9001, 1, 101, 1, 1200.00, 0.00); -- Alice buys Laptop
-- INSERT INTO orderlines VALUES (9001, 2, 102, 2, 150.00, 0.10); -- Alice buys 2 Headphones, 10% off
-- INSERT INTO orderlines VALUES (9002, 1, 103, 1, 80.00, 0.00);  -- Bob buys Coffee Maker

-- -- 7. OrderSessions
-- INSERT INTO orderSessions VALUES (9001, 1, 1); -- Alice’s order linked to her session
-- INSERT INTO orderSessions VALUES (9002, 2, 1); -- Bob’s order linked to his session

-- -- 8. Activities
-- INSERT INTO activities VALUES (1, 1, '2025-09-01 09:10:00'); -- Alice activity
-- INSERT INTO activities VALUES (1, 1, '2025-09-01 09:20:00');
-- INSERT INTO activities VALUES (1, 1, '2025-09-01 09:30:00');
-- INSERT INTO activities VALUES (2, 1, '2025-09-05 14:10:00'); -- Bob activity
-- INSERT INTO activities VALUES (2, 1, '2025-09-05 14:25:00');
-- INSERT INTO activities VALUES (2, 1, '2025-09-05 14:40:00');

-- -- 9. Viewed Products
-- INSERT INTO viewedProduct VALUES (1, 1, '2025-09-01 09:10:00', 101);
-- INSERT INTO viewedProduct VALUES (1, 1, '2025-09-01 09:20:00', 102);
-- INSERT INTO viewedProduct VALUES (2, 1, '2025-09-05 14:10:00', 103);

-- -- 10. Searches
-- INSERT INTO search VALUES (1, 1, '2025-09-01 09:30:00', 'best noise cancelling headphones');
-- INSERT INTO search VALUES (2, 1, '2025-09-05 14:25:00', 'coffee maker under 100');

-- -- 11. Add to Cart
-- INSERT INTO add2cart VALUES (1, 1, '2025-09-01 09:20:00', 102); -- Alice added headphones
-- INSERT INTO add2cart VALUES (2, 1, '2025-09-05 14:40:00', 103); -- Bob added coffee maker

-- -- 12. Checkout
-- INSERT INTO checkout VALUES (1, 1, '2025-09-01 09:30:00');
-- INSERT INTO checkout VALUES (2, 1, '2025-09-05 14:40:00');

-- -- 13. Payment
-- INSERT INTO payment VALUES (1, 1, '2025-09-01 09:30:00', 5001);
-- INSERT INTO payment VALUES (2, 1, '2025-09-05 14:40:00', 5002);

