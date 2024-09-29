--  Query to List Shows for a Given Date and Theater

SELECT 
    Movie.title AS movie_title, 
    Show.time AS show_time
FROM 
    Show
JOIN 
    Movie ON Show.movie_id = Movie.id
WHERE 
    Show.theater_id = 1
    AND Show.date = '2024-09-28';


-- Query to Count Total Bookings for a Given Movie by name

SELECT
    m.title,
    count(b.id) AS tb
FROM
    Booking b
JOIN
    MovieShow ms ON b.show_id = ms.id
JOIN
    Movie m ON ms.movie_id = m.id
WHERE
    m.title='Pathaan';


-- Query to Count Total Bookings for all movies

SELECT
    m.title,
    count(b.id) AS bookings
FROM
    Booking b
JOIN
    MovieShow ms ON b.show_id = ms.id
JOIN
    Movie m ON ms.movie_id = m.id
GROUP BY
    m.title
ORDER BY
    tb desc;