<?php
include "db.php";

$name = mysqli_real_escape_string($conn, $_POST["name"]);
$email = mysqli_real_escape_string($conn, $_POST["email"]);
$message = mysqli_real_escape_string($conn, $_POST["message"]);

$sql = "INSERT INTO messages (name, email, message) VALUES ('$name', '$email', '$message')";

if (mysqli_query($conn, $sql)) {
    echo "Message sent successfully! <a href='../index.html'>Back</a>";
} else {
    echo "Error: " . mysqli_error($conn);
}
?>
