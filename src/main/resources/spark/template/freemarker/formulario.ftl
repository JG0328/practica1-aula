<!DOCTYPE html>
<html>
<head>
    <title>Inicio de Sesion</title>
    <style>
        body {
            margin: 0;
            width: 100%;
            height: 100vh;
            font-family: "Exo", sans-serif;
            color: #fff;
            background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
            background-size: 400% 400%;
            animation: gradientBG 15s ease infinite;
        }
        @keyframes gradientBG {
            0% {
                background-position: 0% 50%;
            }
            50% {
                background-position: 100% 50%;
            }
            100% {
                background-position: 0% 50%;
            }
        }
        .card {
            /* Add shadows to create the "card" effect */
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.5);
            transition: 0.3s;
            width: 300px;
            height: 300px;
            margin: auto;
        }
        button, input {
            margin-top: 10px;
            margin-bottom: 10px;
        }
        input {
            width: 200px;
        }
        h2 {
            text-align: center;
            margin-top: 80px;
        }
        form {
            padding: 60px 40px;
        }
    </style>
</head>
<body>
<h2>Digite sus credenciales</h2>
<div class="card">
    <form action="/auth/" method="post" enctype="application/x-www-form-urlencoded">
        Correo electronico: <br/><input name="usuario" type="text"/><br/>
        Contrasena: <br/><input name="contrasena" type="password"/><br/>
        <button name="Enviar" type="submit">Iniciar Sesion</button>
        <#-- <input type="submit" value="Enviar"/>-->
    </form>
</div>
</body>
</html>