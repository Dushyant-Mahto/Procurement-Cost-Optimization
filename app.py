import pandas as pd
import sqlite3

df = pd.read_csv("data/raw/Procurement_kpi.csv")

conn = sqlite3.connect("sql/procurement.db")

df.to_sql(
    "procurement",
    conn,
    if_exists="replace",
    index=False
)

print("Database created successfully!")