SELECT
    location_id,
    street_address,
    city,
    state_province,
    country_name
FROM
    locations
    INNER JOIN countries ON locations.country_id = countries.country_id
;