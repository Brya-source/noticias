


use noticias;

select * from extracciones;

select * from extracciones where relacion_spacy4 ='Sí';

select * from extracciones where pais != 'Mexico';

select * from capturas_noticias;

select * from recomendaciones;

DESCRIBE extracciones;
describe capturas_noticias;


CREATE TABLE noticias.extracciones LIKE noticias2.extracciones;
INSERT INTO noticias.extracciones SELECT * FROM noticias2.extracciones;
-- Deshabilitar el modo de actualizaciones seguras
SET SQL_SAFE_UPDATES = 0;

-- Volver a habilitar el modo de actualizaciones seguras
SET SQL_SAFE_UPDATES = 1;


SHOW TABLES;

#UPDATE extracciones
#SET pais = NULL, estado = NULL, municipio = NULL;

#drop table capturas_noticias;

select * from capturas_noticias;

select * from extracciones where relacion_spacy4 ='Sí' and noticias_repetidas =1;

select * from extracciones where relacion_spacy4 ='Sí';

#alter table extracciones drop column captor;
#alter table extracciones drop column lugar;
#alter table extracciones drop column noticias_repetidas;




SELECT captura, COUNT(*) AS total
FROM extracciones
GROUP BY captura
ORDER BY total DESC;

SELECT captor, COUNT(*) AS total
FROM extracciones
GROUP BY captor
ORDER BY total DESC;

SELECT lugar, COUNT(*) AS total
FROM extracciones
GROUP BY lugar
ORDER BY total DESC;

SELECT municipio, COUNT(*) AS total
FROM extracciones
GROUP BY municipio
ORDER BY total DESC;

SELECT estado, COUNT(*) AS total
FROM extracciones
GROUP BY estado
ORDER BY total DESC;

SELECT pais, COUNT(*) AS total
FROM extracciones
GROUP BY pais
ORDER BY total DESC;

SELECT tipo_secuestro, COUNT(*) AS total
FROM extracciones where relacion_spacy4 = 'Sí'
GROUP BY tipo_secuestro
ORDER BY total DESC;

SELECT noticias_repetidas, COUNT(*) AS total
FROM extracciones where relacion_spacy4 = 'Sí'
GROUP BY tipo_secuestro
ORDER BY total DESC;

#drop tables municipios, paises, estados, colonias;

#drop table extracciones_filtradas;
#alter table extracciones drop column noticias_repetidas;
select * from extracciones_filtradas;

describe extracciones_filtradas;

select * from extracciones_filtradas where municipio ="Cuernavaca";

select * from extracciones_filtradas_no_mexico;