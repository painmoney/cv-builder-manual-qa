# CV Builder — QA-портфолио

## О проекте

CV Builder — моё дипломное веб-приложение для создания IT-резюме. Здесь собраны тестовые материалы для портфолио начинающего ручного тестировщика. Коммерческого опыта QA у меня пока нет.

[QA-стенд](https://cv-builder-qa.vercel.app/) · [Публичное резюме](https://cv-builder-qa.vercel.app/cv) · [Исходный код версии 36cdd83](https://github.com/painmoney/diplome-cv-builder/tree/36cdd833b299af165338e13137b2aa7c06935170)

## Что проверялось

Авторизация, работа с резюме, валидация, шаблоны, мобильный предпросмотр, экспорт, API и доступ двух пользователей. Подготовлены 55 проверок и 17 тест-кейсов.

## Инструменты

Postman — коллекция для воспроизведения REST API; SQL/PostgreSQL — запросы к данным. Веб-интерфейс технического прогона проверялся управляемым Chromium. [Окружение и способ выполнения](test-plan/test-plan.md).

## Результаты

| Статус | Количество |
|---|---:|
| Всего сценариев | 55 |
| Passed | 10 |
| Failed | 1 |
| Blocked | 5 |
| Не подтверждено | 39 |

Статусы учитывают доступные доказательства: для 39 сценариев материалов недостаточно, поэтому Passed не заявляется. [Краткий итог и причины Blocked](test-results/summary.md).

## Тестовая документация

[Чек-лист](checklists/checklist.md) · [17 тест-кейсов](test-cases/README.md) · [Тест-план](test-plan/test-plan.md) · [Тест-дизайн](test-plan/test-design.md) · [Результаты](test-results/execution.md) · [Матрица связей](traceability/matrix.md).

## Найденный дефект

[BUG-001 — обрезание мобильного предпросмотра](defects/BUG-001-mobile-preview-clipped.md): Open, Major / P2. [Скриншот](evidence/preview-mobile.png) · [GitHub Issue №1](https://github.com/painmoney/cv-builder-manual-qa/issues/1).

## Postman и SQL

[Postman: 19 запросов, настройка и HTTP-примеры](api/README.md) · [Четыре простых SQL-запроса с результатами](sql/README.md).

## Скриншоты и доказательства

[Интерфейс, пять шаблонов, PDF и Markdown](evidence/README.md).
