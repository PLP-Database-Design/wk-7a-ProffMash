-- Question 1 

SELECT 
  OrderID,
  CustomerName,
  TRIM(product) AS Product
FROM (
  SELECT 
    OrderID,
    CustomerName,
    UNNEST(string_to_array(Products, ',')) AS product
  FROM ProductDetail
) AS normalized;

-- Question 2
-- Step 1: Create Orders table
SELECT DISTINCT
  OrderID,
  CustomerName
FROM OrderDetails;

-- Step 2: Create OrderProducts table
SELECT
  OrderID,
  Product,
  Quantity
FROM OrderDetails;
