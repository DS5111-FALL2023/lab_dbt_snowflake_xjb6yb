
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select instructor
from terms_with_courses
WHERE Class_Code = 'DS5100'
AND Term_Name = 'Summer 2021'


/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
