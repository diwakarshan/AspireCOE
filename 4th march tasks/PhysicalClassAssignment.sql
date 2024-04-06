/* Assignment given during physical classes*/
/*April 1 and April 2nd */

use customer;
alter table customertable add column phoneNumber int after email ;
alter table customertable rename column customerName to firstname;
alter table customertable add column lastname varchar(255);
alter table customertable add column panNumber int;
alter table customertable drop column email;
insert into customertable values(1001,"Rohit","Sharma",908007786,"Mumbai",8995558);
insert into customertable values(1002,"Suresh","Raina",788007786,"Uttarpradesh",1395558);
insert into customertable values(1003,"Dinesh","Kumar",654707786,"Trichy",3455558);
alter table customertable rename column firstname to customerName;
insert into customertable values(1004,"Ananya","Pandey",432207786,"Madhyapradesh",3452558);
insert into customertable values(1005,"Buvanesh","Kumar",987607786,"Trichy",9987558);
select * from customertable;
delete from customertable where address = "Trichy";
SET SQL_SAFE_UPDATES = 0;    /*  for switching off safe mode*/
insert into customertable values(1003,"Dinesh","Kumar",654707786,"Trichy",null);
insert into customertable values(1005,"Buvanesh","Kumar",987607786,"Trichy",null);
delete from customertable where panNumber is null;

