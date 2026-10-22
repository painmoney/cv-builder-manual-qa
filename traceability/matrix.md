# Матрица трассировки

| Функция / контракт | Проверка | Кейс | Результат | Дефект | Доказательство |
|---|---|---|---|---|---|
| Навигация: Публичная главная без авторизации | WEB-01 | [TC-01](../test-cases/TC-01.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Защищённый Dashboard без сессии | AUTH-01 | [TC-01](../test-cases/TC-01.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Неверный пароль | AUTH-02 | [TC-01](../test-cases/TC-01.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Корректный пароль | AUTH-03 | [TC-01](../test-cases/TC-01.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Reload сессии | AUTH-04 | [TC-02](../test-cases/TC-02.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Выход | AUTH-05 | [TC-02](../test-cases/TC-02.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Auth: Signup и подтверждение токена | AUTH-06 | [TC-03](../test-cases/TC-03.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| Auth: Доставка signup/recovery email | AUTH-07 | [TC-03](../test-cases/TC-03.md) | [Blocked](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Создание через UI | DOC-01 | [TC-04](../test-cases/TC-04.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Переименование | DOC-02 | [TC-04](../test-cases/TC-04.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Создание копии | DOC-03 | [TC-05](../test-cases/TC-05.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Редактирование и сохранение | DOC-04 | [TC-04](../test-cases/TC-04.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Reload документа | DOC-05 | [TC-04](../test-cases/TC-04.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Резюме: Удаление | DOC-06 | [TC-05](../test-cases/TC-05.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Валидация: Некорректный email | VAL-01 | [TC-06](../test-cases/TC-06.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Валидация: Возраст 13 | VAL-02 | [TC-06](../test-cases/TC-06.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Валидация: Возраст 14 | VAL-03 | [TC-06](../test-cases/TC-06.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Валидация: Возраст 100 | VAL-04 | [TC-06](../test-cases/TC-06.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Валидация: Возраст 101 | VAL-05 | [TC-06](../test-cases/TC-06.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Шаблоны: Минималистичный | TPL-01 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Шаблоны: Академический | TPL-02 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Шаблоны: GitHub-стиль | TPL-03 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Шаблоны: Классический ATS | TPL-04 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Шаблоны: Современный IT | TPL-05 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Экспорт: PDF | EXP-01 | [TC-08](../test-cases/TC-08.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/export-modern.png) |
| Экспорт: DOCX | EXP-02 | [TC-08](../test-cases/TC-08.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/export-inspection.json) |
| Экспорт: Markdown | EXP-03 | [TC-08](../test-cases/TC-08.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/export-inspection.json) |
| Адаптивность: Главная и editor при 390 px | UI-01 | [TC-07](../test-cases/TC-07.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| API: Чтение своего документа | API-01 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Создание RPC | API-02 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Повтор create с тем же ID | API-03 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Save с актуальной версией | API-04 | [TC-10](../test-cases/TC-10.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Save с устаревшей версией | API-05 | [TC-10](../test-cases/TC-10.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Невалидный UUID | API-06 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Отсутствует обязательный параметр RPC | API-07 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Неверный тип revision | API-08 | [TC-10](../test-cases/TC-10.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: RPC без пользовательской авторизации | API-09 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: Невалидный JWT | API-10 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| API: PATCH своего title | API-11 | [TC-09](../test-cases/TC-09.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| RLS: A читает B / B читает A | SEC-01 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| RLS: A сохраняет B / B сохраняет A через RPC | SEC-02 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| RLS: Чужой REST PATCH в обоих направлениях | SEC-03 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| RLS: Чужой REST DELETE в обоих направлениях | SEC-04 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| RLS: Skills в чужое резюме | SEC-05 | [TC-11](../test-cases/TC-11.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| PostgreSQL: Фактическая схема и RLS | DB-01 | [TC-12](../test-cases/TC-12.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/schema-catalog.json) |
| PostgreSQL: UI/API/SQL и JOIN дочерних записей | DB-02 | [TC-12](../test-cases/TC-12.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/schema-catalog.json) |
| PostgreSQL: Каскад удаления | DB-03 | [TC-12](../test-cases/TC-12.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/schema-catalog.json) |
| Storage: Свой upload/read/delete и чужой prefix | STO-01 | [TC-12](../test-cases/TC-12.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/api-observations.json) |
| Сеть: Offline, сохранение и восстановление сети | NET-01 | [TC-04](../test-cases/TC-04.md) | [Blocked](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| GitHub: Импорт с действующим серверным токеном | INT-01 | [TC-09](../test-cases/TC-09.md) | [Blocked](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| OAuth: Вход Google/GitHub | INT-02 | [TC-01](../test-cases/TC-01.md) | [Blocked](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| AI: Puter generation | INT-03 | [TC-04](../test-cases/TC-04.md) | [Blocked](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Публичное резюме: Прямая ссылка без сессии и reload | PUB-01 | [TC-13](../test-cases/TC-13.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Публичное резюме: Скачивание PDF по прямой ссылке | PUB-02 | [TC-13](../test-cases/TC-13.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/pub-02-http.json) |
| Публичное резюме: Адаптивность при 390 px | PUB-03 | [TC-13](../test-cases/TC-13.md) | [Passed](../test-results/execution.md) | — | [Материалы](../evidence/ui-observations.json) |
| Адаптивность: Исследовательская проверка Modern preview при 390 px | UI-02 | [TC-07](../test-cases/TC-07.md) | [Failed](../test-results/execution.md) | [BUG-001](../defects/BUG-001-mobile-preview-clipped.md) | [Материалы](../evidence/preview-mobile.png) |
