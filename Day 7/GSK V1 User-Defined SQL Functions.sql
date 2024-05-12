use gdb0041;

Select * from dim_customer
where customer LIKE "%croma%" and market= "India";

Select * from fact_sales_monthly 
where customer_code = 90002002 and year(date_add(date, INTERVAL 4 MONTH)) = 2021
order by date desc;

Select YEAR(date_add("2020-09-01",interval 4 month));

Select * from fact_sales_monthly
where customer_code = 90002002 and 
get_fiscal_year(date)=2021
order by date desc;

Select * from fact_sales_monthly
where customer_code = 90002002 and 
get_fiscal_year(date)=2021 and
get_fiscal_quarter_1(date)="A"
order by date desc;

Select MONTH("2021-09-11");







