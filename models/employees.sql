with calc_employees as(
select
date_part_year(current_date) - date_part_year(birth_date) as age,
date_part_year(current_date) - date_part_year(hire_date) as lenghtofservice,
first_name || ' ' || last_name as full_name, *
from {{source('sources', 'employees')}}
)

select * from calc_employees