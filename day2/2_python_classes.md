# Занятие 3. Программирование на Python. Классы и объектно-ориентированное программирование. 

Пусть мы хотим вычислить вес человека. В физике вес - это сила, с которой масса давит на опору. То есть человек на зeмлю. На земле это еще называется сила тяжести. 

Формула: P = m * g , где

* m - масса тела
* g - ускорение свободного падения (на Земле - 9.8 Н)
* P - Вес тела.

Мы можем написать вот такую функцию:

```python
def get_weigh_on_Earth(m):
    P = m * 9.8
    return P
```

Мы можем так же определить и функцию с двумя аргументами, в которую передаем и вес, и ускорение свободного падения:

```python
def get_weigh(m, g):
    P = m * g
    return P
```

Но все равно стоит вопрос, где хранить значения g? Когда мы соединим вместе переменные и функции для работы с ними, мы получаем классы.

## Инкапсуляция

```class Planet:
     def __init__(self, g):
        self.g = g


     def get_weight(self, m):
        return self.g * m
```

Работа с классами:

```python
earth = Planet(9.8)
earth.get_weight(50)
```

для Луны:

```
moon = Planet(1.62)
moon.get_weight(50)
```

## Наследование

```python
class PlanetWithSatellites(Planet):
     def __init__(self, g, number_of_satellites=0):
        self.g = g
        self.number_of_satellites = number_of_satellites

     def get_number_of_satellites(self):
        return self.number_of_satellites
```

```python
earth = PlanetWithSatellites(9.8, 1)
print(earth.get_number_of_satellites())
print(earth.get_weight(50))
```

для Луны:

```
moon = PlanetWithSatellites(1.62, 0)
print(moon.get_weight(50))
print(moon.earth.get_number_of_satellites())
```


