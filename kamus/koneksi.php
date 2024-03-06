<?php
// Konfigurasi koneksi ke database
$servername = "localhost"; // Lokasi server database, bisa saja berbeda
$username = "root"; // Nama pengguna database
$password = ""; // Password database, kosong dalam kasus ini
$database = "kamus"; // Nama database

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $database);

// Memeriksa koneksi
// if ($conn->connect_error) {
//     die("Koneksi gagal: " . $conn->connect_error);
// } else {
//     echo "Koneksi berhasil!";
// }
