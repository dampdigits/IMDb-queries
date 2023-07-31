-- SQL query to list the names of all people who starred in a movie released in 2004, ordered by birth year.
SELECT name FROM people, stars, movies
WHERE people.id = stars.person_id
AND stars.movie_id = movies.id
AND movies.year = 2004
GROUP BY people.name
ORDER BY people.birth;
