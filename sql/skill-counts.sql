-- Среди двух тестовых резюме найти те, где больше одного навыка.
-- Пример для самостоятельного выполнения; в прогоне не запускался.
SELECT resume_id, COUNT(*) AS skills_count
FROM public.skills
WHERE resume_id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
GROUP BY resume_id
HAVING COUNT(*) > 1
ORDER BY skills_count DESC, resume_id;
