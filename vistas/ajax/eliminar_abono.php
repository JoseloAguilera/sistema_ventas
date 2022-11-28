<?php
/*-----------------------
Autor: Fernando Britos (-_-)
http://www.softwys.com
Fecha: 03-01-2018
Version de PHP: 7.0.0
----------------------------*/
include 'is_logged.php'; //Archivo verifica que el usario que intenta acceder a la URL esta logueado
/* Connect To Database*/
require_once "../db.php";
require_once "../php_conexion.php";
/*Inicia validacion del lado del servidor*/
if (empty($_POST['id_abono'])) {
    $errors[] = "ID vacío";
    console.log("esta vacio");
} else if (!empty($_POST['id_abono'])){
    if (isset($_POST['id_abono'])) {
        console.log(id_abono);
        $id_abono = intval($_POST['id_abono']);
        $del1       = "update creditos_abonos set estado='1' where id_abono ='".$id_abono."'";
        //$del2       = "delete from detalle_fact_ventas where id_factura='" . $id_factura . "'";
        if ($delete1 = mysqli_query($conexion, $del1) ) {
            ?>
      <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Aviso!</strong> Abono anulado Correctamente
      </div>
      <?php
} else {
            ?>
      <div class="alert alert-danger alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <strong>Error!</strong> No se pudo anular
      </div>
      <?php

        }
    }

} else {
    $errors[] = "Error desconocido.";
}

if (isset($errors)) {

    ?>
  <div class="alert alert-danger" role="alert">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong>Error!</strong>
    <?php
foreach ($errors as $error) {
        echo $error;
    }
    ?>
  </div>
  <?php
}

?>