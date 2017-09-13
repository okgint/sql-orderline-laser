DROP TABLE IF EXISTS order_line;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS distributor;
DROP TABLE IF EXISTS customer;

CREATE TABLE distributor (
distributor_numb int,
distributor_name varchar(15),
distributor_street varchar(30),
distributor_city varchar(15),
distributor_state char(2),
distributor_zip char(5),
disitributor_phone char(12),
distributor_contact_person varchar(30),
contact_person_ext varchar(5),

constraint distributor_pkey primary key(distributor_numb)
);

insert into distributor values(1, "Distributor1", "distributor Jln 1",
       "jakarta", "Jaksel", '12430', '021-7664269', "Andika", "ext 21")

CREATE TABLE customer
(customer_numb int ,
customer_first_name varchar (15),
customer_last_name varchar (15),
customer_street varchar (30),
customer_city varchar (15),
customer_state char (2),
customer_zip char (5),
customer_phone char (12),
credit_card_numb varchar (15),
card_exp_date date,

constraint customer_pkey primary key(customer_numb)
);

CREATE TABLE item (
item_numb int,
title varchar(60),
distributor_numb int,
retail_price numeric(6,2),
release_date date,
genre char(15),

constraint item_pk primary key(item_numb),
constraint item_distributor_fk foreign key(distributor_numb)
	   references distributor(distributor_numb)
);

CREATE TABLE orders (
order_numb int,
customer_numb int,
order_date date,
order_filled char(1),

constraint orders_pk primary key(order_numb),
constraint orders_customer_fk foreign key(customer_numb)
	   references customer(customer_numb)
);

CREATE TABLE order_line (
order_numb int,
item_numb int,
quantity int,
discount_applied numeric(6,2),
selling_price numeric(6,2),
shipped char(1),

constraint order_line_pk primary key(order_numb, item_numb),
constraint order_line_fk foreign key(order_numb)
	   references orders(order_numb),
constraint order_line_fk2 foreign key(item_numb)
	   references item(item_numb)
);
