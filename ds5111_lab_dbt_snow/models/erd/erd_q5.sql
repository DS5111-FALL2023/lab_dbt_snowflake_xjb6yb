
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select class_code
from course_info
LEFT JOIN learning_outcomes
ON course_info.class_code = learning_outcomes.COURSE_CODE
HAVING COUNT(learning_outcomes.LEARNING_OUTCOME) = 0


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
