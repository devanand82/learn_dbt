

      create or replace transient table analytics.dbt.dates  as
      (
select * from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."DATE_DIM"
where d_date <= CURRENT_DATE


      );
    