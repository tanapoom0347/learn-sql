# learn-sql
vultr-vps  
tanapoom0347@gmail.com  
Azsx  
LOAD DATA INFILE 'D:/Downloads/Downloads3/01_09csv/New folder/01.csv' INTO TABLE logbooks FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\' (@vone,@vtwo,@vthree,@vfour,@vfive,@vsix,@vseven,@veight,@vnine,@vten,@veleven) SET one = @vone,two = @vtwo,three = @vthree,four = @vfour,five = @vfive,six = @vsix,seven = @vseven,eight = @veight,nine = @vnine,ten = @vten,eleven = @veleven;  
  
LOAD DATA INFILE 'D:/New folder/ch001.csv' INTO TABLE b001 FIELDS TERMINATED BY ',';  
  
SELECT *  
INTO OUTFILE 'D:/Downloads/Downloads3/01_09csv/New folder/02.csv'  
 FIELDS TERMINATED BY ','  
FROM logbooks  
  
SELECT *  
INTO OUTFILE 'D:/New folder/z001.csv'  
FIELDS TERMINATED BY ','  
FROM b001 ;  
