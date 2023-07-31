-- SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred
SELECT DISTINCT name FROM people, stars
WHERE people.id = stars.person_id
AND stars.movie_id IN (
    SELECT movie_id FROM stars, people
    WHERE stars.person_id = people.id
    AND people.name = 'Kevin Bacon'
    AND people.birth = '1958'
)
AND name != 'Kevin Bacon';
