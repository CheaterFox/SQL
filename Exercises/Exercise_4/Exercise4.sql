SELECT DISTINCT replacement_cost FROM film;

SELECT COUNT(*) FROM film;
-- SELECT COUNT(replacement_cost) FROM film; this is same as above

SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';

SELECT COUNT(*) FROM country WHERE country LIKE '_____';

SELECT COUNT(*) FROM city WHERE city ILIKE '%R';
