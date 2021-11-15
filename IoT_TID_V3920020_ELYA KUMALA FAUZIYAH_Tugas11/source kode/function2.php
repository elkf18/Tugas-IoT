<?php
// Koneksi Database
$koneksi = mysqli_connect("localhost", "root", "", "smathome");

// membuat fungsi query dalam bentuk array
function query($query)
{
    // Koneksi database
    global $koneksi;

    $result = mysqli_query($koneksi, $query);

    // membuat varibale array
    $rows = [];

    // mengambil semua data dalam bentuk array
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }

    return $rows;
}
// Membuat fungsi tambah
function tambah($data)
{
    global $koneksi;

    $id_sensor = htmlspecialchars($data['id_sensor']);
    $nama_objek_sensor = htmlspecialchars($data['nama_objek_sensor']);
    $sensor1 = htmlspecialchars($data['sensor1']);
    $sensor2 = htmlspecialchars($data['sensor2']);

    $sql = "INSERT INTO tb_sensor VALUES ('$id_sensor','$nama_objek_sensor','$sensor1', '$sensor2')";

    mysqli_query($koneksi, $sql);

    return mysqli_affected_rows($koneksi);
}

// Membuat fungsi hapus
function hapus($id_sensor)
{
    global $koneksi;

    mysqli_query($koneksi, "DELETE FROM tb_sensor WHERE id_sensor = '$id_sensor'");
    return mysqli_affected_rows($koneksi);
}

// Membuat fungsi ubah
function ubah($data)
{
    global $koneksi;

    $id_sensor = $data['id_sensor'];
    $nama_objek_sensor = htmlspecialchars($data['nama_objek_sensor']);
    $sensor1 = $data['sensor1'];
    $sensor2 = $data['sensor2'];

    $sql = "UPDATE tb_sensor SET nama_objek_sensor = '$nama_objek_sensor', sensor1 = '$sensor1' ,sensor2 = '$sensor2',  WHERE id_sensor = $id_sensor";

    mysqli_query($koneksi, $sql);

    return mysqli_affected_rows($koneksi);
}
