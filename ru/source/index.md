---
title: Введение
type: guide
order: 2
---

## Что такое QuantNet?

**QuantNet** — компания, которая занимается исследованиями и разработкой торговых стратегий для финансовых рынков.

Мы **предлагаем** пользователям
* **принять участие в розыгрыше 500 тысяч рублей за квартал**, отправив стратегии в соревнования.
* открытые инструменты для выгрузки **данных** с финансовых **бирж**.
* открытые инструменты для **создания** торговых **стратегий**. Вы можете **применить их для частной торговли**.
* **протестировать** любую финансовую **идею**.
* дружественное и **быструю обратную связь** от комьюнити и нас в vk, Telegram.

Библиотеки и инструменты написаны на **python**. 
Разработку стратегий можно вести в **Jupyter Notebook** или **Jupyter lab**. **Мы вам даём инстансы до 8 гб оперативной памяти на каждую стратегию.** 
Посмотрите пример, который демонстрирует простоту создания торговых стратегий.
## Начало работы
**Цель.** Познакомить вас с тем как просто создавать и тестировать идеи финансовых стратегий.

**Необходимые условия.**
* Зарегистрируйтесь на платформе
* Откройте вкладку стратегии в разработке.
* Нажмите создать стратегию или скопируйте любой шаблон готовых стратегий.

### Исторические финансовые данные 
Данные цен компаний Google и Apple за последние 4*365 дней, отсортированные в хронологическом порядке
```js
# Import quantnet libraries.
import qnt.data as qndata
import datetime as dt

instruments_names = ['NASDAQ:AAPL', 'NASDAQ:ADP']

data = qndata.load_data(
                       assets=instruments_names,
                       tail = dt.timedelta(days=4*365),
                       dims = ("time", "field", "asset"),
                       forward_order=True)
```



```js
data.sel(field="open").to_pandas().tail()
```

<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th>asset</th>
      <th>NASDAQ:AAPL</th>
      <th>NASDAQ:GOOGL</th>
    </tr>
    <tr>
      <th>time</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2020-08-03</th>
      <td>12118.40</td>
      <td>1491.00</td>
    </tr>
    <tr>
      <th>2020-08-04</th>
      <td>12222.84</td>
      <td>1486.71</td>
    </tr>
    <tr>
      <th>2020-08-05</th>
      <td>12250.28</td>
      <td>1476.82</td>
    </tr>
    <tr>
      <th>2020-08-06</th>
      <td>12365.36</td>
      <td>1476.15</td>
    </tr>
    <tr>
      <th>2020-08-07</th>
      <td>12678.96</td>
      <td>1509.04</td>
    </tr>
  </tbody>
</table>
</div>


### Создание финансовой стратегии

* У вас есть **капитал**, который вы ходите **распределить между активами** (Google и Apple).
* Стратегии на платформе создаются в виде **весов** от финансового **партфеля**.
* **Сколько процентов от капитала инвестировать в конкретный актив** - задача алгоритма.
* Каждый торговый день доля инвестиций в актив может менятся, вы или зарабатываете угадывая направления цен или теряете капитал.

Идея стратегии. Вёзмём абсолютные изменения цен открытия. Цена текущего дня минус цена ппредыдущего дня.
Получившиеся изменения возмём как веса активов. 


```python
price_open = data.sel(field="open")
strategy = price_open - price_open.shift(time=1)
```

### Проверка финансовой стратегии

* Сколько вы сможете заработать или потерять? - показывает эквити
* Хорошая идея или нет - показывает кофициент шарпа. Чем больше тем лучше.

### Отправка стратегии в конкурс



## Готовы к большему?

Пока мы лишь кратко представили самые основные возможности платформы **QuantNet** — остаток этого руководства посвящён более детальному рассмотрению этих и других возможностей, поэтому советуем прочитать его целиком!

<div id="video-modal" class="modal"><div class="video-space" style="padding: 56.25% 0 0 0; position: relative;"><iframe src="https://player.vimeo.com/video/247494684?dnt=1" style="height: 100%; left: 0; position: absolute; top: 0; width: 100%; margin: 0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div><script src="https://player.vimeo.com/api/player.js"></script><p class="modal-text">Видео <a href="https://www.vuemastery.com" target="_blank" rel="sponsored noopener" title="Vue.js курсы на Vue Mastery">Vue Mastery</a>. Посмотрите бесплатный курс Vue Mastery <a href="https://www.vuemastery.com/courses/intro-to-vue-js/vue-instance/" target="_blank" rel="sponsored noopener" title="Vue.js курсы на Vue Mastery">Введение в курс Vue</a>.</div>
