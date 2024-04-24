-- Criação da tabela de artistas
CREATE TABLE artist (
	artist_id INTEGER,
	full_name VARCHAR,
	first_name VARCHAR,
	middle_names VARCHAR,
	last_name VARCHAR,
	nationality VARCHAR,
	styles VARCHAR,
	birth INT,
	death INT
)

-- Importanto dados para a tabela artistas
COPY artist from 'C:\Users\Pichau\Desktop\Projeto Alexandre\artist.csv' CSV HEADER DELIMITER ',';

SELECT * FROM artist
LIMIT 10;


CREATE TABLE canvas_size (
	size_id INTEGER,
	width INTEGER,
	height INTEGER,
	label VARCHAR
	)
	
COPY canvas_size from 'C:\Users\Pichau\Desktop\Projeto Alexandre\canvas_size.csv' CSV HEADER DELIMITER ',';

SELECT * FROM canvas_size --exibindo a tabela criada
limit 10;


CREATE TABLE museum (
	museum_id INTEGER,
	name VARCHAR,
	address VARCHAR,
	city VARCHAR,
	state VARCHAR,
	postal VARCHAR,
	country VARCHAR,
	phone VARCHAR,
	url VARCHAR
)

COPY museum from 'C:\Users\Pichau\Desktop\Projeto Alexandre\museum.csv' CSV HEADER DELIMITER ',';

SELECT * FROM museum --exibindo a tabela criada
limit 10;


CREATE TABLE subject (
	work_id INTEGER,
	subject VARCHAR)
	
	
COPY subject from 'C:\Users\Pichau\Desktop\Projeto Alexandre\subject.csv' CSV HEADER DELIMITER ',';
	
SELECT * FROM subject --exibindo a tabela criada
limit 10;	

	
CREATE TABLE work (
	work_id INTEGER,
	name VARCHAR,
	artist_id INTEGER,
	style VARCHAR,
	museum_id INTEGER
)
	
COPY work from 'C:\Users\Pichau\Desktop\Projeto Alexandre\work.csv' CSV HEADER DELIMITER ',';

SELECT * FROM work --exibindo a tabela criada
limit 10;



