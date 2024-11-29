/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T3-pat-dml.sql

--Student ID:35009411
--Student Name:Shuyang Yan

/* Comments for your marker:
In question d, assuming that a driver cannot skip a trip booking among all bookings allocated to him. 
And he must complete the bookings sequentially.
For example, if a driver has not completed a booking at 10AM, he cannot start any booking after 10AM.
And also a driver cannot be booked during another booking. He can only be assigned after actually arriving at a drop place.


*/

/*(a)*/
DROP SEQUENCE OFF_ID_SEQ;

DROP SEQUENCE TRIP_ID_SEQ;

CREATE SEQUENCE OFF_ID_SEQ START WITH 100 INCREMENT BY 10;

CREATE SEQUENCE TRIP_ID_SEQ START WITH 100 INCREMENT BY 10;

/*(b)*/
INSERT INTO OFFICIAL VALUES (
    OFF_ID_SEQ.NEXTVAL,
    'Franklin',
    'Gateau',
    ( SELECT CR_IOC_CODE FROM COUNTRY_REGION WHERE UPPER(CR_NAME) = UPPER('St Vincent and the Grenadines') ),
    NULL
);

INSERT INTO VEHICLE VALUES (
    '1C4SDHCT9FC614231',
    'ZZZZZZZ',
    TO_DATE('2022', 'yyyy'),
    11111,
    6,
    ( SELECT VM_MODEL_ID FROM VEHICLE_MODEL WHERE UPPER(VM_MODEL) = UPPER('ALPHARD') AND MAN_ID = ( SELECT MAN_ID FROM MANUFACTURER WHERE UPPER(MAN_NAME) = UPPER('TOYOTA') ) )
);

COMMIT;

/*(c)*/
INSERT INTO TRIP VALUES (
    TRIP_ID_SEQ.NEXTVAL,
    6,
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi') + 1/24 + 30/(24*60),
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi') + 1/24 + 30/(24*60),
    '1C4SDHCT9FC614231',
    ( SELECT DRIVER_ID FROM DRIVER WHERE UPPER(DRIVER_LICENCE) = UPPER('55052a543210') ),
    ( SELECT LOCN_ID FROM LOCATION WHERE UPPER(LOCN_NAME) = UPPER('Olympic and Paralympic Village') ),
    ( SELECT LOCN_ID FROM LOCATION WHERE UPPER(LOCN_NAME) = UPPER('Porte de la Chapelle Arena') ),
    ( SELECT LANG_ISO_CODE FROM LANGUAGE WHERE UPPER(LANG_NAME) = UPPER('English') ),
    OFF_ID_SEQ.CURRVAL
);

INSERT INTO TRIP VALUES (
    TRIP_ID_SEQ.NEXTVAL,
    6,
    TO_DATE('30/07/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 20:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 20:00', 'dd/mm/yyyy hh24:mi') + 1/24 + 15/(24*60),
    TO_DATE('30/07/2024 20:00', 'dd/mm/yyyy hh24:mi') + 1/24 + 15/(24*60),
    '1C4SDHCT9FC614231',
    ( SELECT DRIVER_ID FROM DRIVER WHERE UPPER(DRIVER_LICENCE) = UPPER('55052a543210') ),
    ( SELECT LOCN_ID FROM LOCATION WHERE UPPER(LOCN_NAME) = UPPER('Porte de la Chapelle Arena') ),
    ( SELECT LOCN_ID FROM LOCATION WHERE UPPER(LOCN_NAME) = UPPER('Olympic and Paralympic Village') ),
    ( SELECT LANG_ISO_CODE FROM LANGUAGE WHERE UPPER(LANG_NAME) = UPPER('English') ),
    OFF_ID_SEQ.CURRVAL
);

COMMIT;

/*(d)*/
UPDATE TRIP
SET
    TRIP_ACT_PICKUPDT = TO_DATE(
        '30/07/2024 12:30',
        'dd/mm/yyyy hh24:mi'
    ),
    TRIP_ACT_DROPOFFDT = TO_DATE(
        '30/07/2024 12:30',
        'dd/mm/yyyy hh24:mi'
    ) + 1/24 + 45/(
        24*60
    )
WHERE
    TO_CHAR(TRIP_INT_PICKUPDT, 'dd/mm/yyyy hh24:mi') = '30/07/2024 12:30'
    AND TO_CHAR(TRIP_INT_DROPOFFDT - 1/24 - 30/(24*60), 'dd/mm/yyyy hh24:mi') = '30/07/2024 12:30'
    AND VEH_VIN = '1C4SDHCT9FC614231'
    AND DRIVER_ID = (
        SELECT
            DRIVER_ID
        FROM
            DRIVER
        WHERE
            UPPER(DRIVER_LICENCE) = UPPER('55052a543210')
    );

UPDATE TRIP
SET
    TRIP_ACT_PICKUPDT = NULL,
    TRIP_ACT_DROPOFFDT = NULL
WHERE
    TO_CHAR(TRIP_INT_PICKUPDT, 'dd/mm/yyyy hh24:mi') = '30/07/2024 20:00'
    AND TO_CHAR(TRIP_INT_DROPOFFDT - 1/24 - 15/1440, 'dd/mm/yyyy hh24:mi') = '30/07/2024 20:00'
    AND VEH_VIN = '1C4SDHCT9FC614231'
    AND DRIVER_ID = (
        SELECT
            DRIVER_ID
        FROM
            DRIVER
        WHERE
            UPPER(DRIVER_LICENCE) = UPPER('55052a543210')
    );

COMMIT;

DELETE FROM TRIP
WHERE
    DRIVER_ID = (
        SELECT
            DRIVER_ID
        FROM
            DRIVER
        WHERE
            UPPER(DRIVER_LICENCE) = UPPER('55052a543210')
    )
    AND TRIP_INT_PICKUPDT > TO_DATE('30/07/2024 17:00', 'dd/mm/yyyy hh24:mi')
    AND TRIP_INT_PICKUPDT < TO_DATE('31/07/2024 00:00', 'dd/mm/yyyy hh24:mi');

COMMIT;