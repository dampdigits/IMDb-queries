-- SQL query to list the titles of all movies in which both Bradley Cooper and Jennifer Lawrence starred
SELECT title FROM movies, stars, people
WHERE movies.id = stars.movie_id
AND stars.person_id = people.id
AND people.name = 'Jennifer Lawrence'
AND stars.movie_id IN (
    SELECT movie_id FROM stars, people
    WHERE stars.person_id = people.id
    AND people.name = 'Bradley Cooper'
);
