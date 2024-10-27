-- Create petPet table
CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45) NOT NULL,
    species CHAR(1) CHECK (species IN ('M', 'F')),
    gender VARCHAR(15),
    birth DATE,
    death DATE
);

-- Create petEvent table
CREATE TABLE petEvent (
    petname VARCHAR(20),
    eventdate DATE NOT NULL,
    eventtype VARCHAR(25) NOT NULL,
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname),
    PRIMARY KEY (petname, eventdate)
    );