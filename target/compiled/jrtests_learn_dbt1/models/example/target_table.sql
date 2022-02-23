

with raw_join_transform as (select * from analytics.dbt.raw_join_transform),
dailyrun as
(
  select md5(cast(coalesce(cast(raw_join_transform.c_custkey as 
    varchar
), '') || '-' || coalesce(cast(raw_join_transform.nation as 
    varchar
), '') as 
    varchar
)) shakey_raw,
  raw_join_transform.* from raw_join_transform
)

select * from dailyrun

