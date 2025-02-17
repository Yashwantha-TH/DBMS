
0} Basic Commands :
  1} To create Table => create table table_name(col1 datatype(size) , col2 Integer , col3 varchar(20), .....);
  2} To Insert values into the table => insert into table_name values('col1_data' , 'col2_data' , ' col3_data',....);
  3} To view table => select * from table_name; or select col1_name from table_name; or select col1_name,col2_name from table_name;
  4} To update the vaules => update table_name set col1 = 'data' where col2='data2';
  5} To save the created table in database => commit;
  6} To alter the values or add new col or attributes parameter => alter table table_name add col3 datatype(size);
  7} To delete table => delete from table_name where col1='data'; or drop table table_name;
  8} Primary Key => unique indentity 
  9} To find Description of table => desc table_name;

  10}  insert into publisher values('&name' , &phone , '&address');
       Enter value for name: Brook
       Enter value for phone: 12345
       Enter value for address: thriller bark
       / : forward slash repeat the same insert details;


0.1} Key Words:
  1}SELECT - extracts data from a database
  2}UPDATE - updates data in a database
  3}DELETE - deletes data from a database
  4}INSERT INTO - inserts new data into a database
  5}CREATE DATABASE - creates a new database
  6}ALTER DATABASE - modifies a database
  7}CREATE TABLE - creates a new table
  8}ALTER TABLE - modifies a table
  9}DROP TABLE - deletes a table
  10}CREATE INDEX - creates an index (search key)
  11}DROP INDEX - deletes an index

1} Library Book Management
CODE => 
CREATING TABLE :
   create table Publisher( Name varchar2(20) primary key, Phone integer , Address varchar2(20));
   create table Book(Book_id integer primary key , Title varchar2(20) , Pub_year varchar2(20) , Publisher_name references Publisher (Name) on delete cascade);
   create table Book_Authors(Author_Name varchar2(20) , Book_id references Book (Book_id) on delete cascade , primary key (Book_id,Author_Name));
   create table Library_Branch ( Branch_id integer primary key , Branch_Name varchar2(20) , Address varchar2(50));
   create table Book_Copies(No_Of_copies integer , Book_id references Book (Book_id) on delete cascade , Branch_id references Library_Branch (Branch_id) on delete cascade , primary key (Book_id , Branch_id));
   create table Card (Card_No integer primary key );
   create table Book_Lending( Book_id references Book (Book_id) on delete cascade , Branch_id references Library_Branch (Branch_id) on delete cascade , Card_No references Card (Card_No) on delete cascade  , Date_out integer , Due_date integer, primary key (Book_id,Branch_id,Card_No) );

INSERTING VALUES : 
    insert into Publisher values ('Luffy' , '98765' , 'East blue');
    insert into Publisher values ('Zoro' , '67895' , 'West blue');
    insert into Publisher values ('Sanji' , '98723' , 'Wano kingdom');
    insert into Publisher values ('Nami' , '32165' , 'Punk Hazzard');
    insert into Publisher values ('Franky' , '65345' , 'Alabasta');

   SQL>  insert into Book values  ( &book , '&titile' , '&publish_year' , '&publisher_name');
      Enter value for book: 1
      Enter value for titile: pirate king
      Enter value for publish_year: 1999
      Enter value for publisher_name: Luffy
      old   1:  insert into Book values  ( &book , '&titile' , '&publish_year' , '&publisher_name')
      new   1:  insert into Book values  ( 1 , 'pirate king' , '1999' , 'Luffy')
