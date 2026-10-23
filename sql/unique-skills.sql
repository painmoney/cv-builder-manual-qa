-- Список названий навыков без повторов в двух тестовых резюме.
SELECT DISTINCT skill_name
FROM public.skills
WHERE resume_id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
ORDER BY skill_name;

-- Выполнено 23.10.2026, 00:03 UTC, staging jerwfvhpoanoukxiyvwq.
-- Через SQL-подключение Supabase; запрос завершился без ошибок.
-- Результат (1 строк):
-- [
--   {
--     "skill_name": "React"
--   }
-- ]
