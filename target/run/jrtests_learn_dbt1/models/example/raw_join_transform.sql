
  create or replace  view analytics.dbt.raw_join_transform  as (
    
with orders_data as( select * from analytics.dbt.orders_data),
raw_data as ( select * from analytics.dbt.raw_data),
transform as
(
  select c.C_CUSTKEY,c.C_NAME,c.C_NATIONKEY as nation,
  c.r_loaddate, o.o_loaddate,
sum(o.o_totalprice) as total_order_price,
current_timestamp() as load_date
from
raw_data c
LEFT JOIN   orders_data o
on c.c_custkey = o.o_custkey
group by c.C_CUSTKEY,c.C_NAME,c.C_NATIONKEY,c.r_loaddate, o.o_loaddate
)
select * from transform
  );
