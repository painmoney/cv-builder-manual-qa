# Доказательства

Скриншоты и файлы технического прогона от 22.10.2026, версия приложения 36cdd83. [Итоговый отчёт](../test-results/summary.md).

| Материалы | Что показывают |
|---|---|
| [Мобильный дефект](preview-mobile.png), [тот же шаблон на компьютере](template-modern.png) | BUG-001 и сравнение |
| [Главная](home-mobile.png), [редактор](editor-mobile.png) | Просмотр при ширине 390 px |
| [Отказ чужому редактору](foreign-editor-denied.png) | Проверка доступа |
| [Минималистичный](template-minimalist.png), [академический](template-academic.png), [GitHub](template-github.png), [классический](template-classic.png), [Современный IT](template-modern.png) | Пять шаблонов |
| [PDF](export-modern.pdf), [его изображение](export-modern.png), [Markdown](export.md) | Экспорт тестового резюме |
| [Ответы API](raw/api-observations.json), [связи таблиц](raw/sql-resume-join.json), [удаление зависимостей](raw/sql-cascade.json) | Результаты API и проверок DB-02–DB-03 |

[Журналы и измерения](raw/README.md) содержат подробные ответы и наблюдения. В нём сохранены и первые ошибочные запросы SEC-05/DB-02-api; итог основан на исправленных запросах. Для DOC-05 подтверждением загрузки служит запись DOC-05-confirmed, а не ранний снимок с надписью «Загрузка резюме».
