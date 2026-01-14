<?php
header("Content-Type: application/json; charset=UTF-8");
include_once 'database.php';

$email    = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

if ($email === '' || $password === '') {
    echo json_encode([
        "success" => false,
        "message" => "Data kosong"
    ]);
    exit;
}

$stat = $conn->prepare("SELECT id, name, password FROM users WHERE email = ?");
$stat->bind_param("s", $email);
$stat->execute();
$stat->bind_result($id, $name, $hashed_password);

if ($stat->fetch()) {
    if (password_verify($password, $hashed_password)) {
        echo json_encode([
            "success" => true,
            "message" => "Login Berhasil",
            "user" => [
                "id" => $id,
                "name" => $name,
                "email" => $email
            ]
        ]);
    } else {
        echo json_encode([
            "success" => false,
            "message" => "Password Salah"
        ]);
    }
} else {
    echo json_encode([
        "success" => false,
        "message" => "Email tidak ditemukan"
    ]);
}
