# SQL

Все запросы используют только SELECT и обращаются к staging `jerwfvhpoanoukxiyvwq`. Ниже приведены исторические результаты; повторные запросы при переработке документации не выполнялись.

## Документы и связанные записи

[resume-join.sql](resume-join.sql): SELECT / WHERE выбирает два синтетических документа; LEFT JOIN связывает четыре дочерние таблицы; GROUP BY и COUNT(DISTINCT) позволяют посчитать записи каждой таблицы без повторного учёта из-за JOIN; ORDER BY сортирует названия.

| Документ | revision | skills | education | experience | projects |
|---|---:|---:|---:|---:|---:|
| QA portfolio A patched | 2 | 1 | 1 | 1 | 1 |
| QA portfolio B | 1 | 1 | 1 | 1 | 1 |

Оба profile_name — QA Portfolio Candidate. [Исходный результат](../evidence/raw/sql-resume-join.json). Название и revision сопоставлялись с пользовательским API; это DB-02.

## Каскадное удаление

[cascade.sql](cascade.sql): SELECT COUNT(*) / WHERE и UNION ALL проверяют наличие временного резюме и его зависимостей после удаления владельцем через API (DB-03).

| Таблица | Осталось записей |
|---|---:|
| resumes | 0 |
| skills | 0 |
| education | 0 |
| experience | 0 |
| manual_projects | 0 |

[Исходный результат](../evidence/raw/sql-cascade.json). При самостоятельном воспроизведении нужен новый временный документ; исходный UUID уже удалён. Основные документы A/B не удалялись.

## Дополнительная диагностика

[catalog.sql](catalog.sql) собирает метаданные колонок, ограничений, RLS и RPC; [исходный каталог](../evidence/raw/schema-catalog.json). Этот запрос дополняет DB-01 и не заменяет пользовательские проверки доступа.
