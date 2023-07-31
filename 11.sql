-- SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in, starting with the highest rated
SELECT title FROM movies, stars, people, ratings
WHERE people.name = 'Chadwick Boseman'
AND people.id = stars.person_id
AND stars.movie_id = movies.id
AND movies.id = ratings.movie_id
ORDER BY ratings.rating DESC
LIMIT 5;
