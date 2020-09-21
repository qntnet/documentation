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
периодических индикаторов вы можете получать информацию с квартальной (qf),
годовой периодичностью (af) или получить значение «за последние двенадцать
месяцев» (ltm).

|  Наименование данных  | Описание                                  |
| ------------------- | ----------------------------------------- |
| sales\_revenue\_ltm / sales\_revenue\_af / sales\_revenue\_qf     | Revenue from sales |
| total\_revenue\_ltm / total\_revenue\_af / total\_revenue\_qf     | Total revenue |
| cashflow\_op\_ltm / cashflow\_op\_af / cashflow\_op\_qf    | Cashflow from operating activities |
| cogs\_ltm / cogs\_af / cogs\_qf | Cost of goods sold |
| divs\_ltm / divs\_af / divs\_qf | Dividends |
| eps\_ltm / eps\_af / eps\_qf | Earnings per share |
| income\_ltm / income\_af / income\_qf /  | Income |
| interest\_expense\_ltm / interest\_expense\_af / interest\_expense\_qf | Interest expense |
| operating\_expense\_ltm / operating\_expense\_af / operating\_expense\_qf | Operating expenses |
| operating\_income\_ltm / operating\_income\_af / operating\_income\_qf | Operating income |
| rd\_expense\_ltm / rd\_expense\_af / rd\_expense\_qf | Research and development expense |
| sales\_ps\_ltm / sales\_ps\_af / sales\_ps\_qf | sales per share |
| sga\_expense\_ltm / sga\_expense\_af / sga\_expense\_qf   | Selling, general & administrative expense |

_Таблица 2. Periodical indicators._

Мы используем фундаментальные данные из отчетов компании, хранящиеся в
базе данных EDGAR. Информацию можно найти вручную, введя ticket компании
на [сайте](https://www.sec.gov/edgar/searchedgar/companysearch.html)
комиссии по ценным бумагам и биржам США. Отчеты состоят из фактов
(facts), представленных в основном в формате XBRL. Наименование фактов
можно найти [здесь](http://xbrlview.fasb.org/yeti).