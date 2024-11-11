with

locations as (

    select * from {{ ref('stg_locations') }}
    limit 100

)

select * from locations
