<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список студентов</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
        }

        header {
            text-align: center;
            padding: 40px 20px;
            color: white;
            text-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }

        header h1 {
            margin: 0;
        }

        .container {
            max-width: 900px;
            margin: 0 auto 50px auto;
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 1em;
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #4a90e2;
            color: white;
            border-radius: 5px 5px 0 0;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a.button {
            display: inline-block;
            padding: 8px 15px;
            background-color: #4a90e2;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-weight: 700;
            transition: background-color 0.3s;
        }

        a.button:hover {
            background-color: #357ab8;
        }
    </style>
</head>
<body>
<header>
    <h1>Список студентов</h1>
    <a href="/" class="button">Главная</a>
</header>

<div class="container">
    <a href="add" class="button" style="margin-bottom: 20px; display: inline-block;">Добавить студента</a>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>Фамилия</th>
            <th>Имя</th>
            <th>Отчество</th>
            <th>Телефон</th>
            <th>Действия</th>
        </tr>
        </thead>
        <tbody>
        <#list students as student>
            <tr>
                <td>${student.id}</td>
                <td>${student.lastName}</td>
                <td>${student.firstName}</td>
                <td>${student.middleName}</td>
                <td>${student.phoneNumber}</td>
                <td><a href="showone?id=${student.id}" class="button">Редактировать</a></td>
            </tr>
        </#list>
        </tbody>
    </table>
</div>
</body>
</html>
