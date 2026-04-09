{{ config(materialized='custom_mat') }}

select
  1 as id,
  'core works' as status