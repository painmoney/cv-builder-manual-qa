# API

В API-разделе я собрал сценарии создания, чтения и сохранения резюме, повторного Create, конфликта revision, ошибочных параметров и разграничения доступа A/B. Ниже — коллекция для воспроизведения и примеры ответов из технического прогона.

| Endpoint | Методы / назначение |
|---|---|
| `/auth/v1/*` | POST: вход и подтверждение подготовленного токена |
| `/rest/v1/resumes` | GET, PATCH, DELETE: чтение и права на документ |
| `/rest/v1/rpc/create_resume_full` | POST: создание, повтор, параметры |
| `/rest/v1/rpc/save_resume_full` | POST: сохранение и revision |
| `/rest/v1/skills` | POST: запрет записи в чужой документ |
| `/storage/v1/*` | POST, GET, DELETE: аватары и права владельца |
| `/functions/v1/github-repos` | POST: наблюдалась недоступность серверного токена; успешный импорт Blocked |

## Воспроизведение в Postman

1. Импортировать [коллекцию](cv-builder.postman_collection.json).
2. Создать локальное окружение: `supabase_url` = `https://jerwfvhpoanoukxiyvwq.supabase.co`, `qa_origin` = `https://cv-builder-qa.vercel.app`.
3. Локально задать `anon_key`, `email`, `password`, затем `access_token`, `refresh_token`, `user_id`, `resume_id`, `revision`. Для B использовать отдельное окружение; для Create — новый UUID. Не экспортировать секреты.
4. Выполнять запросы по одному, проверяя ответы и сохранность документа владельцем. В коллекции нет скриптов и автоматических проверок. Отправлять запросы нужно вручную, только к staging и своим тестовым документам.

В исходном прогоне использовались Node.js fetch / Supabase JS, а не Postman. Отдельной Swagger/OpenAPI-спецификации нет. Приложение сохраняет резюме через RPC. Прямой PATCH проверяет права на изменение записи resumes и, в отличие от RPC, не обновляет связанные таблицы.

## Примеры исходных результатов

Выдержки из [HTTP-журнала](../evidence/raw/api-observations.json). HTTP 200 с `[]` при чужом SELECT/PATCH/DELETE — ожидаемая фильтрация RLS, подтверждённая чтением владельца. Конфликт P1005 вернул 400, а не 409.

### API-01 — Успешное чтение своего документа

`GET https://jerwfvhpoanoukxiyvwq.supabase.co/rest/v1/resumes?id=eq.5f67b6fd-a2c3-4fc2-a331-040f2a825665&select=id,title,revision,data`

Авторизация: пользовательский JWT A; заголовок apikey — публичный staging key. Значения секретов опущены.

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

Авторизация: пользовательский JWT A; заголовок apikey — публичный staging key. Значения секретов опущены.

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

Авторизация: пользовательский JWT A; заголовок apikey — публичный staging key. Значения секретов опущены.

HTTP **200**:
```json
[]
```
