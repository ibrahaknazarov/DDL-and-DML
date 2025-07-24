
 CREATE TABLE students (
    id  int,
    name  VARCHAR,
    grade  int,
   email  VARCHAR
 );
 
  SELECT grade AND email  FROM  students WHERE grade < 80 AND email LIKE "@gmail.com";
