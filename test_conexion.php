<?php
<?php
require_once 'vistas/php_conexion.php';

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

try {
    $conexion = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if ($conexion) {
        echo "Conexión exitosa a la base de datos";
    }
} catch (Exception $e) {
    echo "Error de conexión: " . $e->getMessage();
}
?>