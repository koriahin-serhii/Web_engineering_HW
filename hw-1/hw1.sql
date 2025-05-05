USE northwind;
-- 1
SELECT 
    *
FROM
    suppliers;
    
-- 2
SELECT 
    *
FROM
    suppliers
WHERE
    company = 'Supplier A';
    
-- 3
SELECT 
    *
FROM
    purchase_orders;
    
-- 4
SELECT 
    *
FROM
    purchase_orders
WHERE
    supplier_id = 2;
    
-- 5    Этот запрос возвращает строки из таблицы purchase_orders, 
-- где заказы были созданы пользователем с created_by = 1, и поставщиком был supplier_id = 5. 
-- Если результат пустой — значит, таких заказов нет. 
-- Если есть — будет показана информация о стоимости доставки и ID поставщика.
SELECT 
    supplier_id, shipping_fee
FROM
    purchase_orders
WHERE
    created_by = 1 AND supplier_id = 5;
    
-- 6_1 
SELECT 
    last_name, first_name
FROM
    employees
WHERE
    address = '123 2nd Avenue'
        OR address = '123 8th Avenue';
        
-- 6_2 
SELECT 
    last_name, first_name
FROM
    employees
WHERE
    address IN ('123 2nd Avenue' , '123 8th Avenue');
    
-- 7
SELECT 
    first_name, last_name
FROM
    employees
WHERE
    last_name LIKE '_%p%_';
    
-- 8
SELECT 
    *
FROM
    orders
WHERE
    shipper_id IS NULL;
