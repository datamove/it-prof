# Обработка текста

## Просмотр

Скачайте файл с текстом Алисы в стране чудес из интернета

`wget -O Alice.txt http://www.gutenberg.org/files/11/11-0.txt`

Попробуйте разные команды вывода текста

* `cat` - просто вывести содержимое
* `head` - вывести начало файла
* `head -5`
* `tail` - вывести конец файла
* less - интерактивный просмотрщик (выход - q)

пробел, b - страницу вперед, назад
стрелки - на строку вперед, назад 
/что-то - найти что-то (регулярное выражение) - поиск вперед
?что-то - поиск назад

## Редактирование

`nano`

## Поиск в тексте

### Подсчет слов

`wc` - word count

`wc -l` - подсчет строк

### поиск

* grep Alice Alice.txt # все строки, где встречается Alice
* grep -c Alice Alice.txt # подсчитать (count)
* grep -o Alice Alice.txt #выводить только сматченную подстроку
* grep -i Alice Alice.txt #игнорирование регистра
* grep -v Alice Alice.txt #инверсия - выводить кроме сматченных
* grep Alice * #искать во всех файлах в текущей папке
* grep -r Alice * #рекурсивно

### Как программы работают вместе

Выход одной программы может подаваться на вход другой программы c помощью трубы.

```bash
cat Alice.txt | wc
grep Alice Alice.txt | wc
cat Alice.txt | grep Alice | wc
```

## Потоки ввода-вывода

```bash
grep Alice Alice.txt > Alice-only.txt
wc Alice-only.txt
```

Добавление в существующий файл

```bash
grep Alice Alice.txt >> Alice-only.txt
wc Alice-only.txt
```

## Сортировка

```bash
sort Alice.txt > Alice-sorted.txt
less Alice-sorted.txt
```

или

```bash
cat Alice.txt | sort > Alice-sorted.txt
less Alice-sorted.txt
```

Выводить только уникальные строки:

```bash
cat Alice.txt | sort -u > Alice-unique.txt
less Alice-unique.txt
```


