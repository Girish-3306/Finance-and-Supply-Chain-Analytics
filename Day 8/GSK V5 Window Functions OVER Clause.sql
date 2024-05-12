use random_tables;

Select * from expenses
order by category;

Select * ,
	amount*100/sum(amount) over(partition by category) as pct
    from expenses
order by category;

select *,
	sum(amount) over(partition by category order by date) as total_expense_till_date
    from expenses 
order by category, date;

















Select sum(amount) from expenses;