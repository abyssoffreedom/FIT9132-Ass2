/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T2-pat-insert.sql

--Student ID:35009411
--Student Name:Shuyang Yan

/* Comments for your marker:




*/

--------------------------------------
--INSERT INTO official
--------------------------------------
INSERT INTO OFFICIAL VALUES (
    1,
    'Heather',
    'Pineda',
    'FRA',
    NULL
);

INSERT INTO OFFICIAL VALUES (
    2,
    'Carol',
    'Rich',
    'USA',
    NULL
);

INSERT INTO OFFICIAL VALUES (
    3,
    'Sebastian',
    'Farmer',
    'USA',
    2
);

INSERT INTO OFFICIAL VALUES (
    4,
    'Blanca',
    'Mckenzie',
    'USA',
    2
);

INSERT INTO OFFICIAL VALUES (
    5,
    'Huey',
    'Trujillo',
    'ESP',
    NULL
);

INSERT INTO OFFICIAL VALUES (
    6,
    'Courtney',
    'Madden',
    'POR',
    NULL
);

INSERT INTO OFFICIAL VALUES (
    7,
    'Cecelia',
    'Chavez',
    'AUS',
    NULL
);

INSERT INTO OFFICIAL VALUES (
    8,
    'Arlen',
    'Hays',
    'AUS',
    7
);

INSERT INTO OFFICIAL VALUES (
    9,
    'Annmarie',
    'Randall',
    'AUS',
    7
);

INSERT INTO OFFICIAL VALUES (
    10,
    'Krystal',
    'Goodman',
    'GER',
    NULL
);

--------------------------------------
--INSERT INTO vehicle
--------------------------------------
INSERT INTO VEHICLE VALUES (
    'qwhgjnsutvdjnfru1',
    'AAAAAA1',
    TO_DATE('2022', 'yyyy'),
    11111,
    20,
    1
);

INSERT INTO VEHICLE VALUES (
    'ashgntjfugnvdhfl2',
    'BBBBBB2',
    TO_DATE('2023', 'yyyy'),
    22222,
    20,
    1
);

INSERT INTO VEHICLE VALUES (
    'nsjfwhdbfuydbwsh3',
    'CCCCCC3',
    TO_DATE('2022', 'yyyy'),
    33333,
    60,
    2
);

INSERT INTO VEHICLE VALUES (
    'bbbbbbbbbbbbbbbb4',
    'DDDDDD4',
    TO_DATE('2021', 'yyyy'),
    33333,
    60,
    2
);

INSERT INTO VEHICLE VALUES (
    'cccccccccccccccc5',
    'EEEEEE5',
    TO_DATE('2023', 'yyyy'),
    11111,
    60,
    3
);

INSERT INTO VEHICLE VALUES (
    'dddddddddddddddd6',
    'FFFFFF6',
    TO_DATE('2022', 'yyyy'),
    22222,
    60,
    3
);

INSERT INTO VEHICLE VALUES (
    'eeeeeeeeeeeeeeee7',
    'GGGGGG7',
    TO_DATE('2022', 'yyyy'),
    11111,
    40,
    4
);

INSERT INTO VEHICLE VALUES (
    'ffffffffffffffff8',
    'HHHHHH8',
    TO_DATE('2023', 'yyyy'),
    11111,
    40,
    4
);

INSERT INTO VEHICLE VALUES (
    'gggggggggggggggg9',
    'IIIIII9',
    TO_DATE('2024', 'yyyy'),
    11111,
    40,
    5
);

INSERT INTO VEHICLE VALUES (
    'hhhhhhhhhhhhhhh10',
    'JJJJJ10',
    TO_DATE('2024', 'yyyy'),
    11111,
    40,
    5
);

