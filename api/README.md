# API и воспроизведение

Коллекция скопирована из docs/qa проверяемого CV Builder. Импортировать в Postman, задать публичный staging URL/key и пользовательские JWT в локальном environment/Vault. Реальные значения не экспортировать. Перед каждым изменением проверить staging ref jerwfvhpoanoukxiyvwq. Runner и automated test scripts не используются.

Фактические запросы этого прогона отправлялись Node.js fetch/Supabase JS, а не Postman. [Очищенные request/response](../evidence/api-observations.json) содержат методы, endpoints, payload, статусы и выбранные response headers. apikey/Authorization не сохранены. Отдельной Swagger/OpenAPI-спецификации CV Builder в наборе нет; наличие Swagger в личной практике не означает, что этот API документирован Swagger.

Основной UI save использует RPC create_resume_full/save_resume_full. Прямой PATCH resumes дополнительно проверяет REST ownership и не запускает нормализацию дочерних таблиц RPC. Тестировать только собственные синтетические документы; create UUID генерировать отдельно. HTTP 200 с [] для чужого SELECT/PATCH/DELETE — ожидаемый RLS-результат при подтверждённой сохранности данных. P1005 фактически HTTP 400, не 409.

В исходных исследовательских запросах SEC-05 и DB-02-api были неверные имена колонок. Они сохранены, но итог основывается на corrected-запросах после чтения SQL-каталога. Это ошибки клиента, не баги приложения.
