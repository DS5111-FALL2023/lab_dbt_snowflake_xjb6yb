
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select COURSE_CODE, Term_Name
from terms_with_courses
GROUP BY COURSE_CODE, Term_Name
HAVING COUNT(Instructor) > 1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null