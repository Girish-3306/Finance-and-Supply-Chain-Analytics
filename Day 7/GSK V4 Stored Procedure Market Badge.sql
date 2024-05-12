use gdb0041;

Select * from dim_customer;

Select 
	Sum(sold_quantity) as total_qty
from fact_sales_monthly s
JOIN dim_customer c
ON s.customer_code = c.customer_code
where get_fiscal_year(s.date)=2021 and c.market = "India"
group by c.market;










