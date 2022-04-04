<?php

$host = 'localhost';
$user = 'recipe';
$pass = '1234';
$db_name = 'recipeshare';

$conn = new MySQLi($host, $user, $pass, $db_name);

if ($conn->connect_error) {
    die('Database connection error: ' . $conn->connect_error);
}