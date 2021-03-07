drop user if exists davide;
CREATE user davide WITH PASSWORD 'jw8s0F4';

revoke all privileges on public.bird from davide;
revoke all privileges on public.caretake_pet_ref from davide;
revoke all privileges on public.caretaker from davide;
revoke all privileges on public.cat from davide;
revoke all privileges on public.city from davide;
revoke all privileges on public.dog from davide;
revoke all privileges on public.fish from davide;
revoke all privileges on public.horse from davide;
revoke all privileges on public.pet from davide;
revoke all privileges on public.reptile from davide;
revoke all privileges on public.turtle from davide;
revoke all privileges on public.vet from davide;

grant select on pets to davide;
