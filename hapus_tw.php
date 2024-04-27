<?php 
// koneksi database
include 'koneksi.php';

// menangkap data id yang dikirim dari URL
$id_capaian = $_GET['id_capaian'];
$id_tw = $_GET['id_triwulan'];
$id_prodi = $_GET['id_prodi'];
echo var_dump($id_capaian);
// menghapus data dari database
mysqli_query($koneksi,"DELETE FROM capaian WHERE id_capaian='$id_capaian'");

// mengalihkan halaman kembali ke halaman tw.php
header("Location: tw.php?id_triwulan=" . $id_tw . "&id_prodi=" . $id_prodi);
?>
