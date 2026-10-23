# REST API и Postman

[Коллекция Postman — 19 запросов](cv-builder.postman_collection.json).

Для проверки REST API подготовлена коллекция Postman из 19 запросов. Она включает авторизацию, работу с резюме, проверку ошибок и разграничения доступа пользователей.

## Настройка окружения

1. Импортировать коллекцию в Postman.
2. В локальном окружении задать `supabase_url` = `https://jerwfvhpoanoukxiyvwq.supabase.co` и `qa_origin` = `https://cv-builder-qa.vercel.app`.
3. Задать `anon_key`, `email`, `password`; после входа — `access_token`, `refresh_token`, `user_id`. Для работы с документом нужны `resume_id` и `revision`; для создания — новый UUID. Для пользователя B использовать отдельное окружение.
4. Отправлять запросы по одному, сверять ответы и данные владельца. Пароли и токены не экспортировать. Использовать только staging и свои тестовые данные.

В коллекции нет скриптов и автоматических проверок. Она подготовлена для самостоятельного воспроизведения; результаты ниже не заявляются как ручной прогон в Postman.

## Сценарии

Вход и сессия; создание и чтение резюме; повторное создание с тем же ID; сохранение и конфликт revision; ошибочные параметры; доступ двух пользователей; операции с файлами. Полный список — в коллекции.

Приложение сохраняет резюме через RPC. Прямой PATCH проверяет права на запись в resumes и не обновляет связанные таблицы.

## Примеры HTTP-запросов и ответов

Сохранённые примеры от 22.10.2026. Ответ чтения своего документа сокращён до id, title и revision; пример чужого чтения показывает одно направление A → B, а не всю проверку изоляции двух пользователей.

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
