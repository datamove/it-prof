# Программа на bash

Откройте редактор nano:

```bash
nano prog.sh
```

и вставьте туда такую программу:

```bash
textfile="Alice.txt"
cat $textfile | grep -Eo "\w+d Alice" | sort | uniq -c
```

Выйдите из редактора, сохранив файл и запустите вашу первую программу:


```bash
bash prog.sh
```

Для запуска ей нужен интерпретатор bash и мы его вызываем.

Но можно и дать знать системе, какой интерпретатор использовать. Снова откройте программув редакторе и доавьте первой строкой:

`#!/bin/bash`

Можете убедиться, что файл /bin/bash существует:

`ls -al /bin/bash`

Теперь программу можно запусать просто по имени файла, только надо сделать ее исполняемой:

`chmod +x prog.sh`

затем:

`./prog.bash`


## Программа с переменными

Задание. Отредактируйте вашу программу так, чтобы искомое слово Alice было тоже в переменной.


Ответ:

```bash
#!/bin/bash
textfile="Alice.txt"
search="Alice"
cat $textfile | grep -Eo "\w+d $search" | sort | uniq -c
```

Теперь сделаем программу с агрументами

```bash
#!/bin/bash
textfile=$1
search="Alice"
cat $textfile | grep -Eo "\w+d $search" | sort | uniq -c
```

`$1` - это специальная переменная, которая означает первый аргумент командной строки.


Задание: измените программу так, чтобы и слово для поиска можно было передавать вторым аргументом.


Решение:

```bash
#!/bin/bash
textfile=$1
search=$2
cat $textfile | grep -Eo "\w+d $2" | sort | uniq -c
```

Делаем настоящий фильтр, который работает в конвеере:

```bash
#!/bin/bash
textfile=$1
search=$2
if [ -f $1 ];
then
cat $textfile | grep -Eo "$2" | sort | uniq -c
else
cat </dev/stdin | grep -Eo "$1" | sort | uniq -c
fi
```

Запуск:

```bash
cat Alice.txt | ./prog.sh Alice
```

или по-старому:

```bash
./prog.sh Alice.txt Alice
```





