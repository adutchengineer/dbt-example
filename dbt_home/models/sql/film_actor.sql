{{ config(
    materialized='table'
) }}

with source as (

    select * from {{ source('dvdrental', 'film_actor') }}

),

renamed as (

    select
        actor_id,
        film_id,
        last_update

    from source

)

select * from renamed