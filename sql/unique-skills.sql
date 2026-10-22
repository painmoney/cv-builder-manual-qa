-- Список названий навыков без повторов в двух тестовых резюме.
-- Пример для самостоятельного выполнения; в прогоне не запускался.
SELECT DISTINCT skill_name
FROM public.skills
WHERE resume_id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
ORDER BY skill_name;
