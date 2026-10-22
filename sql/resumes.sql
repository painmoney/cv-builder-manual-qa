-- Резюме двух тестовых пользователей: ID, название и версия.
-- Пример для самостоятельного выполнения; в прогоне не запускался.
SELECT id, title, revision
FROM public.resumes
WHERE id IN (
    '5f67b6fd-a2c3-4fc2-a331-040f2a825665',
    '297df9da-7e02-43e3-9831-07f8e5ba2744'
)
ORDER BY title, id;
