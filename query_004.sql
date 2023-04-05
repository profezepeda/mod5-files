INSERT INTO especies values
(null, 'Canino'),
(null, 'Felino');

INSERT INTO razas VALUES
(null, 1, 'Doberman'),
(null, 1, 'Chihuahua'),
(null, 1, 'Pastor Alemán'),
(null, 1, 'Mestizo');

INSERT INTO razas VALUES
(null, 2, 'Angora'),
(null, 2, 'Persa'),
(null, 2, 'Romano'),
(null, 2, 'Siamés');


SELECT * FROM razas r 
WHERE idespecie = 2;

SELECT  FROM razas r
INNER JOIN especies e ON r.idespecie = e.idespecie;
CREATE VIEW listamascotas AS
SELECT m.nombre mascota, e.nombre especie, r.nombre raza
FROM mascotas m 
INNER JOIN razas r ON r.idraza = m.idraza
INNER JOIN especies e ON e.idespecie = r.idespecie ;

SELECT * FROM especies order by nombre;

select * from razas where idespecie = 2 order by nombre;
