{{ config(materialized='view') }}
select *, current_timestamp() as o_loaddate from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
