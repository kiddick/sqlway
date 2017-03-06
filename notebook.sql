sqlite> .mode column
sqlite> .heders on

CREATE TABLE proglang_tbl (id INTEGER, language VARCHAR(20), author VARCAHR(25), year INTEGER);

INSERT INTO proglang_tbl VALUES (1, 'Fortran', 'Backus', 1955);
INSERT INTO proglang_tbl VALUES (2, 'Lisp', 'McCarthy', 1958);
INSERT INTO proglang_tbl VALUES (3, 'Cobol', 'Hopper', 1959);

SELECT * FROM proglang_tbl;

CREATE TABLE proglang_tblcopy (id INTEGER NOT NULL, LANGUAGE VARCHAR(20) NOT NULL, author VARCAHR(25) NOT NULL, YEAR INTEGER NOT NULL, standard VARCAHR(10) NULL);

INSERT INTO proglang_tblcopy (id, language, author, year, standard) VALUES (1, 'Prolog', 'Colmerauer', '1972', 'ISO');
INSERT INTO proglang_tblcopy (id, language, author, year) VALUES (2, 'Perl', 'Wall', '1972');
INSERT INTO proglang_tblcopy (id, year, standard, language, author) VALUES (3, '1964', 'ANSI', 'APL', 'Iverson');

SELECT * FROM proglang_tblcopy;



CREATE TABLE proglang_tbltmp (id INTEGER NOT NULL PRIMARY KEY, LANGUAGE VARCHAR(20) NOT NULL, author VARCAHR(25) NOT NULL, YEAR INTEGER NOT NULL, standard VARCAHR(10) NULL);

CREATE TABLE proglang_tbluk (id INTEGER NOT NULL PRIMARY KEY, LANGUAGE VARCHAR(20) NOT NULL UNIQUE, author VARCAHR(25) NOT NULL, YEAR INTEGER NOT NULL, standard VARCAHR(10) NULL);

DROP TABLE proglang_tbl;
DROP TABLE proglang_tblcopy;
DROP TABLE proglang_tbltmp;