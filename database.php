<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "db_ecommerce";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    http_response_code(500);
    echo json_encode([
        "status" => false,
        "message" => "Gagal koneksi database"
    ]);
    exit;
}
