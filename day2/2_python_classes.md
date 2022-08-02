# Занятие 3. Программирование на Python. Классы и объектно-ориентированное программирование. 

Схраняем сведения о животных.

Массу, рост, число ног

Как сохранять? Например в словаре?

```python
animals = {
  "hippo": { "weight": 2000, "height": 1.0, "legs": 4 },
  "duck": { "weight": 5.0, "height": 0.3, "legs": 2 },
  "python": { "weight": 20.0, "height": 0.15, "legs": 0 },
}

animals["duck"]["weight"]
```

А теперь рассмотрим метод инкапсуляции данных в одной структуре - классе.


```python
class Animal():

  def __init__(self, weight, height, legs):
      self.weight=weight
      self.height=weight
      self.legs=weight
```

Использование:

```python
duck = Animal(5.0, 0.3, 2)
duck.weight
```

Путь мы хотим определить, тяжелее ли утка человека?
Добавим функция для сравнения веса. Заодно еще добавим функцию для "движения". 


```python
class Animal():

  def __init__(self, weight, height, legs):
      self.weight=weight
      self.height=height
      self.legs=legs

  def is_heavier(self, w):
      return True if self.weight > w else False

  def go(self):
      print("I go")
      return
  
```

Используем:

```python
duck=Animal(5.0, 0.3, 2)
hippo=Animal(2000.0, 1.5, 4)
print(duck.is_heavier(70))
print(hippo.is_heavier(70))
```


## Наследование

Разделим животных на летающих и ходящих:

```python
class FlyingAnimal(Animal):

  def __init__(self, weight, height, legs, max_flight_height):
      self.weight=weight
      self.height=height
      self.legs=legs
      self.max_flight_height=max_flight_height
```

и

```python
class WalkingAnimal(Animal):
  pass
```

Мы можем не переопределять методы из родительского класса, они наследуются!

```python
fox=WalkingAnimal(50.,.6,4)
print(fox.is_heavier(40))
print(fox.go())

eagle=FlyingAnimal(50., .6 , 2, 30)
print(eagle.is_heavier(40))
print(eagle.go())
```


## Полиморфизм

Мы можем переопределить функцию go() для FlyingAnimal:

```python
class FlyingAnimal(Animal):

  def __init__(self, weight, height, legs, max_flight_height):
      self.weight=weight
      self.height=height
      self.legs=legs
      self.max_flight_height=max_flight_height

  def go(self):
      print("I fly")
      return
```

и тогда Орел будет "летать", а лиса по прежнему "ходить".

```python
eagle=FlyingAnimal(50., .6 , 2, 30)
print(eagle.is_heavier(40))
print(eagle.go())
```


## Задание

Где еще можно применить концепцию классов. Придумайте еще один пример для иллюстрации одного из свойств ООП - инкапсуляции, наследования, полиморфизма. Или сразу всех.


