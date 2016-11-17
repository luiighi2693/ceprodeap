<?php
/**
 * Created by PhpStorm.
 * User: luisc
 * Date: 16/11/2016
 * Time: 11:31 PM
 */

if($_POST['method']=='search'){
    search();
}

function search(){
    $mysqli = new mysqli("localhost", "root", "", "ceprodeap");
    $query = 'SELECT * FROM actividades';
    $result = $mysqli->query($query);

    $array = array();

    for ($i = 0; $i < $result->num_rows; $i++) {
        array_push($array,$result->fetch_array(MYSQLI_ASSOC));
    }

    mysqli_free_result($result);
    $mysqli->close();

    echo json_encode($array);
}

