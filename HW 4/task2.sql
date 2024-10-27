-- Insert new event for Fluffy
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Fluffy', '2020-10-15', 'vet', 'antibiotics');

-- Insert new event for Hammy, with details of Hammy if they aren't present in petPet
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Hammy', '2020-10-15', 'vet', 'antibiotics');

-- Fluffy has 5 kittens, 2 of which are male. Insert kitten data with unique names.
INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES ('Fluffy_kitten1', 'Owner of Fluffy', 'cat', 'F', '2020-10-20'),
       ('Fluffy_kitten2', 'Owner of Fluffy', 'cat', 'F', '2020-10-20'),
       ('Fluffy_kitten3', 'Owner of Fluffy', 'cat', 'M', '2020-10-20'),
       ('Fluffy_kitten4', 'Owner of Fluffy', 'cat', 'M', '2020-10-20'),
       ('Fluffy_kitten5', 'Owner of Fluffy', 'cat', 'F', '2020-10-20');

-- Record event of Claws breaking a rib on 1997-08-03
INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES ('Claws', '1997-08-03', 'injury', 'broke rib');

-- Update Puffball's death date
UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

-- Remove Harold’s dog from the database due to GDPR
DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';