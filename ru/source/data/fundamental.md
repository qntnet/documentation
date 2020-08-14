Fundamental data
----------------

Подробнуию инструкцию как скачать фундаментальные данные можно получить
в [этом](https://quantnet.ai/referee/template/15325118/html) шаблоне.

## Instant indicators.

Такие данные отражают текущее состояние компании. Значение обновляется с
каждым выпущенным отчетом компании.

| Наименование данных    | Описание                                                                                                                                                        |
| ---------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| assets                 | Total Assets                                                                                                                                                    |
| assets\_curr           | Current Assets                                                                                                                                                  |
| equity                 | Common equity                                                                                                                                                   |
| liabilities            | Total liabilities                                                                                                                                               |
| liabilities\_curr      | Current liabilities                                                                                                                                             |
| debt\_lt               | Long term debt                                                                                                                                                  |
| debt\_st               | Short term debt                                                                                                                                                 |
| goodwill               | Goodwill                                                                                                                                                        |
| inventory              | Total inventory                                                                                                                                                 |
| ivestment\_short\_term | Short-Term investments                                                                                                                                          |
| invested\_capital      | Invested capital                                                                                                                                                |
| shares                 | Total shares outstanding. Если в отчете не содержится соответствующей информации, мы используем issued shares.                                                  |
| ppent                  | Property Plant and Equipment Net                                                                                                                                |
| cash\_equivalent       | Cash equivalents это инвестиционные ценные бумаги, предназначенные для краткосрочного инвестирования; у них высокое кредитное качество и высокая ликвидность.   |

_Таблица 1. Instant indicators._

## Periodical indicators. ##

Такие данные соответствуют определенному периоду. Например, доход. Для
периодических индикаторов вы можете получать информацию с квартальной,
годовой периодичностью или получить значение «за последние двенадцать
месяцев».

| Наименование данных | Описание                                  |
| ------------------- | ----------------------------------------- |
| sales\_revenue      | Revenue from sales |
| total\_revenue      | Total revenue |
| cashflow\_op        | Cashflow from operating activities |
| cogs                | Cost of goods sold |
| divs                | Dividends |
| eps                 | Earnings per share |
| income              | Income |
| interest\_expense   | Interest expense |
| operating\_expense  | Operating expenses |
| operating\_income   | Operating income |
| rd\_expense         | Research and development expense |
| sales\_ps           | sales per share |
| sga\_expense        | Selling, general & administrative expense |

_Таблица 2. Periodical indicators._

Мы используем фундаментальные данные из отчетов компании, хранящиеся в
базе данных EDGAR. Информацию можно найти вручную, введя ticket компании
на [сайте](https://www.sec.gov/edgar/searchedgar/companysearch.html)
комиссии по ценным бумагам и биржам США. Отчеты состоят из фактов
(facts), представленных в основном в формате XBRL. Наименование фактов
можно найти [здесь](http://xbrlview.fasb.org/yeti).