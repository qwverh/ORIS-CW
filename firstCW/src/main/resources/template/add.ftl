<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Добавить студента</title>
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
            max-width: 500px;
            margin: 0 auto 50px auto;
            background: white;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: 700;
        }

        input[type="text"] {
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 1em;
        }

        input[type="submit"], a.button {
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 8px;
            padding: 12px;
            font-size: 1em;
            font-weight: 700;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover, a.button:hover {
            background-color: #357ab8;
        }

        .buttons {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
<header>
    <h1>Добавить нового студента</h1>
</header>

<div class="container">
    <form method="post" action="add">
        <label for="lastName">Фамилия</label>
        <input type="text" id="lastName" name="lastName" required>

        <label for="firstName">Имя</label>
        <input type="text" id="firstName" name="firstName" required>

        <label for="middleName">Отчество</label>
        <input type="text" id="middleName" name="middleName">

        <label for="phoneNumber">Телефон</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required>

        <div class="buttons">
            <input type="submit" value="Добавить студента">
            <a href="show" class="button">Отмена</a>
        </div>
    </form>
</div>
</body>
</html>
