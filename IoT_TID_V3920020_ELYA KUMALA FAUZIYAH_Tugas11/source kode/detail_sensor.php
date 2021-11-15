<?php
// Memanggil atau membutuhkan file function.php
require 'function2.php';

// Jika dataSensor diklik maka
if (isset($_POST['dataSensor'])) {
    $output = '';

    // mengambil data sensor dari id yang berasal dari dataSensor
    $sql = "SELECT * FROM tb_sensor WHERE id_sensor = '" . $_POST['dataSensor'] . "'";
    $result = mysqli_query($koneksi, $sql);

    $output .= '<div class="table-responsive">
                        <table class="table table-bordered">';
    foreach ($result as $row) {
        $output .= '<tr>
                            <th width="40%">Id</th>
                            <td width="60%">' . $row['id_sensor'] . '</td>
                        </tr>
                        <tr>
                            <th width="40%">Nama Objek</th>
                            <td width="60%">' . $row['nama_objek_sensor'] . '</td>
                        </tr>
                        <tr>
                            <th width="40%">Sensor1</th>
                            <td width="60%">' . $row['sensor1'] . '</td>
                        </tr>
                        <tr>
                            <th width="40%">Sensor2</th>
                            <td width="60%">' . $row['sensor2'] . '</td>
                        </tr>
                       
                        ';
    }
    $output .= '</table></div>';
    // Tampilkan $output
    echo $output;
}
