<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Methods: HEAD, GET, POST, PUT, PATCH, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header('Content-Type: application/json');
$method = $_SERVER['REQUEST_METHOD'];
if ($method == "OPTIONS") {
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method,Access-Control-Request-Headers, Authorization");
header("HTTP/1.1 200 OK");
die();
}

require "config.php"; // Archivo de configuración de la base de datos

if (isset($_GET['id'])) {
    $idMascota = $_GET['id']; // Obtener el ID de la mascota a eliminar
    
    $sql = "DELETE FROM pets WHERE id = '$idMascota'"; // Cambiar la consulta para eliminar la mascota por su ID

    if (mysqli_query($con, $sql)) {
        $response[] = array('mensaje' => "Mascota eliminada correctamente");
    } else {
        $response[] = array('mensaje' => "Error al eliminar la mascota: " . mysqli_error($con));
    }
} else {
    $response[] = array('mensaje' => "Método no permitido");
}

mysqli_close($con);

$json_string = json_encode($response);
echo $json_string;
?>
