
  create or replace  view analytics.dbt.orders  as (
    
select * from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
  );
