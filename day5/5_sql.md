# SQL

## install pandasql

`!pip install pandasql`

## Примеры

```python
data = pd.DataFrame({
   "height":[162,180,170,155],
   "weight":[54.5,90, 50.1, 45.8],
   "sex":[1,0, 1, 0]
})
data
```


### выведем таблицу

```python
import pandasql as ps
ps.sqldf("select * from data")
```

### С условием

```python
ps.sqldf("select * from data where height>170")
```

### Подсчитаем число строк

`ps.sqldf = "select count(*) from data"`

### Сколько 


### Агрегаты

```python
ps.sqldf("select avg(height) from data")
ps.sqldf("select avg(height) from data group by sex")
ps.sqldf("select avg(weight) from data")
ps.sqldf("select avg(weight) from data group by sex")
```

Подсчитайте так же max(), min()


