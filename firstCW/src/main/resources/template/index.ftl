<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Главная — Студенческая база</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
        }

        header {
            text-align: center;
            padding: 60px 20px 40px 20px;
            color: white;
            text-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }

        header h1 {
            font-size: 3em;
            margin: 0;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 60vh;
            gap: 40px;
            flex-wrap: wrap;
        }

        .card {
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
            padding: 50px 60px;
            text-align: center;
            text-decoration: none;
            color: #4a90e2;
            font-size: 1.3em;
            font-weight: 700;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 30px rgba(0,0,0,0.3);
            color: #357ab8;
        }

        footer {
            text-align: center;
            padding: 20px;
            color: white;
            font-size: 0.9em;
            background: rgba(0,0,0,0.1);
        }

        @media (max-width: 600px) {
            .container {
                flex-direction: column;
                gap: 20px;
            }
        }
    </style>
</head>
<body>
<header>
    <h1>Студенческая база</h1>
    <p>Управление студентами стало красивым и простым</p>
</header>

<div class="container">
    <a href="add" class="card">Добавить нового студента</a>
    <a href="show" class="card">Просмотреть всех студентов</a>
</div>

<footer>
    &copy; 2025 Студенческая база
</footer>
</body>
</html>
