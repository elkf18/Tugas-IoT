<?php
// Memanggil atau membutuhkan file function.php
require 'function2.php';

// Menampilkan semua data dari table siswa berdasarkan nis secara Descending
$tb_control = query("SELECT * FROM tb_sensor ORDER BY id_sensor DESC");

// Membuat nama file
$filename = "data sensor-" . date('Ymd') . ".xls";

// Kodingam untuk export ke excel
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=Data sensor.xls");

?>
<table class="text-center" border="1">
    <thead class="text-center">
        <tr>
            <th>No.</th>
            <th>Nama Objek</th>
            <th>Sensor 1</th>
            <th>Sensor 2</th>
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
                <td><?= $row['sensor1']; ?></td>
                <td><?= $row['sensor2']; ?></td>
            </tr>
        <?php endforeach; ?>
    </tbody>
</table>