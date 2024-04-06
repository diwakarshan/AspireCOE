use developmentDatabase;

/*query 1 */
create table Programmer(name varchar(8) not null, dob date not null, doj date not null, sex varchar(6) not null, prof1 varchar(8), prof2 varchar(8), salary int(4) not null);
select * from Programmer;
alter table programmer add column pid int after name ;
insert into Programmer values("Hari",1001,'2003-03-15','2021-09-25',"Male","English","Tamil",9000);
insert into Programmer values("Gowtham",1002,'2003-07-07','2023-01-09',"Male","English","Tamil",9300);
insert into Programmer values("Harini",1003,'2002-10-30','2019-11-22',"Female","English","Telugu",8000);
create table Software(name varchar(8) not null, title varchar(20) not null, dev_in varchar(8) not null, scost int(7.2), dcost int(5), sold int(3));
select * from Software;
select * from programmer;
alter table software add column pid int after name;
truncate table software;
insert into Software values("somdutt",1001,"parachutes","basic",399.99,6000,41); 
insert into Software values("Zomato",1003,"FoodOrders","PASCAL",777.99,9000,11); 
insert into Software values("Automob",1001,"Vehicles","Java",199.99,3000,9);
insert into Software values("Swiggy",1002,"FoodOrders","PASCAL",888.99,5900,45);
select avg(scost) from Software where dev_in = "PASCAL";
SELECT *, DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(), dob)), '%Y') + 0 AS age
FROM Programmer;
create table studies(name varchar(8),splace varchar(9),course varchar(5), ccost varchar(5));
truncate table studies;
select * from studies;
insert into studies values("hari","vellore","DCS",8990);
insert into studies values("gowtham","Tirupur","ECE",6699);
insert into studies values("Harini","Chennai","DCS",6699);
select max(sold) from software;
SELECT e.name AS ProgrammerName, TIMESTAMPDIFF(YEAR, e.dob, CURDATE()) AS age, course AS course_taken FROM programmer e JOIN studies c ON e.name = c.name
WHERE c.course = "DCS";
SELECT name AS ProgrammerName,dob AS DOB FROM programmer WHERE MONTH(dob) = 1;
select min(ccost) from studies;
select count(course) from studies where course ="DCS";
select sum(scost*sold) as revenue from software where dev_in = "PASCAL";
select name from software where pid =1001;
select count(splace) from studies where splace ="Chennai";
select name, title, pid,scost from software where scost>500;
select name,ceil(dcost/scost) as Number_of_copies from software;
select max(scost) from software where dev_in = "Pascal";
select name,title from software where scost*sold>dcost;
select count(dev_in) from software where dev_in="java";
select count(splace) from studies where splace ="vellore";
select count(ccost) from studies where ccost>5000 && ccost<8000;
select ceil(avg(ccost)) from studies;
select c.name as Name,c.dob as DOB from programmer c join software s on c.pid=s.pid where s.dev_in ="pascal";
select c.name as Name,c.dob as DOB from programmer c join software s on c.pid=s.pid where s.dev_in="basic" OR s.dev_in="java";
select c.name as Name,c.dob as DOB from programmer c join software s on c.pid=s.pid where s.dev_in not in ("java") AND ("pascal");
select max(timestampdiff(YEAR,dob,curdate())) as age from programmer;
select avg(timestampdiff(YEAR,dob,curdate())) as avg_age from programmer where sex = "female";
select timestampdiff(YEAR,doj,curdate()) as experience, name as Name from programmer order by experience desc;
select name from programmer where month(dob)=month(curdate());
select count(*) from programmer where sex = "female";
select s.dev_in from software s join programmer e on e.pid=s.pid where e.sex="male";
select ceil(avg(salary)) from programmer;
select count(*) from programmer where salary between 9000 AND 10000;
select e.name,e.doj,e.dob from programmer e join software s on e.pid = s.pid where prof1 Not in ("Tamil","french") and prof2 not in ("Telugu");
select name,dob,doj,sex,prof1 from programmer where prof1='C' and timestampdiff(year,dob,curdate())>24;
select name from programmer where week(dob)=week(curdate());
select name,doj,dob,sex,salary from programmer where timestampdiff(year,doj,curdate())<1;
select name,doj,dob,sex,salary from programmer where timestampdiff(year,doj,curdate())>2;
Select name, (dcost - (scost * sold)) AS amount_to_be_recovered FROM Software WHERE dcost > (scost * sold);
select name,title from software where sold =0;
select s.dcost,s.dev_in from software s join programmer p on s.pid=p.pid where p.name ="Hari";
select distinct splace from studies;
select count(distinct course) from studies;
SELECT name FROM Programmer WHERE LENGTH(name) - LENGTH(REPLACE(name, 'a', '')) = 2;
select name from programmer where length(name)>=5;
select p.name,s.dev_in from programmer p join software s on p.pid=s.pid where s.dev_in="java" and timestampdiff(year,p.doj,curdate())>2;
select min(length(name)) from programmer;
select ceil(avg(dcost)) from software where dev_in="pascal";
SELECT name, sex, dob, doj FROM Programmer WHERE DAY(LAST_Day(dob)) = DAY(dob);
select p.name,p.salary,p.sex from programmer p join software s on p.pid=s.pid where p.sex="male" and s.dev_in not in ("basic");
select title,scost,dcost,ceil((dcost-scost)) as diff from software order by diff desc;
select name,doj,dob from programmer where month(dob)=month(doj);
SELECT dev_in AS language, COUNT(dev_in) AS number_of_packages FROM Software GROUP BY dev_in;

