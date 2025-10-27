<?php
// Habilitar errores para depuración local
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
ini_set('log_errors', '1');
ini_set('error_log', '/Applications/XAMPP/xamppfiles/logs/php_error.log');

if(!isset($_SESSION)) {
    session_start();
}
ob_start();

require_once "vistas/db.php";
require_once "classes/Login.php";

// Crear instancia de Login
$login = new Login();

// Verificar login
if ($login->isUserLoggedIn() == true) {
    error_log("Login exitoso - intentando redirigir...");
    if (headers_sent($file, $line)) {
        error_log("No se pueden enviar headers, ya se envió salida en $file en la línea $line");
        // fallback por JS si los headers ya se enviaron
        echo "<script>window.location.href='/sistema_ventas/vistas/html/principal.php';</script>";
        exit();
    } else {
        header("Location: /sistema_ventas/vistas/html/principal.php");
        exit();
    }
} else {
    error_log("Error en login: " . print_r($login->errors, true));
    // the user is not logged in. you can do whatever you want here.
    // for demonstration purposes, we simply show the "you are not logged in" view.
    ?>
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <link rel="shortcut icon" href="assets/images/favicon.png">

        <title>Facturación v.3</title>

        <link href="../plugins/switchery/switchery.min.css" rel="stylesheet" />

        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css">
        <link href="assets/css/style.css" rel="stylesheet" type="text/css">

        <script src="assets/js/modernizr.min.js"></script>

    </head>
    <body>

        <div class="wrapper-page">

            <div align-items="center">
                <img src="img/logo.png" class="img-responsive" alt="profile-image" width="400px" height="100px">
            </div><br>

            <form method="post" accept-charset="utf-8" action="login.php" name="loginform" class="form-signin">
                <?php
// show potential errors / feedback (from login object)
    if (isset($login)) {
        if ($login->errors) {
            ?>
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <strong>Error!</strong>

                            <?php
foreach ($login->errors as $error) {
                echo $error;
            }
            ?>
                        </div>
                        <?php
}
        if ($login->messages) {
            ?>
                        <div class="alert alert-success alert-dismissible" role="alert">
                            <strong>Aviso!</strong>
                            <?php
foreach ($login->messages as $message) {
                echo $message;
            }
            ?>
                        </div>
                        <?php
}
    }
    ?>

                <div class="form-group row">
                    <div class="col-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="mdi mdi-account"></i></span>
                            <input class="form-control" type="text" name="usuario_users" required="" placeholder="Usuario" autocomplete="off" autofocus="">
                        </div>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-12">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="mdi mdi-radar"></i></span>
                            <input class="form-control" type="password" name="con_users" required="" placeholder="Contraseña" autocomplete="off">
                        </div>
                    </div>
                </div>

                <div class="form-group text-right m-t-20">
                    <div class="col-xs-12">
                        <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit" name="login" id="submit"><i class='fa fa-unlock'></i> Iniciar Sesión
                        </button>
                    </div>
                </div>
            </form>
        </div>


        <script>
            var resizefunc = [];
        </script>

        <!-- Plugins  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/tether.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/wow.min.js"></script>
        <script src="assets/js/jquery.nicescroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- Custom main Js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>

    </body>
    </html>
    <?php
}