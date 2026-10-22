-- Проверка отсутствия родителя и зависимостей после пользовательского DELETE.
-- Исторический временный UUID; для воспроизведения использовать новый.
SELECT 'resumes' AS relation, COUNT(*) AS remaining
FROM public.resumes
WHERE id = '7b4193bb-cc14-4a37-ba5f-0d7777db13a0'
UNION ALL
SELECT 'skills', COUNT(*)
FROM public.skills
WHERE resume_id = '7b4193bb-cc14-4a37-ba5f-0d7777db13a0'
UNION ALL
SELECT 'education', COUNT(*)
FROM public.education
WHERE resume_id = '7b4193bb-cc14-4a37-ba5f-0d7777db13a0'
UNION ALL
SELECT 'experience', COUNT(*)
FROM public.experience
WHERE resume_id = '7b4193bb-cc14-4a37-ba5f-0d7777db13a0'
UNION ALL
SELECT 'manual_projects', COUNT(*)
FROM public.manual_projects
WHERE resume_id = '7b4193bb-cc14-4a37-ba5f-0d7777db13a0';
