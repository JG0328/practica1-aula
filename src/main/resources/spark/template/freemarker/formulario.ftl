<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inicio de Sesion</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<h2 class="login">Digite sus credenciales</h2>
<div class="card">
    <form action="/auth" method="POST">
        Correo electronico: <br/><input name="usuario" type="text"/><br/>
        Contrasena: <br/><input name="contrasena" type="password"/><br/>
        <button name="Enviar" type="submit">Iniciar Sesion</button>
        <#-- <input type="submit" value="Enviar"/>-->
    </form>
</div>
</body>
</html>