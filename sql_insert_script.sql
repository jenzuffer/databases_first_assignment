delete from bird;
delete from cat;
delete from dog;
delete from fish;
delete from horse;
delete from reptile;
delete from turtle;
delete from caretake_pet_ref;
delete from pet;
delete from caretaker;
delete from vet;
delete from city;

CREATE OR REPLACE PROCEDURE INSERT_CAT (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    livecount INTEGER,
    caretaker_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_CAT AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) returning pet_id
  )
  INSERT INTO cat(cat_id, livecount) SELECT pet_id, livecount FROM NEW_CAT;
    insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;


CREATE OR REPLACE PROCEDURE INSERT_DOG (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    barkpitch INTEGER,
    caretaker_id INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_DOG AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO dog(dog_id, BarkPitch) SELECT pet_id, BarkPitch FROM NEW_DOG;
    insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;

CREATE OR REPLACE PROCEDURE INSERT_BIRD (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    singing_frequency INTEGER,
    caretaker_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_BIRD AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO bird(bird_id, singing_frequency) SELECT pet_id, singing_frequency FROM NEW_BIRD;
  insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;

CREATE OR REPLACE PROCEDURE INSERT_FISH (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    fresh_water INTEGER,
    caretaker_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_FISH AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO fish(fish_id, fresh_water) SELECT pet_id, fresh_water FROM NEW_FISH;
  insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;

CREATE OR REPLACE PROCEDURE INSERT_HORSE (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    popularity INTEGER,
    caretaker_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_HORSE AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO horse(horse_id, popularity) SELECT pet_id, popularity FROM NEW_HORSE;
  insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;

CREATE OR REPLACE PROCEDURE INSERT_REPTILE (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    egg_count INTEGER,
    caretaker_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_REPTILE AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO reptile(reptile_id, egg_count) SELECT pet_id, egg_count FROM NEW_REPTILE;
  insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;

CREATE OR REPLACE PROCEDURE INSERT_TURTLE (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    slowness INTEGER,
    caretaker_id integer
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_TURTLE AS(
    INSERT INTO pet(pet_id, name, age, pet_vet_id_ref) VALUES ((select COUNT(*) + 1 from pet), name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO turtle(turtle_id, slowness) SELECT pet_id, slowness FROM NEW_TURTLE;
  insert into caretake_pet_ref(caretaker_id, pet_id) values (caretaker_id, (select COUNT(*) from pet));
END; $$;



insert into city (zip_code, city_name ) values ('2600', 'glostrup');
insert into city (zip_code, city_name ) values ('2500', 'valby');


insert into vet (vet_id, cvr, name, phone, street, vet_zip_ref) values (1, '34000249405', 'dyrehospital glostrup', '9999324234', 
'dyrehospital vej 1', '2600');

insert into vet (vet_id, cvr, name, phone, street, vet_zip_ref) values (2, '34000246405', 'dyrehospital valby', '9395374234', 
'valbyvej 1', '2500');


insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (1, 'philip', '12234567', 'vejgade 1', '2600');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (2, 'jenny', '632783', 'vejgade 2', '2500');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (3, 'john', '23456', 'vejgade 3', '2500');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (4, 'johnny', '234435356', 'vejgade 3', '2600');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (5, 'thobias', '2423416', 'vejgade 5', '2500');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (6, 'emil', '234750934', 'vejgade 5', '2500');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (7, 'christian', '8234234', 'vejgade 15', '2600');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (8, 'johnsen', '2423416', 'tirolvej 5', '2600');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (9, 'becky', '2423416', 'kinavej 15', '2500');
insert into caretaker (caretaker_id, name, phone, street, caretaker_zip_ref ) values (10, 'fred', '42342431', 'hovedvej 7', '2600');


call INSERT_CAT ('felix', 3, 1, 5, 1);
call INSERT_CAT ('felix', 3, 1, 5, 2);
call INSERT_DOG('brotus', 5, 1, 8, 3);
call INSERT_BIRD('hans', 6, 2, '6', 5);
call INSERT_FISH('fish1', 2, 1, 3, 7);
call INSERT_HORSE('leena', 7, 2, 9, 4);
call INSERT_REPTILE('beera', 6, 2, 3, 5);
call INSERT_TURTLE('gustav', 25, 1, 6, 7);
call INSERT_CAT ('bravo', 3, 1, 5, 1);
call INSERT_CAT ('alpha', 3, 1, 5, 2);
call INSERT_CAT ('omega', 3, 1, 5, 1);
call INSERT_CAT ('per', 3, 1, 5, 2);
call INSERT_CAT ('coma', 3, 1, 5, 1);
call INSERT_CAT ('sprite', 3, 1, 5, 2);

