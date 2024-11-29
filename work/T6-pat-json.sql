/*****PLEASE ENTER YOUR DETAILS BELOW*****/
--T6-pat-json.sql

--Student ID:35009411
--Student Name:Shuyang Yan


/* Comments for your marker:




*/

-- PLEASE PLACE REQUIRED SQL SELECT STATEMENT TO GENERATE
-- THE COLLECTION OF JSON DOCUMENTS HERE
-- ENSURE that your query is formatted and has a semicolon
-- (;) at the end of this answer
SELECT
        JSON_OBJECT(
            '_id' VALUE DRIVER_ID,
                    'name' VALUE TRIM(DRIVER_GIVEN
                                      || ' '
                                      || DRIVER_FAMILY),
                    'licence_num' VALUE DRIVER_LICENCE,
                    'no_of_trips' VALUE COUNT(T.TRIP_ACT_DROPOFFDT),
                    'suspended' VALUE DRIVER_SUSPENDED,
                    'trips_info' VALUE JSON_ARRAYAGG(
                JSON_OBJECT(
                    'trip_id' VALUE T.TRIP_ID,
                            'veh_vin' VALUE VEH_VIN,
                            'pick-up' VALUE
                        JSON_OBJECT(
                            'location_id' VALUE T.PICKUP_LOCN_ID,
                                    'location_name' VALUE L1.LOCN_NAME,
                                    'intended_datetime' VALUE TO_CHAR(T.TRIP_INT_PICKUPDT, 'dd/mm/yyyy hh24:mi'),
                                    'actual_datetime' VALUE TO_CHAR(T.TRIP_ACT_PICKUPDT, 'dd/mm/yyyy hh24:mi')
                        ),
                            'drop off' VALUE
                        JSON_OBJECT(
                            'location_id' VALUE T.DROPOFF_LOCN_ID,
                                    'location_name' VALUE L2.LOCN_NAME,
                                    'intended_datetime' VALUE TO_CHAR(T.TRIP_INT_DROPOFFDT, 'dd/mm/yyyy hh24:mi'),
                                    'actual_datetime' VALUE TO_CHAR(T.TRIP_ACT_DROPOFFDT, 'dd/mm/yyyy hh24:mi')
                        )
                )
            )
        FORMAT JSON)
        || ','
FROM
         DRIVER
    NATURAL JOIN TRIP     T
    JOIN LOCATION L1 ON T.PICKUP_LOCN_ID = L1.LOCN_ID
    JOIN LOCATION L2 ON T.DROPOFF_LOCN_ID = L2.LOCN_ID
WHERE
    DRIVER_ID IN (
        SELECT
            DRIVER_ID
        FROM
            TRIP
        WHERE
            TRIP_ACT_DROPOFFDT IS NOT NULL
    )
GROUP BY
    DRIVER_ID,
    DRIVER_GIVEN
    || ' '
    || DRIVER_FAMILY,
    DRIVER_LICENCE,
    DRIVER_SUSPENDED
ORDER BY
    DRIVER_ID;