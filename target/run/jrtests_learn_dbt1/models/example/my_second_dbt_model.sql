

      create or replace transient table analytics.dbt.my_second_dbt_model  as
      (-- Use the `ref` function to select from other models

select *
from analytics.dbt.first_model_1
where id = 1
      );
    