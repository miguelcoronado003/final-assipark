<?php
include("../php/conection.php");
session_start();
if (!empty($_POST['btningresar'])){
    if (!empty($_POST['usuario']) and !empty($_POST['password'])) {
        $usuario=$_POST["usuario"];
        $clave=$_POST["password"];
        $query="select u.nombre, u.contraseña, t.tipousuario, t.idtipousuario from usuario u, tipo_usuario t where t.IdTipoUsuario = u.IdTipoUsuario and nombre ='$usuario' and contraseña='$clave'";
        $result_login = mysqli_query($conexion, $query);
        if ($datos=$result_login->fetch_object()){
            $_SESSION['nombre']= $datos->nombre;
            $_SESSION['tipousuario']= $datos->tipousuario;
            $_SESSION['idtipousuario']= $datos->idtipousuario;
            if($datos->idtipousuario == 1 or $datos->idtipousuario == 2 ){
                header("Location:../Dashboard-Administrador/DashboardAdmin.html");
            }
            elseif($datos->idtipousuario == 3){
                header("Location:../Dashboard-Vigilante_mod/DashboardUser.php");
            }
        } else{
            echo "<div class='alert alert-danger'> acceso denegado </div>";
        }
    }
}
?>