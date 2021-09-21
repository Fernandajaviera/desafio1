DROP TABLE IF EXISTS comentarios;
DROP TABLE IF EXISTS post;

Ejercicio 1:
CREATE DATABASE post;


CREATE TABLE post(
    id serial PRIMARY KEY,
    usuario VARCHAR,
    fecha  TIMESTAMP,
    contenido VARCHAR,
    descripcion VARCHAR
);

CREATE TABLE comentarios(
    id serial,
    fecha DATE,
    hora TIMESTAMP,
    contenido VARCHAR,
    FOREIGN KEY (id) REFERENCES post(id)
);

Ejercicio 3:

INSERT INTO post(usuario) VALUES ('pamela');
INSERT INTO post(usuario) VALUES ('pamela');
INSERT INTO post(usuario) VALUES ('carlos');

Ejercicio 4:

ALTER TABLE post ADD titulo VARCHAR;

Ejercicio 5:

UPDATE post SET titulo='hola' WHERE usuario='pamela' AND id=1;
UPDATE post SET titulo='adios' WHERE usuario='pamela' AND id=2;
UPDATE post SET titulo='miau' WHERE usuario='carlos' AND id=3;

Ejercicio 6: 
INSERT INTO post(usuario) VALUES ('pedro');
INSERT INTO post(usuario) VALUES ('pedro');

Ejercicio 7: 

DELETE FROM post WHERE usuario='carlos';

Ejercicio 8:

INSERT INTO post(usuario) VALUES ('carlos');

Parte 2:

Ejercicio 2:

INSERT INTO comentarios(id, contenido) VALUES (1, 'comentario del primer post'); 
INSERT INTO comentarios(id, contenido) VALUES (1, 'comentario dos'); 
INSERT INTO comentarios(id, contenido) VALUES (6, 'comentario uno'); 
INSERT INTO comentarios(id, contenido) VALUES (6, 'comentario dos'); 
INSERT INTO comentarios(id, contenido) VALUES (6, 'comentario tres'); 
INSERT INTO comentarios(id, contenido) VALUES (6, 'comentario cuatro'); 

SELECT * FROM post FULL OUTER JOIN comentarios ON post.id=comentarios.id;

Ejercicio 3:

INSERT INTO post (usuario) VALUES ('margarita');

Ejercicio 4;

INSERT INTO comentarios(id, contenido) VALUES (9, 'comentario del primer post'); 
INSERT INTO comentarios(id, contenido) VALUES (9, 'comentario'); 
INSERT INTO comentarios(id, contenido) VALUES (9, 'comentario'); 
INSERT INTO comentarios(id, contenido) VALUES (9, 'comentario'); 
INSERT INTO comentarios(id, contenido) VALUES (9, 'comentario'); 

SELECT * FROM post FULL OUTER JOIN comentarios ON post.id=comentarios.id;