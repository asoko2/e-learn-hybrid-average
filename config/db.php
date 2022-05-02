<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}

$host = 'localhost';
$db = 'e-learn-hybrid';
$user = 'root';
$pass = '';

$conn = mysqli_connect($host, $user, $pass, $db);