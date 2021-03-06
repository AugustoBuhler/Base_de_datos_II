CREATE DATABASE imdb;

USE imdb;

CREATE TABLE film
( film_id INT AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  descripcion VARCHAR(30),
  release_year DATE,
  CONSTRAINT film_id_pk PRIMARY KEY (film_id)
);

CREATE TABLE actor
( actor_id INT AUTO_INCREMENT,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  CONSTRAINT actor_id_pk PRIMARY KEY (actor_id)
);


CREATE TABLE film_actor 
( film_actor_id INT AUTO_INCREMENT,
  actor_id1 INT,
  film_id1 INT,
  CONSTRAINT film_actor_id_pk PRIMARY KEY (film_actor_id)
);

ALTER TABLE film ADD last_update DATE;

ALTER TABLE actor ADD last_update DATE;

ALTER TABLE film_actor ADD 
CONSTRAINT fk_actor_id1 
FOREIGN KEY (actor_id1) 
REFERENCES actor (actor_id);

ALTER TABLE film_actor ADD
CONSTRAINT fk_film_id1 
FOREIGN KEY (film_id1) 
REFERENCES film (film_id);



INSERT
	INTO
	film (title,
	descripcion,
	release_year)
VALUES ('Batman',
'pelicula de accion y drama',
'2020-3-29');

INSERT
	INTO
	film (title,
	descripcion,
	release_year)
VALUES ('Barman',
'pelicula de accion y comedia',
'2021-2-28');

INSERT
	INTO
	film (title,
	descripcion,
	release_year)
VALUES ('Pokemon',
'niño de 13 captura bichos',
'2022-4-25');

INSERT
	INTO
	film (title,
	descripcion,
	release_year)
VALUES ('Avatar 2',
'secuela de gente con piel azul',
'2023-12-24');

INSERT
	INTO
	actor (first_name,
	last_name)
VALUES ('Julian',
'Perez');

INSERT
	INTO
	actor (first_name,
	last_name)CREATE DATABASE api_base;

USE api_base;

CREATE TABLE personal (
	id_p int unique, 
	name varchar(20), 
	mail varchar(20),
	type_p varchar(20),
	CONSTRAINT id_p_pk PRIMARY KEY (id_p),
	CONSTRAINT type_p_pk PRIMARY KEY (type_p)

);




CREATE TABLE alumno(
	id_alumno int unique,
	c_faltas float,
	grade_a varchar(30),
	course_a varchar(30),
	CONSTRAINT fk_id_alumno FOREIGN KEY (id_alumno) REFERENCES personal(id_p)
);


CREATE TABLE main (
	date_m date, 
	text_m varchar(400),
	file_m (hacer ruta mediante ftp),
	type_m varchar(30),
	CONSTRAINT fk_type_m FOREIGN KEY (type_m) REFERENCES personal(type_p)
);

VALUES ('Pedro',
'Sanchez');

INSERT
	INTO
	actor (first_name,
	last_name)
VALUES ('Teo',
'Rodrigez');

SELECT * FROM film_actor;
SELECT * FROM film; 
SELECT * FROM actor;

INSERT INTO film_actor (film_id1, actor_id1) VALUES ('1','1');
INSERT INTO film_actor (film_id1, actor_id1) VALUES ('2','2');
INSERT INTO film_actor (film_id1, actor_id1) VALUES ('3','2');
INSERT INTO film_actor (film_id1, actor_id1) VALUES ('4','3');



