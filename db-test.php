<?php

$host = 'localhost';
$db = 'e-learn';
$user = 'root';
$pass = '';

$conn = mysqli_connect($host,$user,$pass,$db);

if(!$conn){
    die("Connection failed : " . mysqli_connect_error());
}else{
    echo "Database connection successfull";
}