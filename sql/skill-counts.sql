-- Посчитать навыки двух тестовых резюме и показать те, у которых есть навыки.
SELECT resume_id, COUNT(*) AS skills_count
FROM public.skills
WHERE resume_id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
GROUP BY resume_id
HAVING COUNT(*) >= 1
ORDER BY skills_count DESC, resume_id;

-- Запрос делал через SQL-подключение Supabase; запрос завершился без ошибок.
-- Результат (2 строки):
-- [
--   {
--     "resume_id": "297df9da-7e02-43e3-9831-07f8e5ba2744",
--     "skills_count": 1
--   },
--   {
--     "resume_id": "5f67b6fd-a2c3-4fc2-a331-040f2a825665",
--     "skills_count": 1
--   }
-- ]
