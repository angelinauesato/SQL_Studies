/*
    Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
    The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

    Note: Print NULL when there are no more names corresponding to an occupation.
*/

SELECT occupation from occupations
group by occupation;
/*
Output: 
    Professor

    Actor

    Doctor

    Singer

*/

select
    Doctor,
    Professor,
    Singer,
    Actor
from(
    select
        NamesInOrder,
        max(case occupation when 'Doctor' then name end) as Doctor,
        max(case occupation when 'Professor' then name end) as Professor,
        max(case occupation when 'Singer' then name end) as Singer,
        max(case occupation when 'Actor' then name end) as Actor
    from(
            select
                occupation,
                name,
                row_number() over(partition by occupation order by name ASC) as NamesInOrder
            from occupations
         ) as List
    group by NamesInOrder
) as Names