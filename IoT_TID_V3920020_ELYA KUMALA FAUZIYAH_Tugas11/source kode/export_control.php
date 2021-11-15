<?php
// Memanggil atau membutuhkan file function.php
require 'function.php';

// Menampilkan semua data dari table siswa berdasarkan nis secara Descending
$tb_control = query("SELECT * FROM tb_control ORDER BY id_control DESC");

// Membuat nama file
$filename = "data control-" . date('Ymd') . ".xls";

// Kodingam untuk export ke excel
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data Control.xls");

?>
<table class="text-center" border="1">
    <thead class="text-center">
        <tr>
            <th>No.</th>
            <th>Nama Objek</th>
            <th>Status</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody class="text-center">
        <?php $no = 1; ?>
        <?php foreach ($tb_control as $row) : ?>
            <tr>
                <td><?= $no++; ?></td>
                <td><?= $row['id_control']; ?></td>
                <td><?= $row['nama_objek_control']; ?></td>
                <td><?= $row['status_control']; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>