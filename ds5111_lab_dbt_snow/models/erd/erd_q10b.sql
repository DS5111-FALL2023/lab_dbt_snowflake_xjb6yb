
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select class_code, Term_Name, Instructor
from terms_with_courses
WHERE Instructor NOT IN ('Raf Alvarado', 'Teague Henry')
GROUP BY class_code, Term_Name, Instructor
HAVING COUNT(Instructor) > 1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
