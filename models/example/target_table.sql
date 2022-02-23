{{ config(materialized='incremental', transient=false, unique_key='shakey_raw') }}

with raw_join_transform as (select * from {{ ref('raw_join_transform')}}),
dailyrun as
(
  select {{ dbt_utils.surrogate_key(['raw_join_transform.c_custkey','raw_join_transform.nation'])}} shakey_raw,
  raw_join_transform.* from raw_join_transform
)

select * from dailyrun

{% if is_incremental() %}

  where greatest(r_loaddate,o_loaddate) > (select max(load_date) from {{this}})

{% endif %}
