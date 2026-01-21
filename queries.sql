#Query 1: 10 Highest rated movies (min vote 500)
SELECT title, popularity, vote_average
        FROM movies
        WHERE vote_count > 500
        ORDER BY vote_average DESC
        LIMIT 10;

#Query 2: I want to see how many different language exist in the db
SELECT title, original_language,popularity, count(original_language)
        FROM movies
        GROUP BY original_language
        ORDER BY popularity DESC

#Query 3: top 10 popular movies?
#don't search 3rd most popular movie...!
SELECT title, popularity, original_language, genres
        FROM Movies
        ORDER BY popularity DESC
        LIMIT 10

#Query 4: Movies with highest budget
SELECT title, budget
        FROM movies
        ORDER BY budget DESC
        LIMIT 10
#Query 5: Movies longer than 3 hours
SELECT title, runtime
        FROM movies
        WHERE runtime > 180
        ORDER BY runtime DESC;

#Query 6: Average rating per language
SELECT  original_language, round(vote_average) as average_rating_per_language
        FROM movies
        WHERE vote_average BETWEEN 1 AND 9.9
        GROUP BY original_language
        ORDER BY average_rating_per_language DESC

#Query 7: Average runtime per language
SELECT original_language, round(runtime) as average_runtime_per_language
        FROM movies
        GROUP BY original_language
        ORDER BY average_runtime_per_language desc
        LIMIT 10

#Query 8: Average rating in greek movies
SELECT ROUND(AVG(vote_average), 2) AS avg_greek_rating
        FROM movies
        WHERE original_language = 'el' AND vote_average BETWEEN 1 AND 9.9

#Query 9: Average rating in english spoken movies
SELECT ROUND(AVG(vote_average), 2) AS avg_en_rating
        FROM movies
        WHERE spoken_languages = 'English' AND vote_average BETWEEN 1 AND 9.9

#Query 10: Movies released per day
SELECT release_date, COUNT(*) AS movie_count
        FROM movies
        WHERE release_date IS NOT NULL AND release_date < '2026-01-01'
        GROUP BY release_date
        ORDER BY release_date DESC

#Query 11: Movies released per year
SELECT SUBSTR(release_date,1,4)as year, COUNT(*) AS movie_count
        FROM movies
        WHERE SUBSTR(release_date,1,4) IS NOT NULL AND release_date < 2027
        GROUP BY year
        ORDER BY year DESC

#Query 12: Most common genres
SELECT genres, COUNT(*) AS count
        FROM movies
        GROUP BY genres
        ORDER BY count DESC
        LIMIT 10;

#Query 13: 50 Movies with very high rating but low popularity (hidden gems)
SELECT title, vote_average, popularity
        FROM movies
        WHERE vote_average BETWEEN 1 AND 9.9 AND popularity < 10
        ORDER BY vote_average DESC
        LIMIT 50

#Query 14: # Average revenue by language
 SELECT original_language, ROUND(AVG(revenue), 0)/1000000 AS avg_revenue_in_M
        FROM movies
        WHERE revenue > 0
        GROUP BY original_language
        ORDER BY avg_revenue_in_M DESC

#Query 15: Movies with best revenue-to-budget ratio
SELECT title, budget, revenue,
       ROUND(1.0 * revenue / budget, 2) AS roi
        FROM movies
        WHERE budget > 100000 AND revenue > 0
        ORDER BY roi DESC
        LIMIT 10;

#Query 16: Biggest Box office flops
SELECT title, budget, revenue, (revenue - budget) AS loss
        FROM movies
        WHERE budget > 0 AND revenue > 0
        ORDER BY loss ASC
        LIMIT 10;











