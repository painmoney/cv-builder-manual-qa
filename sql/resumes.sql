-- Резюме двух тестовых пользователей: ID, название и версия.
SELECT id, title, revision
FROM public.resumes
WHERE id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
ORDER BY title, id;

-- Выполнено 23.10.2026, 00:03 UTC, staging jerwfvhpoanoukxiyvwq.
-- Через SQL-подключение Supabase; запрос завершился без ошибок.
-- Результат (2 строк):
-- [
--   {
--     "id": "5f67b6fd-a2c3-4fc2-a331-040f2a825665",
--     "title": "QA portfolio A patched",
--     "revision": 2
--   },
--   {
--     "id": "297df9da-7e02-43e3-9831-07f8e5ba2744",
--     "title": "QA portfolio B",
--     "revision": 1
--   }
-- ]
