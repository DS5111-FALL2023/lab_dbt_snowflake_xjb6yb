
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select Term_Name, Instructor, Count(*) as N
from terms_with_courses
GROUP BY Term_Name, Instructor
ORDER BY Term_Name, Instructor

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
