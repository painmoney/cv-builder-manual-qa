-- Два синтетических документа: поля и число связанных записей. Только SELECT.
SELECT
    r.id,
    r.title,
    r.revision,
    r.data->'profile'->>'name' AS profile_name,
COUNT(DISTINCT s.id) AS skills_count,
    COUNT(DISTINCT e.id) AS education_count,
    COUNT(DISTINCT x.id) AS experience_count,
    COUNT(DISTINCT m.id) AS projects_count
FROM public.resumes r
LEFT JOIN public.skills s ON s.resume_id = r.id
LEFT JOIN public.education e ON e.resume_id = r.id
LEFT JOIN public.experience x ON x.resume_id = r.id
LEFT JOIN public.manual_projects m ON m.resume_id = r.id
WHERE r.id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
GROUP BY r.id,
    r.title,
    r.revision,
    r.data
ORDER BY r.title;
