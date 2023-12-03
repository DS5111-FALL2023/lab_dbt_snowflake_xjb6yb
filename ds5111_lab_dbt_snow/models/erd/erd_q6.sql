
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select learning_outcomes.COURSE_CODE, course_info.course_name, learning_outcomes.LEARNING_OUTCOME
from course_info
LEFT JOIN learning_outcomes
ON course_info.class_code =  learning_outcomes.COURSE_CODE
WHERE learning_outcomes.LEARNING_OUTCOME LIKE '%SQL%' 
OR learning_outcomes.LEARNING_OUTCOME LIKE 'SQL%' 
OR learning_outcomes.LEARNING_OUTCOME LIKE '%SQL' 


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
