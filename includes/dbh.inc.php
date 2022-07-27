<?php

$serverName = "localhost";
$dBUsername = "root";
$dBPassword = "";
$dBName = "id18350597_loginsystem";

$conn = mysqli_connect($serverName, $dBUsername, $dBPassword, $dBName, 3306);

if (!$conn)
{
    die("Connection failed: ". mysqli_connect_error());
}