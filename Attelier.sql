create database kaamelott;


DROP table knight if not exist;
CREATE TABLE knight (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(80),
        age INT
    );
insert into knight  (name, age) values ('Arthur ', 40); //Arthur 40ans

insert into knight  (name, age) values ('Perceval ', 40); //Perceval 35 ans

insert into knight  (name, age) values ('Lancelot' , 38); //Lancelot 38 ans
update into knight ( age) values (36) where name="Perceval";


UPDATE knight SET age = 36  WHERE id = 2;
update knight set name="Perceval" wher i=2 ;
delete from knight where id=3;
-----------------------------------------------------
//Créer la table weapon
//- id INT (clé primaire, autoincrémentée)
//- name VARCHAR(50)

create table weapon(id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, name VARCHAR(50) );

-----------------------------------------------------
//inserte weapon la table weapon
INSERT INTO weapon (name)
    VALUES
    ('épée'), ('arc'),('lance'), ('catapulte');

//Ajoute, modifie, supprime des armes (ex : épée, arc, lance, catapulte...)
    UPDATE weapon set name = 'bazzooca' where id = 2;
    DELETE FROM weapon where id = 3 ;

//Ajoute, modifie, supprime des chevaliers
    INSERT INTO knight (name,age) VALUES('Cyril',56);

//Affiche uniquement les chevaliers de plus de 37 ans (SELECT)
    SELECT * FROM knight WHERE age > 37;

//Affiche les chevaliers avec une certaine arme (INNER JOIN)
    SELECT knight.name, weapon.name
    FROM knight
    INNER JOIN weapon ON knight.id = weapon.id