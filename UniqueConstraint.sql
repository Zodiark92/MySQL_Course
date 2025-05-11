USE test;

DESCRIBE pets;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE(species);

ALTER TABLE pets
DROP index u_species;