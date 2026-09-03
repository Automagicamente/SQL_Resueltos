DROP DATABASE IF EXISTS sql_key;

CREATE DATABASE sql_key;

USE sql_key;

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    usuario_id INT,
    FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id)
        ON DELETE CASCADE
        /* ON DELETE SET NULL */
        /* ON DELETE RESTRICT */
);

INSERT INTO usuarios VALUES
(1, 'Juan'),
(2, 'Ana'),
(3, 'Carlos'),
(4, 'María');

INSERT INTO pedidos VALUES
(101, 1),
(102, 1),
(103, 1),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 3),
(109, 3),
(110, 3),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4);

SELECT * FROM productos;
SELECT * FROM usuarios;
