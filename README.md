# CV Builder — QA-портфолио

## О проекте

CV Builder — собственный дипломный веб-проект для создания IT-резюме. Здесь собраны тестовая документация, результаты первого технического прогона и доказательства.

[QA-стенд](https://cv-builder-qa.vercel.app/) · [Резюме](https://cv-builder-qa.vercel.app/cv) · [Исходники проверенной версии](https://github.com/painmoney/diplome-cv-builder/tree/36cdd833b299af165338e13137b2aa7c06935170)

## Тестируемая функциональность

Вход, выход и сессия; создание, редактирование, копирование и удаление резюме; валидация; пять шаблонов и мобильный предпросмотр; PDF/DOCX/Markdown; REST API/RPC, конфликты версий, SQL, Storage и доступ двух пользователей.

## Инструменты и технологии

React, JavaScript, Vite, Supabase/PostgreSQL, Vercel. Проверки выполнялись управляемым Chromium-браузером, HTTP-клиентом Node.js fetch/Supabase JS и SQL SELECT; личный ручной прогон владельца не заявляется. Postman-коллекция подготовлена для воспроизведения, в исходном прогоне Postman не использовался.

## Результаты тестирования

Прогон от 22.10.2026, commit `36cdd83`.

| Результат | Количество |
|---|---:|
| Всего проверок | 56 |
| Passed | 50 |
| Failed | 1 |
| Blocked | 5 |
| Подтверждённых дефектов | 1 |

13 исходных тест-кейсов переработаны в 17 более узких сценариев. Это редакторское разделение, без новых выполнений. [Соответствие ID](test-cases/README.md).

## Тестовая документация

- Подготовка: [тест-план](test-plan/test-plan.md), [тест-дизайн](test-plan/test-design.md).
- Сценарии: [чек-лист — 56 проверок](checklists/checklist.md), [тест-кейсы](test-cases/README.md).
- Итоги: [краткий отчёт](test-results/summary.md), [журнал выполнения](test-results/execution.md).
- Примеры: [API и коллекция](api/README.md), [SQL](sql/README.md), [скриншоты и экспорт](evidence/README.md).

## Найденные дефекты

[BUG-001: обрезание мобильного Modern preview](defects/BUG-001-mobile-preview-clipped.md) — Open, Major / P2, воспроизведён 2/2. [GitHub Issue №1](https://github.com/painmoney/cv-builder-manual-qa/issues/1).

## Ограничения

Заблокированы доставка email, offline-сохранение и успешные GitHub/OAuth/Puter-интеграции. DOCX проверен по структуре и тексту, без просмотра в Word. Мобильная ширина проверена в viewport, без реального телефона; точная версия Chromium не зафиксирована. Стенд может обновляться: [версия прогона и последующие публикации](test-results/version-note.md).
