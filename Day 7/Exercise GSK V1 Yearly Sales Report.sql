use gdb0041;
/*Generate a yearly report for Croma India where there are two columns

1. Fiscal Year
2. Total Gross Sales amount In that year from Croma */

#--------------------------------------------Solution GSK---------------------------------
Select g.fiscal_year, 	
	   ROUND(SUM(g.gross_price * s.sold_quantity),2) as total_gross_sales
from fact_sales_monthly s
JOIN fact_gross_price g
ON s.product_code = g.product_code and
	g.fiscal_year = get_fiscal_year(s.date)
Where customer_code = 90002002
group by g.fiscal_year
Order by g.fiscal_year desc
LIMIT 10000;

#----------------------------------Codebasic Solution-----------------------------------
select
        get_fiscal_year(date) as fiscal_year,
        sum(round(sold_quantity*g.gross_price,2)) as yearly_sales
from fact_sales_monthly s
join fact_gross_price g
on 
    g.fiscal_year=get_fiscal_year(s.date) and
    g.product_code=s.product_code
where
    customer_code=90002002
group by get_fiscal_year(date)
order by fiscal_year;
		










Select * from dim_customer;

Select * from dim_product;

Select * from fact_gross_price;

Select * from fact_sales_monthly;