/*Query-2*/

select dev_in,count(*) from software group by dev_in;
select p.name,count(s.dev_in) from programmer p join software s on p.pid=s.pid group by p.name;
select sex,count(sex) as count from programmer group by sex;
select max(scost),max(sold) from software group by scost;SELECT dev_in AS language, MAX(scost) AS costliest_package, MAX(sold) AS highest_selling
FROM Software GROUP BY dev_in;
select year(dob),count(*) from programmer group by year(dob);
select year(doj),count(*) from programmer group by year(doj);
select month(dob),count(*) from programmer group by month(dob);
select month(doj),count(*) from programmer group by month(doj);
select count(*) as language from programmer group by prof1;
select count(*) as language from programmer group by prof2;
select floor(salary/1000) as salary_grp,count(*) as count from programmer group by salary_grp;
select splace,count(*) from studies group by splace;
select course,count(*) from studies group by course;
select dev_in,sum(dcost) from software group by dev_in; 
select dev_in,sum(scost) from software group by dev_in;
select pid,sum(scost) from software group by pid;
select pid,count(sold) from software group by pid; 
select pid,count(pid) from software group by pid;
select pid,dev_in,scost from software;
select pid,max(scost) as costliest,min(scost) as cheapest from software group by pid;
select dev_in,avg(dcost),avg(scost),avg(scost/sold) from software group by dev_in;
select splace,count(distinct course),avg(ccost)  from studies group by splace;
select splace as Institute_name,count(*) as Students from studies group by Institute_name;
select name,sex from programmer;
select p.name,s.dev_in from programmer p join software s on p.pid=s.pid;
select dev_in,count(*) as count from software where dcost<10000 group by dev_in;
select avg(dcost)-avg(scost) from software group by dev_in;
select sum(scost) as total_scost,sum(dcost) as total_dcost, sum(dcost)-sum(scost) as amount_tobe_recovered from software group by dev_in;
select max(salary),min(salary),avg(salary) from programmer where salary>2000;

/*Query 3 */

select p.name,p.salary from programmer p join software s on p.pid=s.pid where s.dev_in ="pascal" order by p.salary desc limit 1;
select p.name,p.salary from programmer p join software s on p.pid=s.pid where p.sex="female" order by p.salary desc limit 1;
select prof1 as language, name from programmer group by language having max(salary);
select name,doj from programmer order by doj limit 1;
select name,doj from programmer order by doj desc limit 1;
select prof1 as language from programmer group by language having count(*)=1;
select name,dob from programmer order by dob desc limit 1;
select splace,count(*) as students from studies group by splace order by students desc limit 1;
SELECT name FROM Programmer WHERE sex = 'female' AND salary > 3000 AND prof1 NOT IN ('C', 'C++', 'Oracle', 'Dbase') AND prof2 NOT IN ('C', 'C++', 'Oracle', 'Dbase');
select name,ccost from studies order by ccost desc limit 1;
select ceil(avg(ccost)) from studies;
select course from studies group by course having abs(avg(ccost)-(select avg(ccost) from studies))<=1000;
select name,title,dcost from software order by dcost desc limit 1;
select name,title,dcost from software order by dcost limit 1;
select name,title,sold from software order by sold limit 1;
select name,title,sold from software order by sold limit 1;
select dev_in from software order by sold desc limit 1;
select sold from software order by (scost-dcost) asc limit 1;
select scost from software where dev_in ="pascal" order by scost limit 1;
select dev_in from software group by dev_in order by count(*) desc limit 1;
select name from software group by name order by count(*) desc limit 1;
select name from software order by scost desc limit 1;
select name from software group by name having sum(sold)<(select avg(sold) from software);
SELECT p.name FROM Programmer p JOIN (SELECT MAX(salary) AS max_salary_male FROM Programmer WHERE sex = 'male') AS max_salary_male ON p.sex = 'female' AND p.salary > max_salary_male;
select prof1 from programmer group by prof1 order by count(*) desc limit 1;
select name from software group by name having sum(dcost)>(2*sum(scost));
SELECT dev_in AS Programming_Language, name AS Programmer_Name, title AS Cheapest_Package, dcost AS Package_Cost
FROM Software s
WHERE (dev_in, dcost) IN (
    SELECT dev_in, MIN(dcost)
    FROM Software
    GROUP BY dev_in
);
select name from programmer where sex='m' and year(dob)=1996 order by dayofyear(dob) asc limit 1;
select distinct name,title as highest_selling_packaage,dev_in from software where sold=(select max(sold) from software) union all select distinct name,title as lowest_selling_packaage,dev_in from software where sold=(select min(sold) from software);
select name from programmer where sex='f' and year(doj)=2022 order by dayofyear(doj) desc limit 1;
select year(dob),count(*) as no_programmers from programmer group by year(dob) order by no_programmers desc limit 1;
select month(doj),count(*) as no_programmers from programmer group by month(doj) order by no_programmers desc limit 1;
SELECT language, COUNT(*) AS total_programmers FROM (SELECT prof1 AS language FROM programmer UNION ALL SELECT prof2 AS language FROM programmer) AS all_languages GROUP BY language
ORDER BY total_programmers DESC
limit 1;
select name from programmer where sex='m' and salary<(select avg(salary) from programmer where sex='f');

