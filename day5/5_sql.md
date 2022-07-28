# SQL

## install pandasql

`pip install pandasql`

## Примеры

### выведем таблицу

```python
from pandasql import sqldf
sqldf("select * from data")
```

### С условием

```python
sqldf("select * from data where height>170")
```

### Подсчитаем число строк

`sqldf = "select count(*) from data"`

### Сколько 


### Агрегаты

```python
sqldf("select avg(height) from data")
sqldf("select avg(height) from data group by sex")
sqldf("select avg(weight) from data")
sqldf("select avg(weight) from data group by sex")
```

Подсчитайте так же max(), min()


