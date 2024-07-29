create database Orders;
use orders;

create table orders(id int,orders_name varchar(20),cost bigint,order_id int PRIMARY KEY,created_at timestamp,created_by varchar(30),modified_at timestamp,modified_by varchar(10));
desc orders;
insert into  orders values(1,"burger",120,1,now(),"mc donalds",now(),"yash");
insert into  orders values(2,"pizza",145,8,now(),"dominoz",now(),"puru");
insert into  orders values(3,"shusi",1200,4,now(),"valmiki",now(),"Krishna");
select * from orders;

create database payment;
use payment;
create table payment(id int,price bigint,payment_id int PRIMARY KEY,order_id int,payment_status varchar(20),created_at timestamp,created_by varchar(20),modified_at timestamp,modified_by varchar(10));
DESC payment;
insert into payment values(1,420,7,1,"online",now(),"raki",now(),"pk");
insert into payment values(2,540,11,1,"online",now(),"chinnu",now(),"sweety");
insert into payment values(3,98,12,1,"ofline",now(),"bondam",now(),"pandu");
select * from payment;

 
CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    restaurant_id INT,
    location VARCHAR(255),
    order_id INT,
    ratings DECIMAL(2, 1),
    payment_id INT,
    created_at TIMESTAMP ,
    created_by VARCHAR(255),
    modified_at TIMESTAMP,
    modified_by VARCHAR(255)
);
desc restaurants;
select * from restaurants;
insert into restaurants values(11,"park and eat",5,"tc palya",1,4,0,now(),"owner",now(),"suhal");
insert into restaurants values(17,"park",5,"tc palya",67,4,0,now(),"owneryy",now(),"suhalala");
insert into restaurants values(19,"eat",5,"tc palya",1,4,0,now(),"ownerss",now(),"suhas");

select * from restaurants;

CREATE TABLE delivery (
    id INT PRIMARY KEY,
    person_name VARCHAR(255),
    mode_of_payment ENUM('Cash', 'Card', 'Online'),
    order_id INT,
    restaurant_id INT,
    created_at TIMESTAMP ,
    created_by VARCHAR(255),
    modified_at TIMESTAMP ,
    modified_by VARCHAR(255)
   
);

insert into delivery values(4,"yashwanth","cash",5,5,now(),"judha",now(),"akbar");
insert into delivery values(5,"vinay","card",5,5,now(),"judhamaya",now(),"amla");
insert into delivery values(6,"raju","online",5,5,now(),"judhahello",now(),"amalapal");


select * from delivery;



