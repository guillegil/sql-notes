ALTER TABLE
    "country"
ADD
    CHECK (surfacearea >= 0);


ALTER TABLE
    "country"
ADD
    CHECK (
        "continent" IN (
            'Asia',
            'Europe',
            'Africa',
            'South America',
            'North America',
            'Oceania',
            'Antarctica'
        )
    )