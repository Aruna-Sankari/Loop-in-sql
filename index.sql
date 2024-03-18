-- LOOPS USING LEAVE --
Delimiter $$
create procedure loopdemo()
BEGIN
Declare i int;
Declare str varchar(40);
set i=1;
set str=' ';
looplabel:loop
IF i>10 THEN
LEAVE looplabel;
END IF;
set str=concat(str,i,' ');
set i=i+1;
END LOOP;
select str;
END $$
Delimiter ;

call loopdemo();

-- WHILE LOOP --
Delimiter $$
create procedure loopdemo2()
BEGIN
Declare i int;
Declare str varchar(40);
set i=1;
set str=' ';
while i<=10 DO
set str=concat(str,i,' ');
set i=i+1;
END WHILE;
select str;
END $$
Delimiter ;

call loopdemo2();

-- LOOP USING REPEAT --
Delimiter $$
create procedure loopdemo3()
BEGIN
Declare i int;
Declare str varchar(40);
set i=1;
set str=' ';
REPEAT
set str=concat(str,i,' ');
set i=i+1;
UNTIL i>10
END REPEAT;
select str;
END $$
Delimiter ;

call loopdemo3();