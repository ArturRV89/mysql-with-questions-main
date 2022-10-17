## Запуск контейнера с MySQL


```shell
make build # Соберет контейнер
make up # запустит контейнер, нужно подождать около до минуты перед следующей командой
make exec # подключится к mysql, можно сразу писать команды MySQL, делается из соседнего таба
```

## Работа в MySQL
```mysql
SHOW DATABASES; -- показываем все базы данных
USE intern; -- выбираем базу MySQL, в ней решаем задачи
```

## Задачи

/*
1. Напишите запрос, чтобы вывести список всех таблиц в базе данных
   SHOW TABLES;

2. Напишите запрос, чтобы вывести  все счета за последние 2 месяца
    SELECT *
    FROM invoice
    WHERE DATE_SUB('21-07-19', INTERVAL 2 MONTH) <= date(created_at);

3. Напишите запрос, чтобы вывести  даты счетов в формате "June 15 2017"
    SELECT DATE_FORMAT(created_at, '%M.%d.%Y')
    AS new_format
    FROM invoice;

4. Напишите запрос, чтобы вывести  клиентов и их питомцев через запятую. Например: Shevchenko | Tayson, Rex, Baron
    SELECT client.last_name, GROUP_CONCAT(pet.alias) AS ConcatenatedString
    FROM client
    JOIN pet ON client.id=pet.client_id
    GROUP BY client.id, client.last_name;

5. Напишите запрос, чтобы вывести список ФИО всех клиентов. Например: Solyanka E.S.
    SELECT last_name,
    CONCAT(SUBSTRING(first_name, 1, 1), ".",
    SUBSTRING(middle_name, 1, 1), ".")
    AS ThirdAndFourthCharacters
    FROM client;

6. Напишите запрос, который посчитает сумму всех счетов по клиентам. Вывод 2 колонки: FIO, Summ.
    SELECT CONCAT(first_name," ", middle_name, " ", last_name) AS FIO,
    SUM(amount) AS Summ
    FROM client
    JOIN invoice ON client.id=invoice.client_id
    GROUP BY client.id;

7. Сделать дамп базы через CLI
    docker exec -i intern-mysql mysqldump -u root -p123456 --databases intern > data-dump.sql;

8. Удалить базу и импортировать из дампа через CLI
    drop database intern;

    docker exec -i intern-mysql mysql -u root -p123456 intern < data-dump.sql;
*/
