
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select LO.class_code, CI.course_name, LO.LEARNING_OUTCOME
from course_info CI
LEFT JOIN learning_outcomes LO
ON CI.class_code =  LO.COURSE_CODE
WHERE LO.LEARNING_OUTCOME LIKE '%SQL%' 
OR LO.LEARNING_OUTCOME LIKE 'SQL%' 
OR LO.LEARNING_OUTCOME LIKE '%SQL' 


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
