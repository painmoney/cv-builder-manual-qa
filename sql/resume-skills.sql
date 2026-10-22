-- Навыки выбранного резюме; LEFT JOIN сохраняет строку и без навыков.
-- Пример для самостоятельного выполнения; в прогоне не запускался.
SELECT r.id, r.title, s.skill_name, s.level
FROM public.resumes AS r
LEFT JOIN public.skills AS s ON s.resume_id = r.id
WHERE r.id = '5f67b6fd-a2c3-4fc2-a331-040f2a825665'
ORDER BY s.skill_name;
