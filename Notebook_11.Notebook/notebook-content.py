# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "210a2871-b405-4450-add4-f698ffae80d2",
# META       "default_lakehouse_name": "testlakehouse",
# META       "default_lakehouse_workspace_id": "296d98a3-94fd-4db7-bc06-ce5bbd6692de",
# META       "known_lakehouses": [
# META         {
# META           "id": "210a2871-b405-4450-add4-f698ffae80d2"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
from delta.tables import DeltaTable
deltaTable = DeltaTable.forName(spark, "products")

df = deltaTable.toDF()
df.show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

deltaTable.toDF().printSchema()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

spark.sql(f"SELECT * FROM products").show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.table("products")
df.show()

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
