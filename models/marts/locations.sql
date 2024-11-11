with

locations as (

    select * from {{ ref('stg_locations') }}
    where location_id is not null

)

select * from locations
