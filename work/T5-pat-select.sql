/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T5-pat-select.sql

--Student ID:35009411
--Student Name:Shuyang Yan


/* Comments for your marker:
In question b, assuming that a trip must actually start and end within the same day.



*/


/* (a) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    L.LOCN_ID,
    LOCN_NAME,
    LOCN_ADDRESS,
    LOCNTYPE_DESCRIPTION,
    NVL(PICKUP_COUNT, 0) + NVL(DROPOFF_COUNT, 0) AS "PICKUP/DROPOFF_COUNT"
FROM
    LOCATION      L
    NATURAL JOIN LOCATION_TYPE
    LEFT OUTER JOIN (
        SELECT
            PICKUP_LOCN_ID AS LOCN_ID,
            COUNT(*)       AS PICKUP_COUNT
        FROM
            TRIP
        WHERE
            TRIP_ACT_DROPOFFDT IS NOT NULL
        GROUP BY
            PICKUP_LOCN_ID
    ) P
    ON L.LOCN_ID = P.LOCN_ID
    LEFT OUTER JOIN (
        SELECT
            DROPOFF_LOCN_ID AS LOCN_ID,
            COUNT(*)        AS DROPOFF_COUNT
        FROM
            TRIP
        WHERE
            TRIP_ACT_DROPOFFDT IS NOT NULL
        GROUP BY
            DROPOFF_LOCN_ID
    ) D
    ON L.LOCN_ID = D.LOCN_ID
ORDER BY
    "PICKUP/DROPOFF_COUNT" DESC,
    LOCN_ID;

/* (b) */
-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT FOR THIS PART HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
    DRIVER_ID,
    TRIM(DRIVER_GIVEN
         || ' '
         || DRIVER_FAMILY)                                                   AS FULLNAME,
    NVL(LPAD(TO_CHAR(SUM(PAYMENT_A_TRIP), '$9990.99'), 20, ' '), 'No Trips') AS TOTAL_PERIOD_PAYMENT
FROM
    DRIVER
    LEFT OUTER JOIN (
        SELECT
            DRIVER_ID,
            (TRIP_ACT_DROPOFFDT - TRIP_ACT_PICKUPDT) * 24 * 45.42 AS PAYMENT_A_TRIP
        FROM
            TRIP
        WHERE
            TRIP_ACT_DROPOFFDT BETWEEN TO_DATE('01/08/2024', 'dd/mm/yyyy') AND TO_DATE('07/08/2024', 'dd/mm/yyyy')
    )
    USING (DRIVER_ID)
GROUP BY
    DRIVER_ID,
    DRIVER_GIVEN
    || ' '
    || DRIVER_FAMILY
ORDER BY
    DRIVER_ID;