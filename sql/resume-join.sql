select r.id,r.title,r.revision,r.data->'profile'->>'name' as profile_name,
count(distinct s.id) as skills_count,count(distinct e.id) as education_count,count(distinct x.id) as experience_count,count(distinct m.id) as projects_count
from public.resumes r
left join public.skills s on s.resume_id=r.id
left join public.education e on e.resume_id=r.id
left join public.experience x on x.resume_id=r.id
left join public.manual_projects m on m.resume_id=r.id
where r.id in ('5f67b6fd-a2c3-4fc2-a331-040f2a825665','297df9da-7e02-43e3-9831-07f8e5ba2744')
group by r.id,r.title,r.revision,r.data
order by r.title;
