-- Fabric notebook source

-- METADATA ********************

-- META {
-- META   "kernel_info": {
-- META     "name": "synapse_pyspark"
-- META   },
-- META   "dependencies": {
-- META     "lakehouse": {
-- META       "default_lakehouse": "210a2871-b405-4450-add4-f698ffae80d2",
-- META       "default_lakehouse_name": "testlakehouse",
-- META       "default_lakehouse_workspace_id": "296d98a3-94fd-4db7-bc06-ce5bbd6692de",
-- META       "known_lakehouses": [
-- META         {
-- META           "id": "210a2871-b405-4450-add4-f698ffae80d2"
-- META         }
-- META       ]
-- META     }
-- META   }
-- META }

-- CELL ********************

-- Welcome to your new notebook
-- Type here in the cell editor to add code!
CREATE TABLE Products (
    ProductID INT NOT NULL,
    ProductName VARCHAR(10),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

INSERT INTO Products (ProductID, ProductName, Category, Price)
VALUES
(1, 'Laptop', 'Electronics', 980.00),
(2, 'Desk', 'Furniture', 150.00),
(3, 'Coffee', 'Food', 12.50),
(4, 'Monitor', 'Electronics', 240.00);

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************

SELECT * FROM Products

-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }

-- CELL ********************


-- METADATA ********************

-- META {
-- META   "language": "sparksql",
-- META   "language_group": "synapse_pyspark"
-- META }
