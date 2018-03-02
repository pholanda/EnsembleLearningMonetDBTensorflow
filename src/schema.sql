--DO
START TRANSACTION;
CREATE TABLE image_class (
    id integer NOT NULL PRIMARY KEY,
    label varchar(30) NOT NULL
);

CREATE TABLE image_superclass (
    id integer NOT NULL PRIMARY KEY,
    label varchar(30) NOT NULL
);


CREATE TABLE cifar100 (
    data BLOB NOT NULL,
    class INTEGER NOT NULL,
    superclass INTEGER NOT NULL,
    train BOOLEAN NOT NULL
);


CREATE TABLE classificationmodel (
    id integer NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(120) NOT NULL,
    model_path varchar(120) NOT NULL, #Future BLOB
    batch_size integer not null ,
    learning_rate float not null, 
    epoch integer not null 
);

COMMIT;


-- DROP TABLE classification;
-- DROP TABLE classificationmodel;
-- DROP TABLE trainset;
-- DROP TABLE cifar100;