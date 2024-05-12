use gdb0041;

	SELECT 
            *, 
    	    net_invoice_sales*(1-post_invoice_discount_pct) as net_sales
	FROM gdb0041.sales_postinv_discount;