--------------------------------------
--INSERT INTO trip
--------------------------------------
INSERT INTO TRIP VALUES (
    1,
    18,
    TO_DATE('21/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    'qwhgjnsutvdjnfru1',
    2001,
    101,
    102,
    'fr',
    1
);

INSERT INTO TRIP VALUES (
    2,
    19,
    TO_DATE('21/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 14:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 14:30', 'dd/mm/yyyy hh24:mi'),
    'qwhgjnsutvdjnfru1',
    2002,
    111,
    113,
    'fr',
    1
);

INSERT INTO TRIP VALUES (
    3,
    20,
    TO_DATE('21/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('21/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    'ashgntjfugnvdhfl2',
    2003,
    101,
    102,
    'en',
    2
);

INSERT INTO TRIP VALUES (
    4,
    20,
    TO_DATE('24/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    'ashgntjfugnvdhfl2',
    2004,
    109,
    115,
    'en',
    2
);

INSERT INTO TRIP VALUES (
    5,
    35,
    TO_DATE('26/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 13:10', 'dd/mm/yyyy hh24:mi'),
    'nsjfwhdbfuydbwsh3',
    2006,
    104,
    106,
    'en',
    3
);

INSERT INTO TRIP VALUES (
    6,
    44,
    TO_DATE('27/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('27/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('27/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('27/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    'nsjfwhdbfuydbwsh3',
    2006,
    104,
    106,
    'en',
    4
);

INSERT INTO TRIP VALUES (
    7,
    55,
    TO_DATE('30/07/2024 11:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 11:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('30/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    'bbbbbbbbbbbbbbbb4',
    2007,
    114,
    101,
    'en',
    4
);

INSERT INTO TRIP VALUES (
    8,
    51,
    TO_DATE('29/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('29/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('29/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('29/07/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    'bbbbbbbbbbbbbbbb4',
    2005,
    108,
    106,
    'es',
    5
);

INSERT INTO TRIP VALUES (
    9,
    56,
    TO_DATE('28/07/2024 10:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 10:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 11:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('28/07/2024 11:30', 'dd/mm/yyyy hh24:mi'),
    'bbbbbbbbbbbbbbbb4',
    2005,
    104,
    117,
    'es',
    5
);

INSERT INTO TRIP VALUES (
    10,
    59,
    TO_DATE('25/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 15:30', 'dd/mm/yyyy hh24:mi'),
    'cccccccccccccccc5',
    2004,
    102,
    103,
    'pt',
    6
);

INSERT INTO TRIP VALUES (
    11,
    60,
    TO_DATE('25/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 10:15', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('25/07/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    'cccccccccccccccc5',
    2011,
    105,
    102,
    'en',
    7
);

INSERT INTO TRIP VALUES (
    12,
    48,
    TO_DATE('26/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('26/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    'cccccccccccccccc5',
    2013,
    106,
    112,
    'en',
    8
);

INSERT INTO TRIP VALUES (
    13,
    55,
    TO_DATE('1/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('1/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('1/08/2024 14:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('1/08/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    'dddddddddddddddd6',
    2015,
    112,
    105,
    'pt',
    6
);

INSERT INTO TRIP VALUES (
    14,
    25,
    TO_DATE('22/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 09:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    'eeeeeeeeeeeeeeee7',
    2003,
    113,
    105,
    'fr',
    1
);

INSERT INTO TRIP VALUES (
    15,
    28,
    TO_DATE('24/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 17:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 17:00', 'dd/mm/yyyy hh24:mi'),
    'eeeeeeeeeeeeeeee7',
    2014,
    114,
    106,
    'en',
    9
);

INSERT INTO TRIP VALUES (
    16,
    24,
    TO_DATE('23/07/2024 13:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 13:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 14:30', 'dd/mm/yyyy hh24:mi'),
    'ffffffffffffffff8',
    2007,
    107,
    108,
    'en',
    2
);

INSERT INTO TRIP VALUES (
    17,
    34,
    TO_DATE('22/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 09:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    'gggggggggggggggg9',
    2002,
    101,
    103,
    'en',
    3
);

INSERT INTO TRIP VALUES (
    18,
    33,
    TO_DATE('23/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('23/07/2024 15:00', 'dd/mm/yyyy hh24:mi'),
    'hhhhhhhhhhhhhhh10',
    2001,
    109,
    110,
    'en',
    4
);

INSERT INTO TRIP VALUES (
    19,
    39,
    TO_DATE('24/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 12:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 14:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('24/07/2024 14:30', 'dd/mm/yyyy hh24:mi'),
    'hhhhhhhhhhhhhhh10',
    2005,
    111,
    116,
    'es',
    5
);

INSERT INTO TRIP VALUES (
    20,
    40,
    TO_DATE('22/07/2024 09:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 08:30', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 10:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('22/07/2024 09:30', 'dd/mm/yyyy hh24:mi'),
    'hhhhhhhhhhhhhhh10',
    2001,
    101,
    103,
    'de',
    10
);

INSERT INTO TRIP VALUES (
    21,
    5,
    TO_DATE('5/08/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('5/08/2024 11:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('5/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('5/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    'dddddddddddddddd6',
    2015,
    115,
    116,
    'pt',
    6
);

INSERT INTO TRIP VALUES (
    22,
    48,
    TO_DATE('6/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('6/08/2024 12:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('6/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    TO_DATE('6/08/2024 13:00', 'dd/mm/yyyy hh24:mi'),
    'dddddddddddddddd6',
    2013,
    118,
    116,
    'en',
    8
);

COMMIT;