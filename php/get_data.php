<?php
include "db.php";

$result = mysqli_query($conn, "SELECT * FROM info");
$info = mysqli_fetch_assoc($result);

$skills = [];
$result = mysqli_query($conn, "SELECT * FROM skills");
while ($row = mysqli_fetch_assoc($result)) {
    $skills[] = $row;
}

$projects = [];
$result = mysqli_query($conn, "SELECT * FROM projects");
while ($row = mysqli_fetch_assoc($result)) {
    $projects[] = $row;
}

echo json_encode([
    "info" => $info,
    "skills" => $skills,
    "projects" => $projects
]);
?>
