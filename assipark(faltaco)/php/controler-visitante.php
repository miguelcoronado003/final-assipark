<?php
include("../php/conection.php");
if (!empty($_POST['btnvisitante'])){
    if (!empty($_POST['nombre']) and !empty($_POST['apellido']) and !empty($_POST['celular']) and !empty($_POST['documento']) and !empty($_POST['tipodoc'])) {
        $tipo=$_POST["tipodoc"];
        $nombre=$_POST["nombre"];
        $apellido=$_POST["apellido"];
        $celular=$_POST["celular"];
        $documento=$_POST["documento"];
        $sql=$conexion->query("insert into visitante (nombre, apellido, celular1, numeroDocumento, IdTipoIdentificacion) values ('$nombre' , '$apellido', '$celular', '$documento', (select IdTipoIdentificacion from tipo_identificacion where Identificacion = '$tipo'))");
        echo "<div class='alert alert-success'> Visitante registrado </div>";
    }
}
?>