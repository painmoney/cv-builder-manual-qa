# BUG-001 Правая часть Modern preview обрезана на мобильной ширине

Статус: Open. Severity: Major. Priority: P2. Воспроизводимость: 2/2, включая reload без изменения кода.

## Окружение

https://cv-builder-qa.vercel.app, chore/qa-staging-setup, commit 36cdd833b299af165338e13137b2aa7c06935170; Windows 25H2 build 26200, управляемый Chromium-браузер, viewport 390×844, device emulation не использовалась. Backend только staging jerwfvhpoanoukxiyvwq.

## Предусловия и данные

Войти своим синтетическим пользователем. Создать/сохранить резюме с именем QA Portfolio Candidate, текстом Synthetic controlled document for API and export checks., опытом с периодом 2024-2025. Открыть preview и выбрать Современный IT.

## Шаги

1. Установить viewport 390×844.
2. Открыть /resume-preview/<свой UUID>?template=modern.
3. Просмотреть заголовок, about, правый край блока опыта.
4. Обновить страницу и повторить просмотр.

## Ожидаемый результат

Предпросмотр позволяет прочитать заполненные поля на мобильном экране: за счёт адаптации, масштабирования или доступного скролла, без скрытой обрезки текста.

## Фактический результат

Видна только левая часть A4-шаблона. Имя обрезано справа, часть описания и период опыта выходят за видимую область. Шаблон имеет ширину 793.7 px, внешний контейнер — 343.2 px, overflow:hidden. Правый край заголовка 734.9 px при viewport 390. Горизонтального скролла нет; documentWidth=375 сам по себе не доказывает адаптивность.

## Доказательства

- [Мобильный screenshot](../evidence/preview-mobile.png)
- [Фактическая геометрия DOM](../evidence/preview-mobile-geometry.json)
- [Desktop Modern для сравнения](../evidence/template-modern.png)
- [DOM-наблюдения, UI-02-exploratory и UI-02-repeat](../evidence/ui-observations.json)

Связи: UI-02, TC-07. Возможная причина по исходникам: фиксированная 210mm ширина ModernTemplate и overflow:hidden в ResumePreview. Это объяснение механизма, не отдельное доказательство воспроизведения.

Исправление не вносилось; retest и регрессия исправления не заявляются. Публичное /cv использует отдельную адаптивную обёртку и в этот дефект не входит.
