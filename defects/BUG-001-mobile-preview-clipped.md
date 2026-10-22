# BUG-001 Правая часть Modern preview обрезана на мобильной ширине

Статус: Open. Severity: Major. Priority: P2. Воспроизводимость: 2/2, включая reload без изменения кода.

Баг-трекинг: [GitHub Issue №1](https://github.com/painmoney/cv-builder-manual-qa/issues/1).

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

Имя обрезано справа, часть описания и период опыта выходят за видимую область. Прочитать скрытую часть горизонтальной прокруткой нельзя. После обновления страницы проблема сохраняется.

## Доказательства

- [Мобильный screenshot](../evidence/preview-mobile.png)
- [Desktop Modern для сравнения](../evidence/template-modern.png)


Связи: UI-02, [TC-14](../test-cases/TC-14.md) (выделен из исходного TC-07). Дополнительная диагностика: [измерения DOM](../evidence/raw/preview-mobile-geometry.json), [наблюдения UI-02-exploratory / UI-02-repeat](../evidence/raw/ui-observations.json).

Исправление не вносилось; retest и регрессия исправления не заявляются. Публичное /cv использует отдельную адаптивную обёртку и в этот дефект не входит.
