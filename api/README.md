# REST API и Postman

[Коллекция Postman — 19 запросов](cv-builder.postman_collection.json).

Для проверки REST API подготовлена коллекция Postman из 19 запросов. Она включает авторизацию, работу с резюме, проверку ошибок и разграничения доступа пользователей.

## Самостоятельные проверки в Postman

23.10.2026 я самостоятельно выполнил ручные проверки REST API на staging: вход пользователей A/B, чтение своего резюме, запрос с невалидным UUID и разграничение доступа к резюме. Коллекция содержит **19 подготовленных запросов**; выполнение всех 19 не заявляется.

| Проверка | Результат | Доказательства |
|---|---|---|
| AUTH-03 — вход по email и паролю через API | A: HTTP 200, token_type=bearer, user.role=authenticated. Вход B выполнен; отдельного снимка ответа входа нет, сохранено чтение своего документа с авторизацией B. | [Скриншот 01](../evidence/postman/01_AUTH_login_A_200.png); [Скриншот 05](../evidence/postman/05_SEC-01_GET_B_own_resume_200.png) |
| API-01 — своё резюме | HTTP 200, QA portfolio A patched, revision=2. | [Скриншот 02](../evidence/postman/02_API-01_GET_own_resume_A_200.png) |
| API-06 — невалидный UUID | HTTP 400, код 22P02 для not-uuid. | [Скриншот 03](../evidence/postman/03_API-06_POST_invalid_UUID_400.png) |
| SEC-01 — чтение A/B | Свои документы доступны владельцам; A → B и B → A возвращают HTTP 200 с пустым массивом. | [Скриншот 02](../evidence/postman/02_API-01_GET_own_resume_A_200.png); [Скриншот 04](../evidence/postman/04_SEC-01_GET_A_to_B_empty_200.png); [Скриншот 05](../evidence/postman/05_SEC-01_GET_B_own_resume_200.png); [Скриншот 06](../evidence/postman/06_SEC-01_GET_B_to_A_empty_200.png) |

Токены и пароли на опубликованных изображениях скрыты. Проверка входа через API не подтверждает переход в Dashboard через интерфейс.

## Настройка окружения

1. Импортировать коллекцию в Postman.
2. В локальном окружении задать `supabase_url` = `https://jerwfvhpoanoukxiyvwq.supabase.co` и `qa_origin` = `https://cv-builder-qa.vercel.app`.
3. Задать `anon_key`, `email`, `password`; после входа — `access_token`, `refresh_token`, `user_id`. Для работы с документом нужны `resume_id` и `revision`; для создания — новый UUID. Для пользователя B использовать отдельное окружение.
4. Отправлять запросы по одному, сверять ответы и данные владельца. Пароли и токены не экспортировать. Использовать только staging и свои тестовые данные.

В коллекции нет скриптов и автоматических проверок. Выполненные вручную запросы отмечены в таблице выше.

## Сценарии

Вход и сессия; создание и чтение резюме; повторное создание с тем же ID; сохранение и конфликт revision; ошибочные параметры; доступ двух пользователей; операции с файлами. Полный список — в коллекции.

Приложение сохраняет резюме через RPC. Прямой PATCH проверяет права на запись в resumes и не обновляет связанные таблицы.

## Примеры HTTP-запросов и ответов

Три примера ответов от 22.10.2026 сохранены ниже. Результаты ручного выполнения в Postman от 23.10.2026 показаны на скриншотах выше; у резюме A на них уже revision=2. Ответ чтения ниже сокращён до id, title и revision.

### API-01 — Успешное чтение своего документа

`GET https://jerwfvhpoanoukxiyvwq.supabase.co/rest/v1/resumes?id=eq.5f67b6fd-a2c3-4fc2-a331-040f2a825665&select=id,title,revision,data`

Авторизация: пользовательский JWT A; заголовок apikey — публичный ключ тестового стенда. Значения секретов опущены.

Ответ сокращён до полей id/title/revision.

HTTP **200**:
```json
[
  {
    "id": "5f67b6fd-a2c3-4fc2-a331-040f2a825665",
    "title": "QA portfolio A",
    "revision": 1
  }
]
```

### API-06 — Невалидный UUID

`POST https://jerwfvhpoanoukxiyvwq.supabase.co/rest/v1/rpc/create_resume_full`

Авторизация: пользовательский JWT A; заголовок apikey — публичный ключ тестового стенда. Значения секретов опущены.

Параметры запроса:
```json
{
  "p_resume_id": "not-uuid",
  "p_title": "Invalid",
  "p_template": "minimalist",
  "p_data": {}
}
```

HTTP **400**:
```json
{
  "code": "22P02",
  "details": null,
  "hint": null,
  "message": "invalid input syntax for type uuid: \"not-uuid\""
}
```

### SEC-01 — Чтение чужого документа

`GET https://jerwfvhpoanoukxiyvwq.supabase.co/rest/v1/resumes?id=eq.297df9da-7e02-43e3-9831-07f8e5ba2744&select=id,title,revision`

Авторизация: пользовательский JWT A; заголовок apikey — публичный ключ тестового стенда. Значения секретов опущены.

HTTP **200**:
```json
[]
```
