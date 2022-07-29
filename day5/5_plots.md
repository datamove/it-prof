# Отрисовка графиков

С использованием библиотеки matplotlib

## Начало работы

```python
import matplotlib.pyplot as plt
```

## Первый график 

```python
y_points = [1, 2, 3, 4]

plt.plot(y_points)
plt.ylabel('some numbers')
plt.show()
```

![plt_1](../img/plt_1.jpg)

## С точками x,y

```python
x_points = [1, 2, 3, 4]
y_points = [ x**2 for x in x_points]
plt.plot(x_points, y_points)
```

![plt_2](../img/plt_2.jpg)

## Разный стиль и масштаб шкалы

```python
plt.plot(x_points, y_points, 'ro')
plt.axis([0, 6, 0, 20])
plt.show()
```

![plt_3](../img/plt_3.jpg)

## Гистограммы

```python
import numpy as np

mu, sigma = 100, 15
x = mu + sigma * np.random.randn(10000)

# the histogram of the data
n, bins, patches = plt.hist(x, 50, density=1, facecolor='g', alpha=0.75)


plt.xlabel('Smarts')
plt.ylabel('Probability')
plt.title('Histogram of IQ')
plt.text(60, .025, r'$\mu=100,\ \sigma=15$')
plt.axis([40, 160, 0, 0.03])
plt.grid(True)
plt.show()
```

![plt_histogramm](../img/plt_histogramm.jpg)

