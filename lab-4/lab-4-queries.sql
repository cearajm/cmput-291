

-- 1. list model for pcs faster than 150Mhz
-- SELECT model
-- FROM pc
-- WHERE speed > 150;

-- 2. list prices and models of all pc, laptop, printers
-- SELECT price, model FROM pc
-- UNION
-- SELECT price, model FROM laptop
-- UNION
-- SELECT price, model FROM printer;

-- 3. list makers that make laptops but not pcs
-- SELECT maker, type
-- FROM product
-- WHERE type = 'laptop';

-- 4. which speeds are common in pcs and laptops
-- SELECT speed FROM pc
-- INTERSECT
-- SELECT speed FROM laptop

-- 5. list makers and prices for makers that produce pc
-- SELECT maker, price
-- FROM product
-- INNER JOIN pc ON product.model = pc.model;

-- 6. list makers that make at least 2 different models
-- SELECT maker
-- FROM product
-- GROUP BY maker
-- HAVING COUNT(model) > 1;

-- 7. find all laptop models that are more expensive than the
--    most expensive pc
-- SELECT l.model, l.price
-- FROM laptop l, pc p
-- WHERE l.price > (
--         SELECT MAX(price)
--         FROM pc
--         )

-- 8. find the cpu speed and hd size for all pcs and laptops
--    with no duplicate rows in the output
-- SELECT *
-- FROM (
--     SELECT speed, hd
--     FROM pc
--     UNION
--     SELECT speed, hd
--     FROM laptop
--     )

-- 9. find the makers, model, and price of the highest priced
--    laptop
-- SELECT maker, p.model, price
-- FROM product p
-- INNER JOIN laptop ON p.model = laptop.model
-- WHERE price = (
--         SELECT MAX(price)
--         FROM laptop
--         )

-- 10. find the maker that makes at least 2 different printer 
-- models but does not make a pc with a 16 gb ram
-- SELECT maker
-- FROM product
-- WHERE NOT EXISTS (
--         SELECT ram
--         FROM pc
--         WHERE ram <> 16 AND product.model = pc.model
--         )
-- GROUP BY maker
-- HAVING COUNT(model) > 1 AND type = 'printer'

-- 11. find all pc models with hd of 2.5 where the price is 
--     not the highest among all pcs
-- SELECT model
-- FROM pc
-- WHERE hd = 2.5
-- AND price <> (
--         SELECT MAX(price)
--         FROM pc
--         )

-- 12. select all models that do not correspond to laptops
--     price greater than 2000 or colour printers
-- SELECT model FROM pc
-- UNION
-- SELECT model FROM laptop
--     WHERE price < 2000
-- UNION
-- SELECT model FROM printer
--     WHERE color = 'false'

-- 13. find the most expensive laptop's ram
-- SELECT ram
-- FROM laptop
-- WHERE laptop.price = (
--         SELECT MAX(price)
--         FROM laptop
--         )

-- 14. return makers who have not produced any pcs or
--     laptops with a ram larger than 4gb
SELECT DISTINCT maker
FROM product
WHERE NOT EXISTS (
        SELECT model FROM pc
        WHERE ram > 4 AND product.model = pc.model
        UNION
        SELECT model FROM laptop
        WHERE ram > 4 AND product.model = laptop.model
        )