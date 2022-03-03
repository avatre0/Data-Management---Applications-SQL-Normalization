SELECT Supplier.sales_contact_name AS 'Contact Name', Coffee_Shop.shop_name AS 'Shop Name', Coffee.coffee_name AS 'Coffee Name'
FROM Coffee
	INNER JOIN Supplier
		ON Coffee.supplier_id = Supplier.supplier_id
	INNER JOIN Coffee_Shop
		ON Coffee_Shop.shop_id = Coffee.shop_id;