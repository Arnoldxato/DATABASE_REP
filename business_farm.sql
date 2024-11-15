-- Active: 1729100343840@@127.0.0.1@3306@business_farm
CREATE TABLE FARMERS(
    FARMERID INT,
    FARMER_NAME VARCHAR(50),
    FARMER_ADDRESS VARCHAR(45),
    FARMER_NO VARCHAR(20),
    EMAIL VARCHAR(30),
    PRIMARY KEY(FARMERID)
);

CREATE TABLE FARM(
    FARMID INT,
    FARMERID INT,
    FARM_NAME VARCHAR(45),
    FARM_LOCATION VARCHAR(40),
    PRIMARY KEY(FARMID),
    FOREIGN KEY(FARMERID)REFERENCES FARMERS(FARMERID)
);

CREATE TABLE CROP(
    CROPID INT,
    CROP_NAME VARCHAR(40),
    CROP_TYPE VARCHAR(30),
    PRIMARY KEY(CROPID)
);

CREATE TABLE SEASON(
    SEASONID INT,
    SEASON_NAME VARCHAR(40),
    START_DATE DATE,
    END_DATE DATE,
    PRIMARY KEY(SEASONID)
);

CREATE TABLE HARVEST(
    HARVESTID INT,
    FARMID INT,
    CROPID INT,
    SEASONID INT,
    HARVEST_DATE DATE,
    YEILD DECIMAL(10,2),
    PRIMARY KEY(HARVESTID),
    FOREIGN KEY(FARMID) REFERENCES FARM(FARMID),
    FOREIGN KEY(CROPID)REFERENCES CROP(CROPID),
    Foreign Key (SEASONID) REFERENCES SEASON (SEASONID)
);
DESC FARMERS;

INSERT INTO FARMERS VALUES('001','SAMANTHA','MUKONO','0752310578','samantha@gmail.com'),
('002','MABLE','JINJA','0752224567','mablesfarm@gmail.com'),
('003','ARNOLD','KOLOLO','0778765478','arnoldsfarm@gmail.com'),
('004','MUYOBO','MUYENGA','0767865489','Muyobosfarm@gmail.com');
INSERT INTO FARM VALUES('110','001','MANTHAS_STOCKFARM','MUKONO'),
('111','002','MWIMAS_STOCKFARM','JINJA_NJERU'),
('112','003','ARNIS_STOCKFARM','KOLOLO'),
('113','004','TRIALI_FARMERS','MUYENGA');
INSERT INTO CROP VALUES('100','BANANA','FRUIT'),
('200','cabbage','vegatable'),
('300','maize','cereal'),
('400','BEANS','GRAIN');
INSERT INTO SEASON VALUES('1','WET','2007-1-21','2007-5-14'),
('2','DRY','2008-5-21','2008-10-14'),
('3','WET','2009-1-21','2009-5-14'),
('4','DRY','2010-1-21','2010-5-14');
INSERT INTO HARVEST VALUES('01','110','100','1','2007-12-1','1.2'),
('02','111','200','2','2008-12-1','3.2'),
('03','112','300','3','2009-12-1','6.2'),
('04','113','400','4','2010-12-1','9.2');
DESC SEASON;
SELECT * FROM farmers;
SELECT * FROM farm;
SELECT * FROM crop;
SELECT * FROM season; 
SELECT * FROM harvest;
 






