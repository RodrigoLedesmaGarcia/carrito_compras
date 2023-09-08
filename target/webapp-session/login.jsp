<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de login</title>
</head>
<style>
    .w {
        width: 100%;
        height: 100vh;
        background-color: pink;
        background-size: cover;
        background-position: center; margin: 0;
        padding: 0;
        margin: 0;
        text-align: center;

      }

</style>
<body>
<div class="w">
<h1>Iniciar sesión</h1>
<form action="/webapp-session/login" method="post">
  <div>
    <label for="username">Username</label>
    <div>
      <input type="text" name="username" id="username">
    </div>
  </div>
  <br>
  <div>
    <label for="password">Password</label>
    <div>
      <input type="password" name="password" id="password">
    </div>
  </div>
  <br>
  <div>
    <input type="submit" value="Login">
  </div>
</form>
</div>
</body>
</html>