/*query 4 */

select * from programmer where salary in(select salary from programmer group by salary having count(*)>1);
select * from software where name in(select name from programmer where sex='male' and salary>3000);
select * from software where dev_in='pascal' and name in(select name from programmer where sex='female');
select * from programmer where doj<str_to_date('1990-01-01','yyyy-mm-dd');
select * from software where dev_in='java' and name in(select name from programmer where sex='female' and name in(select name from studies where splace='pragathi'));
select p.name,s.splace,count(s.name) as no_packages from programmer p left join studies s on p.name=s.name group by p.name,s.splace;
select s.* from software s join programmer p on s.name=p.name join studies st on s.name=st.name where s.dev_in='dbase' and p.sex='m' and st.splace=(select splace from studies group by splace order by count(*) desc limit 1);
select * from software where name in (select name from programmer where sex = 'm' and extract(year from dob) < 1965) or name in (select name from programmer where sex = 'f' and extract(year from dob) > 1975);
select * from software where dev_in not in (select prof1 from programmer);
select * from software where dev_in not in (select prof1 from programmer) and dev_in not in (select prof2 from programmer);
select * from software where name in (select name from programmer where sex = 'm' and name in(select name from studies where splace='sabhari'));
select name from programmer where name not in (select name from software);
select * from programmer where doj in (select doj from programmer group by doj having count(*) > 1);
select * from programmer where prof2 in (select prof2 from programmer group by prof2 having count(*) > 1);
select p.splace, sum(s.sold * s.scost) as total_sales_value from studies p join software s on p.name = s.name group by p.splace;
select splace from studies where name in(select name from software order by scost desc )limit 1;
select distinct p.prof1 from programmer p where p.prof1 not in (select dev_in from software) union select distinct p.prof2 from programmer p where p.prof2 not in (select dev_in from software);
select p.name,p.salary,st.course from programmer p join software s on p.name=s.name join studies st on p.name=st.name where s.scost=(select scost from software order by (scost*sold) desc limit 1);
select p.name, (s.ccost / p.salary) *12 as months_to_recover from programmer p join studies s on p.name=s.name;
select * from software where name in (select name from programmer where year(current_date()) - year(doj) < 3) order by scost desc limit 1;
select avg(salary) from programmer where name in (select name from software group by name having sum(sold * scost) > 50000);
select count(*) from software where name in (select name from studies where splace = (select splace from studies where ccost=(select min(ccost) from studies)));
select count(*) from software where name in (select name from programmer where sex = 'f' and salary > (select max(salary) from programmer where sex = 'm'));
select count(*) from software where name in (select name from studies where splace = 'bdps' and name in (select name from programmer order by doj desc));
select s.name,st.splace from software s join studies st where st.name not in (select name from software);
select p.prof1, count(*) as num_programmers, (select count(*) from software s where s.dev_in = p.prof1) as num_packages from programmer p group by p.prof1;
select p.name, count(s.name) as num_packages from programmer p left join software s on p.name = s.name group by p.name;
select p.* from programmer p join studies s on p.name=s.name where splace = 's.s.i.l.';