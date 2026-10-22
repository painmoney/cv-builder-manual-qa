# Доказательства

Raw timestamps — UTC; пользовательский часовой пояс Europe/Samara. Артефакты относятся к staging и commit 36cdd83, не к production. Снимки UI созданы программным управлением браузером; HTTP-запросы отправлены Node.js fetch/Supabase JS, не Postman. SQL — read-only connector, пользовательские права проверялись отдельными JWT.

- api-observations.json: request/response/status/selected headers. apikey и Authorization не записываются; User IDs заменены USER_A/USER_B. Первые ошибочные исследовательские запросы SEC-05 (name вместо skill_name) и DB-02-api (несуществующие колонки) сохранены для прозрачности; итог относится к corrected-запросам.
- ui-observations.json: очищенные DOM snapshot и примечания. Синтетические credentials удалены. PUB snapshot заменён описанием без повторной публикации контактов кандидата. DOC-05 содержит ранний loading-снимок; доказательство завершённого reload — DOC-05-confirmed и API-сравнение.
- template-*.png: пять desktop-предпросмотров одного синтетического документа.
- preview-mobile.png / geometry: BUG-001 при 390×844.
- editor-mobile.png / home-mobile.png: responsive-просмотр; браузерный scrollbar уменьшает доступную ширину 390 до 375 px.
- export-modern.pdf / PNG и export-inspection.json: реальный PDF и анализ PDF/DOCX/Markdown. DOCX скачан и структурно прочитан, но не прошёл визуальный просмотр из-за отсутствия LibreOffice/Word; бинарный DOCX не публикуется как проверенный документ.
- schema-catalog.json / sql-*.json: фактическая схема, JOIN и отсутствие зависимостей после DELETE.
- pub-*-http.json: HTTP публичной страницы/PDF. public-mobile-geometry.json: публичная страница на 390 px.

Нулевой Console warn/error наблюдался в конце браузерной проверки; это не полная гарантия отсутствия ошибок за всё время. Запись Browser Network/HAR не собиралась. Пароли, API keys, JWT, refresh tokens, cookies и реальные аккаунты в набор не входят.
