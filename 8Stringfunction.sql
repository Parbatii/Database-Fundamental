--built in string function
select ascii('Abc')

print 'Char of ascii 98 = ' +char(98)

print 'ASCII of Aman= ' + cast(ascii('Aman') as varchar(max))

select upper('hello')
select lower('HILLO')

select ltrim('           fyu')
select rtrim('Mayo            ')

select reverse('ofcourse')

print 'Length of Elephant = '+ cast(len('Elephant') as varchar(max))

select left('Amrapali',4)
select right ('Amrapali',4)

select charindex('p','amrapali',1)

select substring('amra.pali', 4,3)

CREATE TABLE Contacts (
  Name varchar(50) NOT NULL,
  Email varchar(100) NOT NULL
);
INSERT INTO Contacts (Name, Email)
VALUES
  ('John Smith', 'john.smith@example.com'),
  ('Jane Doe', 'jane.doe@example.com'),
  ('Bob Johnson', 'bob.johnson@example.com'),
  ('Alice Brown', 'alice.brown@example.com'),
  ('David Lee', 'david.lee@example.com'),
  ('Emily Davis', 'emily.davis@example.com'),
  ('Michael Wilson', 'michael.wilson@example.com'),
  ('Sarah Thompson', 'sarah.thompson@example.com'),
  ('Kevin Chen', 'kevin.chen@example.com'),
  ('Laura Rodriguez', 'laura.rodriguez@example.com'),
  ('Tom Baker', 'tom.baker@example.com'),
  ('Olivia Green', 'olivia.green@example.com'),
  ('Peter Kim', 'peter.kim@example.com'),
  ('Karen Lee', 'karen.lee@example.com'),
  ('Steven Brown', 'steven.brown@example.com');

  --replicate()
  select [Name], substring(Email,1,2)+replicate('*',5)+substring(Email,charindex('@',Email),len(Email)-charindex('@', Email)+1)as email
  from Contacts

  --space()
  select [Name] + space(10) +[Email] as Name_Email from Contacts
 
 --patindex()
  select [Name], PATINDEX('%@example.com',Email) as first_occurance from Contacts
  where patindex('%@example.com',Email)>0

  select patindex('%i','parbati')

  update Contacts set Email='kim.peter@aaa.com' where [Name]='Peter Kim'

  select * from Contacts
  