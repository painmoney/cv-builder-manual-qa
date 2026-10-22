# Технический архив

JSON сохранены без изменения содержимого. Это исходные наблюдения. original-model.json и original-results.json сохраняют все 56 записей первоначального набора, включая исключённую из текущего портфолио DB-01. Текущая статистика рассчитывается по 55 оставленным проверкам. Английские подписи и исходные тестовые данные в них не переводились.

[Оригинальные SQL и результаты](sql/README.md) перенесены сюда из основного SQL-раздела. Основные иллюстрации — [уровнем выше](../README.md).

| Файл | Назначение |
|---|---|
| [original-model.json](original-model.json) | Исходная модель, 56 проверок; архив, не текущий чек-лист |
| [original-results.json](original-results.json) | Исходные результаты, 50 Passed / 1 Failed / 5 Blocked; архив |
| [api-observations.json](api-observations.json) | HTTP-запросы и ответы |
| [export-inspection.json](export-inspection.json) | Анализ экспорта |
| [final-public-links.json](final-public-links.json) | Измерения или проверка публикации |
| [final-resume-consistency.json](final-resume-consistency.json) | Измерения или проверка публикации |
| [home-mobile-geometry.json](home-mobile-geometry.json) | Измерения или проверка публикации |
| [preview-mobile-geometry.json](preview-mobile-geometry.json) | Измерения или проверка публикации |
| [pub-01-http.json](pub-01-http.json) | Измерения или проверка публикации |
| [pub-02-http.json](pub-02-http.json) | Измерения или проверка публикации |
| [public-mobile-geometry.json](public-mobile-geometry.json) | Измерения или проверка публикации |
| [schema-catalog.json](schema-catalog.json) | Исторический снимок схемы; не входит в текущую статистику |
| [sql-cascade.json](sql-cascade.json) | Результат каскада |
| [sql-resume-join.json](sql-resume-join.json) | Результат JOIN |
| [ui-observations.json](ui-observations.json) | DOM и наблюдения UI |

В original-results.json пути к доказательствам сохранены в исходном виде относительно test-results/, а в original-model.json ID кейсов соответствуют исходному дизайну. Актуальная навигация — в [журнале](../../test-results/execution.md), [чек-листе](../../checklists/checklist.md) и [таблице соответствия кейсов](../../test-cases/README.md).
