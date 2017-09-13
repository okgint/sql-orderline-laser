insert into distributor values(1, 'Distributor1', 'distributor Jln 1',
       'jakarta', 'sl', '12430', '021-7664269', 'Andika', 'ext21');
insert into distributor values(2, 'Distributor2', 'distributor Jln 2',
       'jakarta', 'sl', '12430', '021-7664269', 'Jonathan', 'ext21')       

insert into customer values(1, 'cust1', 'cust1.1', 'jln.tridarma', 'jakarta', 'sl', '12430', '021-75817', '0000001', '2019-1-1');
insert into customer values(2, 'cust2', 'cust2.1', 'jln.tridarma 2', 'jakarta', 'sl', '12430', '021-75817936', '0000002', '2019-1-1');

insert into item values(1, 'pepsodent', 1, '2000', '2017-1-1', 'tools');
insert into item values(2, 'rinso', 1, '1000', '2017-2-1', 'tools');
insert into item values(3, 'baygon', 2, '3000', '2017-3-1', 'racun');

insert into orders values(1, 1, '2017-9-9', 't'); -- cust1
insert into orders values(2, 1, '2017-9-9', 't'); -- cust1

insert into order_line values(1, 1, 2, '0', '5000', 't'); -- pepsodent
insert into order_line values(1, 2, 2, '0', '5000', 't'); -- rinso
insert into order_line values(1, 3, 2, '0', '5000', 't'); -- baygon
