create table if not exists public.city(zip_code varchar primary key, city_name varchar not null);

create table if not exists public.caretaker(caretaker_id integer primary key, name varchar not null, phone varchar not null, 
street varchar not null, caretaker_zip_ref varchar references city);

create table if not exists public.vet(vet_id integer primary key, cvr varchar not null, name varchar not null, 
phone varchar not null, street varchar not null,
    vet_zip_ref varchar references city);

create table if not exists public.Pet(pet_id integer primary key, name varchar not null, age int not null, 
pet_vet_id_ref integer references vet);

create table if not exists public.caretake_pet_ref(caretaker_id integer references caretaker, pet_id integer references pet);

create table if not exists public.Cat(cat_id integer references pet, livecount integer not null);

create table if not exists public.Dog(dog_id integer references pet, BarkPitch integer not null);

create table if not exists public.Horse(horse_id integer references pet, popularity integer not null);

create table if not exists public.Fish(fish_id integer references pet, fresh_water integer not null);

create table if not exists public.Bird(bird_id integer references pet, singing_frequency varchar not null);

create table if not exists public.Turtle(turtle_id integer references pet, slowness integer not null);

create table if not exists public.Reptile(reptile_id integer references pet, egg_count integer not null);
