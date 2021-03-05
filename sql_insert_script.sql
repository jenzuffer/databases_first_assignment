delete from bird;
delete from cat;
delete from dog;
delete from fish; 
delete from horse;
delete from reptile;
delete from turtle;
delete from caretake_pet_ref;
delete from pet;
delete from vet;
delete from caretaker;
delete from city;


CREATE OR REPLACE PROCEDURE INSERT_CAT (
    name VARCHAR,
    age INTEGER,
    pet_vet_id_ref integer,
    livecount INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
  WITH NEW_CAT AS(
    INSERT INTO pet(name, age, pet_vet_id_ref) VALUES (name, age, pet_vet_id_ref) RETURNING pet_id
  )
  INSERT INTO cat(cat_id, livecount) SELECT pet_id, livecount FROM NEW_CAT;
END; $$;

insert into city (zip_code, city_name ) values ('2600', 'glostrup');

insert into vet (cvr, name, phone, street, vet_zip_ref) values ('34000249405', 'dyrehospital glostrup', '9999324234', 
'dyrehospital vej 1', '2600');

call INSERT_CAT ('felix', 3, 1, 5);


