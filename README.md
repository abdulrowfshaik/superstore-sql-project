 # 🏪 Superstore Sales SQL Analysis

_A data analysis project to uncover sales trends, profitability, and customer behavior._

![SQL](https://img.shields.io/badge/SQL-Intermediate-blue)
![GitHub](https://img.shields.io/badge/GitHub-Repo%20Ready-green)

## 📊 Key Insights
| Question Asked               | SQL Query Used | Key Finding |
|------------------------------|----------------|-------------|
| "Most profitable category?" | `SELECT Category, SUM(Profit) FROM superstore GROUP BY Category;` | **Technology** ($45,000 profit) |
| "Top 5 products by profit?" | `SELECT "Product Name", SUM(Profit) FROM superstore GROUP BY "Product Name" LIMIT 5;` | 1. Canon ImageClass ($5,200) |

## 🔍 Query Examples
### 1. Monthly Sales Trend
```sql
SELECT 
  strftime('%Y-%m', Order_Date) AS Month,
  ROUND(SUM(Sales), 2) AS MonthlySales
FROM superstore
GROUP BY Month
ORDER BY Month;
