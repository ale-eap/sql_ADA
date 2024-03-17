SELECT COUNT(*) AS total_null_values
FROM artist
WHERE middle_names IS NULL;

SELECT COUNT(*) AS total_null_values
FROM canvas_size
WHERE height IS NULL;

SELECT COUNT(*) AS total_null_values
FROM museum
WHERE state IS NULL;

SELECT COUNT(*) AS total_null_values
FROM work
WHERE style IS NULL;

-- Quais países contêm a maior quantidade de artistas?
SELECT  nationality, COUNT(artist_id) AS quantity FROM artist
GROUP BY nationality
ORDER BY quantity DESC
limit 10;


-- Quais países possuem mais museus?
SELECT  country, COUNT(museum_id) AS quantity FROM museum
GROUP BY country
ORDER BY quantity DESC
LIMIT 10;

-- Quais artistas possuem mais obras?

SELECT  a.full_name as "Nome do artista", COUNT(w.name) as "Contagem de obras"
FROM
artist as a
LEFT JOIN work as w
ON w.artist_id = a.artist_id
GROUP BY a.full_name
ORDER BY COUNT(w.name) DESC
LIMIT 10;



-- Quantos artistas têm entre 150 e 300 obras?
WITH contagem_obras as(
SELECT  a.full_name as "Nome do artista", COUNT(w.name) as "Contagem de obras"
FROM
artist as a
LEFT JOIN work as w
ON w.artist_id = a.artist_id
GROUP BY a.full_name
ORDER BY COUNT(w.name) DESC
)

SELECT * FROM contagem_obras
WHERE ("Contagem de obras") > 150 AND "Contagem de obras" < 300








