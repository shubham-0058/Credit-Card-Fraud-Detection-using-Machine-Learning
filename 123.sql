create database CaseStudy;
use CaseStudy;
create table main_table (company_id int, company_name varchar(100), website varchar(100), phone varchar(20), incorporation_date date, registered_office varchar(100), revenue float, tax_percentage double, parent_co_id int, industry varchar(30));
-- 1
select count(*) from main_table where incorporation_date > "2020-12-31";

-- 2
select * from main_table where revenue < 100000.0 or revenue > 10000000.0;

-- 3
select industry, count(*) as total_companies from main_table group by industry having count(*) > 5;

-- 4
select * from main_table order by tax_percentage desc limit 10,10;

-- 5
select c1.company_name , c2.parent_co_id as parent_co_name from main_table as P1 left join main_table as L1 on c1.parent_co_id = c2.company_id;
