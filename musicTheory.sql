
-- Query all of the entries in the Genre table

select * from genre

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
insert into Artist ( ArtistName, YearEstablished)
values ("Hot boi" , 100)


-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

insert into Album ( ArtistId, GenreId, Label, AlbumLength, ReleaseDate, Title, AlbumId)
values (555, 555, "get money", 555, 100, " get money" , 555)

-- Using the INSERT statement, add some songs that are on that album to the Song table.

insert into song( title, songlength, releasedate, genreid, artistid, albumid )
values ( "get money", 2, "dec 555", 12, 12, 12)

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
select title, artistid, albumid from Song
where artistid = 1

-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

select artist.artistname, album.Title
from artist
left join album on artist.artistid = album.artistid




-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

select count(*) from Song
group by albumid

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.


    select count(*) from Song
    group by artistid

-- Write a SELECT statement to display how many songs exist for each genre.
--  You'll need to use the COUNT() function and the GROUP BY keyword sequence.

select count(*) from Song
group by genreid

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.

select max(AlbumLength) from Album


-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.

select max(songlength) from song


-- Modify the previous query to also display the title of the album.

select max(songlength) from song


