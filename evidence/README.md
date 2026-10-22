# Доказательства

Артефакты исходного прогона от 22.10.2026 относятся к commit `36cdd83`. [Версии и последующие публикации](../test-results/version-note.md).

| Материалы | Что показывают |
|---|---|
| [Мобильный дефект](preview-mobile.png), [desktop Modern](template-modern.png) | BUG-001 и сравнение |
| [Главная](home-mobile.png), [редактор](editor-mobile.png) | Просмотр при ширине 390 px |
| [Отказ чужому редактору](foreign-editor-denied.png) | Проверка доступа |
| [Минималистичный](template-minimalist.png), [академический](template-academic.png), [GitHub](template-github.png), [классический](template-classic.png), [Modern](template-modern.png) | Пять desktop-шаблонов |
| [PDF](export-modern.pdf), [его изображение](export-modern.png), [Markdown](export.md) | Реальный экспорт синтетического документа |
| [HTTP-примеры](../api/README.md), [SQL-результаты](../sql/README.md) | Краткие выдержки из исходных наблюдений |

[Технический архив](raw/README.md) содержит исходные JSON без изменения содержимого: HTTP, DOM, SQL-каталог, измерения и проверки публикации. Время в них — UTC; зона прогона — Europe/Samara. Ошибочные первые запросы SEC-05/DB-02-api сохранены; выводы основаны на corrected-запросах. Для DOC-05 завершённая загрузка подтверждена записью DOC-05-confirmed, а не ранним loading-снимком.

DOCX прочитан структурно, без визуального просмотра в Word; HAR не собирался. Секреты и данные входа в архив не входят.
