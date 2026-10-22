# Результаты выполнения

Версия 36cdd83, 22.10.2026, Europe/Samara. Это первый прогон зафиксированной модели, не регрессия. Повтор UI-02 подтверждает воспроизводимость без изменения кода; retest исправления не выполнялся.

Способы выполнения указаны явно: управляемый браузер, Node.js fetch/Supabase JS и read-only SQL. Прогон не выдаётся за ручные действия владельца проекта. Postman/Swagger UI в этом прогоне не использовались. Детальные очищенные HTTP request/response находятся в api-observations.json, браузерные состояния — в ui-observations.json.

| ID | Статус | Фактический результат | Доказательство |
|---|---|---|---|
| WEB-01 | Passed | Анонимная главная отображается; доступны Войти и Начать бесплатно. | [Материалы](../evidence/ui-observations.json) |
| AUTH-01 | Passed | После выхода прямой /dashboard перенаправляет на /login. | [Материалы](../evidence/ui-observations.json) |
| AUTH-02 | Passed | Неверный пароль: сообщение «Неверный email или пароль…», Dashboard не открывается. | [Материалы](../evidence/ui-observations.json) |
| AUTH-03 | Passed | Правильный пароль открывает Dashboard; показаны только документы текущего пользователя. | [Материалы](../evidence/ui-observations.json) |
| AUTH-04 | Passed | После reload Dashboard сессия остаётся авторизованной. | [Материалы](../evidence/ui-observations.json) |
| AUTH-05 | Passed | Кнопка Выйти открывает /login; повторный вход в приватный маршрут требует авторизации. | [Материалы](../evidence/ui-observations.json) |
| AUTH-06 | Passed | Два новых синтетических аккаунта: до подтверждения email_not_confirmed; verifyOtp signup успешен; после подтверждения password login успешен. Signup-токены сгенерированы admin.generateLink без отправки писем, /signup через UI не проверен. | [Материалы](../evidence/api-observations.json) |
| AUTH-07 | Blocked | Нет контролируемого почтового ящика/SMTP-проверки; реальное получение signup и recovery писем не выполнено. | [Материалы](../evidence/ui-observations.json) |
| DOC-01 | Passed | Через Создать резюме создан документ f8c650ea-a03f-49d6-bca9-4b24265d6d7d и открыт editor. | [Материалы](../evidence/ui-observations.json) |
| DOC-02 | Passed | Переименование в Dashboard: QA browser portfolio → QA browser renamed. REST подтвердил новое название. | [Материалы](../evidence/ui-observations.json) |
| DOC-03 | Passed | Создать копию создал 9e16356a-c5b0-4c39-b949-f680e0551acc с суффиксом (копия), revision=1. Имя, возраст 100 и about совпали с оригиналом. | [Материалы](../evidence/ui-observations.json) |
| DOC-04 | Passed | Изменены название, имя, about и возраст; после Сохранено REST вернул эти значения. После переименования revision=7. | [Материалы](../evidence/ui-observations.json) |
| DOC-05 | Passed | После полного reload копии восстановлены имя QA Portfolio Browser, возраст 100 и сохранённый about. Первый снимок во время Загрузка резюме не считается подтверждением; используется DOC-05-confirmed. | [Материалы](../evidence/ui-observations.json) |
| DOC-06 | Passed | Копия удалена через меню и подтверждение UI; REST для её ID вернул []; оригинал остался. | [Материалы](../evidence/ui-observations.json) |
| VAL-01 | Passed | not-an-email отклонён: Некорректный email и Проверьте поля. Ложного Сохранено не показано. | [Материалы](../evidence/ui-observations.json) |
| VAL-02 | Passed | Возраст 13 отклонён: Укажите целый возраст от 14 до 100 лет. | [Материалы](../evidence/ui-observations.json) |
| VAL-03 | Passed | Возраст 14 принят, показано Сохранено. | [Материалы](../evidence/ui-observations.json) |
| VAL-04 | Passed | Возраст 100 принят; после reload и в REST сохранено 100. | [Материалы](../evidence/ui-observations.json) |
| VAL-05 | Passed | Возраст 101 отклонён с ошибкой поля. | [Материалы](../evidence/ui-observations.json) |
| TPL-01 | Passed | Минималистичный: имя, about, React, опыт, образование, проект отображаются. | [Материалы](../evidence/ui-observations.json) |
| TPL-02 | Passed | Академический: те же данные отображаются в двух колонках. | [Материалы](../evidence/ui-observations.json) |
| TPL-03 | Passed | GitHub-стиль: те же данные отображаются в тёмном шаблоне. | [Материалы](../evidence/ui-observations.json) |
| TPL-04 | Passed | Классический ATS: те же данные отображаются в одноколоночном шаблоне. | [Материалы](../evidence/ui-observations.json) |
| TPL-05 | Passed | Современный IT: те же данные отображаются; desktop screenshot сохранён. | [Материалы](../evidence/ui-observations.json) |
| EXP-01 | Passed | Штатная кнопка скачала Modern PDF: 1 страница A4, текст извлечён pypdf, PNG просмотрен визуально; имя и все заполненные блоки присутствуют. | [Материалы](../evidence/export-modern.png) |
| EXP-02 | Passed | Штатная кнопка скачала DOCX; контейнер и абзацы успешно разобраны python-docx, данные совпадают. Визуальная совместимость Word/LibreOffice НЕ проверена: LibreOffice отсутствует. Непроверенный бинарный DOCX в публичный набор не включён; сохранён текстовый разбор. | [Материалы](../evidence/export-inspection.json) |
| EXP-03 | Passed | Штатная кнопка скачала Markdown; имя, about, React, опыт, образование, ссылка проекта присутствуют. | [Материалы](../evidence/export-inspection.json) |
| UI-01 | Passed | Главная и editor проверены при viewport 390×844; documentWidth=375, основные действия доступны. Это эмуляция viewport, не физический телефон. | [Материалы](../evidence/ui-observations.json) |
| API-01 | Passed | GET своего документа: 200 application/json, один объект с ожидаемым ID, title, revision и data. | [Материалы](../evidence/api-observations.json) |
| API-02 | Passed | create_resume_full для A и B: 200, новый ID и out_revision=1. | [Материалы](../evidence/api-observations.json) |
| API-03 | Passed | Повтор create с тем же UUID вернул существующую revision. Снимки API-03-before/after подтверждают одинаковые title, revision и data, без перезаписи. | [Материалы](../evidence/api-observations.json) |
| API-04 | Passed | save_resume_full с expected_revision=1: 200, out_revision=2. | [Материалы](../evidence/api-observations.json) |
| API-05 | Passed | Save с устаревшей revision=1: HTTP 400, code P1005 REVISION_CONFLICT. Это ожидаемая защита, не дефект и не HTTP 409. | [Материалы](../evidence/api-observations.json) |
| API-06 | Passed | not-uuid: HTTP 400, code 22P02. | [Материалы](../evidence/api-observations.json) |
| API-07 | Passed | Отсутствует p_data: HTTP 404, PGRST202 — сигнатура RPC не найдена. | [Материалы](../evidence/api-observations.json) |
| API-08 | Passed | p_expected_revision=not-integer: HTTP 400, 22P02. | [Материалы](../evidence/api-observations.json) |
| API-09 | Passed | Без пользовательского JWT: HTTP 401, 42501 permission denied. | [Материалы](../evidence/api-observations.json) |
| API-10 | Passed | Невалидный JWT: HTTP 401, PGRST301. | [Материалы](../evidence/api-observations.json) |
| API-11 | Passed | PATCH своего title: 200, QA portfolio A patched читается владельцем. Это дополнительный REST-запрос, а не путь сохранения редактора; нормализация RPC при PATCH не выполняется. | [Материалы](../evidence/api-observations.json) |
| SEC-01 | Passed | A→B и B→A GET: 200 с []. В браузере прямой чужой editor в обоих направлениях показывает отсутствие доступа. | [Материалы](../evidence/api-observations.json) |
| SEC-02 | Passed | Чужой save RPC в обоих направлениях: HTTP 400 P1004; чтение владельцами подтвердило сохранность. | [Материалы](../evidence/api-observations.json) |
| SEC-03 | Passed | Чужой PATCH в обоих направлениях: 200 с []; title/revision/data владельцев сохранены. | [Материалы](../evidence/api-observations.json) |
| SEC-04 | Passed | Чужой DELETE в обоих направлениях: 200 с []; оба документа остаются доступны владельцам. | [Материалы](../evidence/api-observations.json) |
| SEC-05 | Passed | POST skills с фактической колонкой skill_name в чужой документ: HTTP 403, 42501 RLS. Первый запрос с неверной колонкой name дал PGRST204 и не считается RLS-проверкой. | [Материалы](../evidence/api-observations.json) |
| DB-01 | Passed | Read-only каталог: семь таблиц с RLS, avatar_shape NOT NULL default round и CHECK; PK/FK, CASCADE; обе RPC securityDefiner=false и пустой search_path. | [Материалы](../evidence/schema-catalog.json) |
| DB-02 | Passed | REST embedded relations и SQL LEFT JOIN/GROUP BY: по одной skill, education, experience и manual_project у A/B, ожидаемые title/revision и profile name. UI preview отображает те же поля. UI-документ отдельно сопоставлен с REST. | [Материалы](../evidence/schema-catalog.json) |
| DB-03 | Passed | Отдельный disposable создан через RPC, дочерние записи существовали. DELETE владельцем удалил документ; REST и SQL вернули 0 для resumes и четырёх заполненных дочерних таблиц. | [Материалы](../evidence/schema-catalog.json) |
| STO-01 | Passed | Свой PNG upload успешен, публичный GET 200. Чужой upload: 403 RLS; чужой remove вернул 0 объектов, GET остался 200. Владелец удалил 1 объект. | [Материалы](../evidence/api-observations.json) |
| NET-01 | Blocked | Доступный интерфейс браузера не предоставляет переключение offline/online или перехват сети. Фактический сетевой сбой не воспроизводился; API-ошибки не выдаются за offline-проверку. | [Материалы](../evidence/ui-observations.json) |
| INT-01 | Blocked | Авторизованный запрос функции: 503 GITHUB_TOKEN_NOT_CONFIGURED. Обработка недоступности наблюдалась; успешный импорт Blocked без server token. | [Материалы](../evidence/ui-observations.json) |
| INT-02 | Blocked | Google/GitHub OAuth не настроены в staging; успешный OAuth-вход Blocked. | [Материалы](../evidence/ui-observations.json) |
| INT-03 | Blocked | Нет авторизованного Puter-аккаунта; генерация и её лимиты не проверены. | [Материалы](../evidence/ui-observations.json) |
| PUB-01 | Passed | После logout A/B прямой /cv и reload показывают согласованное резюме без login/editor; GET 200 text/html. | [Материалы](../evidence/ui-observations.json) |
| PUB-02 | Passed | Прямой /cv/manual-qa.pdf: 200 application/pdf, 17415 bytes. PDF получен штатным Classic export CV Builder, 1 страница A4; кириллица и переносы просмотрены. | [Материалы](../evidence/pub-02-http.json) |
| PUB-03 | Passed | Публичное /cv при viewport 390: documentWidth=375; кнопка PDF, текст и контакты доступны. Вёрстка использует отдельную адаптивную обёртку. | [Материалы](../evidence/ui-observations.json) |
| UI-02 | Failed | Modern preview при 390 px обрезан справа. Шаблон 793.7 px внутри контейнера 343.2 px с overflow:hidden. Повтор после reload воспроизвёл дефект; BUG-001. | [Материалы](../evidence/preview-mobile.png) |
