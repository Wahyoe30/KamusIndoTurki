<?php
// Include file koneksi.php
include 'koneksi.php';

// Mendefinisikan array untuk menyimpan hasil
$response = array();

// Query untuk membaca data dari tabel tb_kosakata
$sql = "SELECT * FROM tb_kosakata";
$result = $conn->query($sql);

// Memeriksa apakah query berhasil dieksekusi
if ($result) {
    // Memeriksa apakah terdapat data yang ditemukan
    if ($result->num_rows > 0) {
        // Mengambil data satu per satu
        while ($row = $result->fetch_assoc()) {
            // Menambahkan data ke dalam array response
            $response[] = $row;
        }
        // Mengirimkan response dalam format JSON
        echo json_encode($response);
    } else {
        // Jika tidak ada data ditemukan
        echo json_encode(array("message" => "Tidak ada data ditemukan."));
    }
} else {
    // Jika query gagal dieksekusi
    echo json_encode(array("message" => "Gagal membaca data dari database."));
}

// Menutup koneksi database
$conn->close();
