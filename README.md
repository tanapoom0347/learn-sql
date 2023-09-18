# learn-sql
vultr-vps  
tanapoom0347@gmail.com  
Azsx  
LOAD DATA INFILE 'D:/Downloads/Downloads3/01_09csv/New folder/01.csv' INTO TABLE logbooks FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\\\' (@vone,@vtwo,@vthree,@vfour,@vfive,@vsix,@vseven,@veight,@vnine,@vten,@veleven) SET one = @vone,two = @vtwo,three = @vthree,four = @vfour,five = @vfive,six = @vsix,seven = @vseven,eight = @veight,nine = @vnine,ten = @vten,eleven = @veleven;  
  
  
https://stackoverflow.com/questions/19101243/error-1130-hy000-host-is-not-allowed-to-connect-to-this-mysql-server  
  mysql remote  
  
create table logbook (  
    hh_id text default null,  
    fam_id text default null,  
    title text default null,  
    `name` text default null,  
    surname text default null,  
    national_id text default null,  
    birthdate text default null,  
    sex text default null,  
    province_name text default null,  
    amphur_name text default null,  
    tumbol_name text default null  
);  
  
load data infile 'D:\\Downloads\\Downloads3\\01_09csv\\a01.csv'   
into table logbook   
fields terminated by ',' enclosed by '"' escaped by ''   
lines terminated by '\r\n'   
ignore 1 lines;  
  
select *   
into outfile 'D:\\Downloads\\Downloads3\\01_09csv\\New folder\\logbook.csv'   
fields terminated by ',' enclosed by '"' escaped by ''   
lines terminated by '\r\n'   
from logbook;  

SELECT group_concat('"',column_name,'"')  
FROM information_schema.columns  
WHERE table_name = 'logbook' AND table_schema = 'test'  
ORDER BY ordinal_position;  
  
ALTER USER 'root'@'localhost' IDENTIFIED BY 'admin';  
use mysql;  
flush privileges;  
exit;  
  
[SQL Server]  
SELECT   
    DATEDIFF(YEAR, [birthdate], GETDATE()) -  
    CASE   
        WHEN DATEADD(YEAR, DATEDIFF(YEAR, [birthdate], GETDATE()), [birthdate]) > GETDATE()   
        THEN 1   
        ELSE 0   
    END AS [age]  
