<?php
header("Content-Type: application/json; charset=UTF-8");
include __DIR__ . '/database.php';

$sql = "SELECT * FROM product_items where category='baju pria'";
$result = mysqli_query($conn, $sql);

$products = [];

while ($row = mysqli_fetch_assoc($result)) {
    $products[] = [
        "id"          => $row["id"],
        "name"        => $row["name"],
        "price"       => $row["price"],
        "promo"       => $row["promo"],
        "description" => $row["description"],
        "images"      => $row["images"],
        "stock"       => $row["stock"],
        "vendors"     => $row["vendors"],
        "category"    => $row["category"]
    ];
}

echo json_encode($products);