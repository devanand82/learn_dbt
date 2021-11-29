-- Use the `ref` function to select from other models

select *
from analytics.dbt.first_model_1
where id = 1