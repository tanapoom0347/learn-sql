# learn-sql
vultr-vps  
tanapoom0347@gmail.com  
Azsx  
LOAD DATA INFILE 'D:/Downloads/Downloads3/01_09csv/New folder/01.csv' INTO TABLE logbooks FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\\\' (@vone,@vtwo,@vthree,@vfour,@vfive,@vsix,@vseven,@veight,@vnine,@vten,@veleven) SET one = @vone,two = @vtwo,three = @vthree,four = @vfour,five = @vfive,six = @vsix,seven = @vseven,eight = @veight,nine = @vnine,ten = @vten,eleven = @veleven;  
  
load data infile 'D:\\\Downloads\\\Downloads3\\\01_09csv\\\a01.csv'   
into table logbook   
fields terminated by ',' enclosed by '"' escaped by ''   
lines terminated by '\r\n'   
ignore 1 lines;  
  
select *   
into outfile 'D:\\\Downloads\\\Downloads3\\\01_09csv\\\New folder\\\logbook10.csv'   
fields terminated by ',' enclosed by '"' escaped by ''   
lines terminated by '\r\n'  
from logbook;  
  
SELECT group_concat('"',column_name,'"')   
FROM information_schema.columns   
WHERE table_name = 'logbook' AND table_schema = 'test'   
ORDER BY ordinal_position;  
  
https://stackoverflow.com/questions/19101243/error-1130-hy000-host-is-not-allowed-to-connect-to-this-mysql-server  
  mysql remote
  
(select 'c1','c2','c3','c4','c5','c6','c7','c8','c9','c10','c11')   
union   
(select * from logbook )   
into outfile 'D:\\Downloads\\Downloads3\\01_09csv\\New folder\\logbook16.csv'   
fields terminated by ',' enclosed by '"' escaped by ''   
lines terminated by '\r\n';  
