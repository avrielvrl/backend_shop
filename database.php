<?php
ini_set('display_errors', 1);
error_reporting(E_ALL);

$host = "mainline.proxy.rlwy.net";
$user = "root";
$pass = "BNWNmKoNCrGGmWbucAXQZKuRVeWjWkIm";
$db   = "railway";
$port = "18268";

$conn = mysqli_connect($host, $user, $pass, $db, $port);

if (!$conn) {
    http_response_code(500);
    echo json_encode([
        "status" => false,
        "message" => "Gagal koneksi database"
    ]);
    exit;
}
?>
