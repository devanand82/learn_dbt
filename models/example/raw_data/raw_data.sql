{{ config(materialized='view') }}

select *, current_timestamp() as r_loaddate from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
