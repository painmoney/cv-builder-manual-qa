# Подтверждённые результаты проверок

Ниже — 12 Passed, 1 Failed и 5 Blocked. Интерфейс и экспорт относятся к техническому прогону 22.10.2026 на версии 36cdd83. AUTH-03, API-01, API-06 и SEC-01 — самостоятельные ручные проверки автора в Postman от 23.10.2026. Passed и Failed подтверждаются ссылками на материалы; для Blocked указаны причины, выполнение этих сценариев не подтверждается.

Остальные сценарии остаются в [чек-листе](../checklists/checklist.md) и [тест-кейсах](../test-cases/README.md); результаты по ним здесь не заявляются. Полный повторный прогон приложения не проводился.

| ID | Статус | Результат или причина блокировки | Материалы |
|---|---|---|---|
| WEB-01 | Passed | Главная страница содержит заголовок приложения, кнопки входа и начала работы. | [Главная](../evidence/home-mobile.png) |
| AUTH-03 | Passed | Вход через API в Postman: A — HTTP 200, bearer и пользователь authenticated. Вход B выполнен автором, подтверждён доступ B к своему документу; отдельного снимка ответа входа B нет. Переход в Dashboard здесь не проверялся. | [Скриншот 01](../evidence/postman/01_AUTH_login_A_200.png); [Скриншот 05](../evidence/postman/05_SEC-01_GET_B_own_resume_200.png) |
| AUTH-07 | Blocked | Нет контролируемого почтового ящика/SMTP-проверки; реальное получение signup и recovery писем не выполнено. | [Причина блокировки](summary.md#что-не-удалось-проверить) |
| TPL-01 | Passed | Имя, описание, навык, опыт, образование и проект отображаются в минималистичном шаблоне. | [Скриншот](../evidence/template-minimalist.png) |
| TPL-02 | Passed | Заполненные разделы отображаются в академическом шаблоне. | [Скриншот](../evidence/template-academic.png) |
| TPL-03 | Passed | Заполненные разделы отображаются в шаблоне GitHub. | [Скриншот](../evidence/template-github.png) |
| TPL-04 | Passed | Заполненные разделы отображаются в классическом шаблоне. | [Скриншот](../evidence/template-classic.png) |
| TPL-05 | Passed | Заполненные разделы отображаются в шаблоне «Современный IT» на компьютере. | [Скриншот](../evidence/template-modern.png) |
| EXP-01 | Passed | Сохранён PDF с именем, описанием и заполненными разделами тестового резюме. | [PDF](../evidence/export-modern.pdf), [изображение](../evidence/export-modern.png) |
| EXP-03 | Passed | В Markdown присутствуют имя, описание, навык, опыт, образование и ссылка проекта. | [Markdown](../evidence/export.md) |
| API-01 | Passed | Вручную в Postman: своё резюме A доступно, HTTP 200; QA portfolio A patched, revision=2, данные профиля и навык React. | [Скриншот 02](../evidence/postman/02_API-01_GET_own_resume_A_200.png) |
| API-06 | Passed | Вручную в Postman: p_resume_id=not-uuid отклонён, HTTP 400, code=22P02. | [Скриншот 03](../evidence/postman/03_API-06_POST_invalid_UUID_400.png) |
| SEC-01 | Passed | В Postman свои документы читаются A/B; A → B и B → A возвращают HTTP 200 с []. | [Скриншот 02](../evidence/postman/02_API-01_GET_own_resume_A_200.png); [Скриншот 04](../evidence/postman/04_SEC-01_GET_A_to_B_empty_200.png); [Скриншот 05](../evidence/postman/05_SEC-01_GET_B_own_resume_200.png); [Скриншот 06](../evidence/postman/06_SEC-01_GET_B_to_A_empty_200.png) |
| NET-01 | Blocked | Доступный интерфейс браузера не предоставляет переключение offline/online или перехват сети. Фактический сетевой сбой не воспроизводился; API-ошибки не выдаются за offline-проверку. | [Причина блокировки](summary.md#что-не-удалось-проверить) |
| INT-01 | Blocked | Авторизованный запрос функции: 503 GITHUB_TOKEN_NOT_CONFIGURED. Обработка недоступности наблюдалась; успешный импорт Blocked без server token. | [Причина блокировки](summary.md#что-не-удалось-проверить) |
| INT-02 | Blocked | Google/GitHub OAuth не настроены в staging; успешный OAuth-вход Blocked. | [Причина блокировки](summary.md#что-не-удалось-проверить) |
| INT-03 | Blocked | Нет авторизованного Puter-аккаунта; генерация и её лимиты не проверены. | [Причина блокировки](summary.md#что-не-удалось-проверить) |
| UI-02 | Failed | Предпросмотр «Современный IT» обрезан справа при мобильной ширине. BUG-001 остаётся Open, Major / P2. | [BUG-001](../defects/BUG-001-mobile-preview-clipped.md), [скриншот](../evidence/preview-mobile.png) |

Четыре [SQL-запроса и их ответы от 23.10.2026](../sql/README.md) приведены отдельно от этой сводки.

[Итоговый отчёт](summary.md) · [Матрица связей всех сценариев](../traceability/matrix.md)
