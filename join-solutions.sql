## Tasks
1. Get all customers and their addresses.

select customers, addresses from customers
join addresses on addresses.customer_id = customers.id


2. Get all orders and their line items (orders, quantity and product).

select line_items.order_id, line_items.quantity, products.description from line_items
join products on products.id = line_items.product_id

3. Which warehouses have cheetos?

select warehouse.warehouse from warehouse 
join warehouse_product on warehouse.id = warehouse_product.warehouse_id
join products on products.id = warehouse_product.product_id
where description = 'cheetos';

4. Which warehouses have diet pepsi?

select warehouse.warehouse from warehouse 
join warehouse_product on warehouse.id = warehouse_product.warehouse_id
join products on products.id = warehouse_product.product_id
where description = 'diet pepsi';

5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

select customers.first_name, count(*) from customers
join addresses on addresses.customer_id = customers.id
join orders on orders.address_id = addresses.id
group by customers.id;


6. How many customers do we have?

select count(*) from customers;

7. How many products do we carry?

select count(*) from products;


8. What is the total available on-hand quantity of diet pepsi?

select sum(on_hand) from products
join warehouse_product on warehouse_product.product_id = products.id
where description = 'diet pepsi';

