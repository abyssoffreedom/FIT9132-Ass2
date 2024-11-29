/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T4-pat-mods.sql

--Student ID:35009411
--Student Name:Shuyang Yan


/* Comments for your marker:
In question a, I assume that the rule, 'The Chef de Mission of each country must be assigned an Administrator role',
also works when inserting new cdms into the table.



*/

/*(a)*/
ALTER TABLE OFFICIAL
    ADD (
        OFF_ROLE CHAR(1),
        CONSTRAINT CHK_OFF_ROLE CHECK (
            (OFF_CDM IS NOT NULL AND OFF_ROLE IN ('G', 'A', 'H', 'C', 'P'))
            OR (OFF_CDM IS NULL AND OFF_ROLE = 'A')
            )
    );

COMMENT ON COLUMN official.off_role IS
    'Role of an official. G for General. A for Administratior. H for Head Coach. C for Coach. P for Phisician';

UPDATE OFFICIAL
SET
    OFF_ROLE = 'G'
WHERE
    OFF_CDM IS NOT NULL;

UPDATE OFFICIAL
SET
    OFF_ROLE = 'A'
WHERE
    OFF_CDM IS NULL;

COMMIT;

ALTER TABLE OFFICIAL MODIFY OFF_ROLE DEFAULT 'G' NOT NULL;

SELECT
    OFF_CDM,
    OFF_ROLE
FROM
    OFFICIAL;

desc official;

/*(b)*/
DROP TABLE COMPLAINT CASCADE CONSTRAINTS PURGE;

DROP TABLE COMPLAINT_CATEGORY CASCADE CONSTRAINTS PURGE;

CREATE TABLE COMPLAINT (
    CPLT_ID NUMBER(6) NOT NULL,
    TRIP_ID NUMBER(4) NOT NULL,
    CPLT_DATE DATE NOT NULL,
    CPLT_CTG_ID NUMBER(2) NOT NULL,
    CPLT_COMMENT VARCHAR2(150) NOT NULL,
    CPLT_FLAG CHAR(1)
);

COMMENT ON COLUMN COMPLAINT.CPLT_ID IS
    'Identifier for a complaint.';

COMMENT ON COLUMN COMPLAINT.TRIP_ID IS
    'Identifier for a trip.';

COMMENT ON COLUMN COMPLAINT.CPLT_DATE IS
    'Date and time for the complaint.';

COMMENT ON COLUMN COMPLAINT.CPLT_CTG_ID IS
    'Identifier for a category of a complaint.';

COMMENT ON COLUMN COMPLAINT.CPLT_COMMENT IS
    'Detailed comment for a complaint.';

COMMENT ON COLUMN COMPLAINT.CPLT_FLAG IS
    'Flag for whether a complaint is valid or not. V for valid and I for invalid.';

ALTER TABLE COMPLAINT
    ADD (
        CONSTRAINT COMPLAINT_PK PRIMARY KEY ( CPLT_ID ),
        CONSTRAINT COMPLAINT_UQ UNIQUE ( TRIP_ID, CPLT_DATE ),
        CONSTRAINT CHK_CPLT_FLAG CHECK ( CPLT_FLAG IN ('V', 'I'))
    );

CREATE TABLE COMPLAINT_CATEGORY (
    CPLT_CTG_ID NUMBER(2) NOT NULL,
    CPLT_CTG_NAME VARCHAR2(30) NOT NULL,
    CPLT_CTG_DM_POINT NUMBER(2) NOT NULL
);

COMMENT ON COLUMN COMPLAINT_CATEGORY.CPLT_CTG_ID IS
    'Identifier for a category of a complaint.';

COMMENT ON COLUMN COMPLAINT_CATEGORY.CPLT_CTG_NAME IS
    'Name for a category of a complaint.';

COMMENT ON COLUMN COMPLAINT_CATEGORY.CPLT_CTG_DM_POINT IS
    'Demerit point for a category of a complaint.';

ALTER TABLE COMPLAINT_CATEGORY
    ADD (
        CONSTRAINT COMPLAINT_CATEGORY_PK PRIMARY KEY ( CPLT_CTG_ID ),
        CONSTRAINT COMPLAINT_CATEGORY_UQ UNIQUE ( CPLT_CTG_NAME )
    );



ALTER TABLE COMPLAINT
    ADD (
        CONSTRAINT TRIP_COMPLAINT_FK FOREIGN KEY ( TRIP_ID ) REFERENCES TRIP ( TRIP_ID ),
        CONSTRAINT COMPLAINT_CATEGORY_COMPLAINT_FK FOREIGN KEY ( CPLT_CTG_ID ) REFERENCES COMPLAINT_CATEGORY ( CPLT_CTG_ID )
    );




INSERT INTO COMPLAINT_CATEGORY VALUES (
    1,
    'late arrival',
    1
);

INSERT INTO COMPLAINT_CATEGORY VALUES (
    2,
    'rude behaviour',
    2
);

INSERT INTO COMPLAINT_CATEGORY VALUES (
    3,
    'poor driving',
    2
);

INSERT INTO COMPLAINT_CATEGORY VALUES (
    4,
    'failing to assist',
    1
);

COMMIT;

SELECT
    *
FROM
    COMPLAINT_CATEGORY;

desc complaint;

desc COMPLAINT_CATEGORY;