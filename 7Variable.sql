CREATE TABLE tblfilms 
(
  id INT identity(01,1) PRIMARY KEY,
  filmname VARCHAR(255),
  Filmoscarwin int
);
INSERT INTO tblfilms (filmname, Filmoscarwin)
VALUES
  ('The Godfather', 3),
  ('The Shawshank Redemption', 0),
  ('The Dark Knight', 2),
  ('The Godfather: Part II', 6),
  ('12 Angry Men', 0),
  ('Schindler''s List', 7),
  ('The Lord of the Rings: The Return of the King', 11),
  ('Pulp Fiction', 1),
  ('The Good, the Bad and the Ugly', 0),
  ('Fight Club', 0);

  select * from [tblfilms]

  Declare @count int
  declare @Maxoscar int
  declare @Numfilms int

  set @Maxoscar = (select max(Filmoscarwin) from tblfilms)
  set @count = 0
  while @count<= @Maxoscar
	begin
		set @Numfilms = (select count(*) from tblfilms where Filmoscarwin = @count )
		print cast(@Numfilms as varchar(5)) + ' films have won ' + cast(@count as varchar(5)) + ' oscar award.'
		set @count = @count + 1
	end


