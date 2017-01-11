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

if($_POST['method']=='detailPerson'){
    detailPerson();
}

if($_POST['method']=='activitiesByPerson'){
    activitiesByPerson();
}

function search(){
    $mysqli = new mysqli("localhost", "root", "", "ceprodeap");
    if(count(explode(' ',$_POST['search']))==1){
        $data = "'%".$_POST['search']."%'";
        $query = 'CALL searchUsersOrActivities('.$data.')';
    }else{
        if(count(explode(' ',$_POST['search']))==2){
            $data1 = "'%".explode(' ',$_POST['search'])[0]."%'";
            $data2 = "'%".explode(' ',$_POST['search'])[1]."%'";
            $query = 'SELECT DISTINCT usuarios.*
              FROM usuarios WHERE
              usuarios.nombre LIKE '.$data1
                .' AND usuarios.apellido LIKE '.$data2;
        }else{
            $query=null;
        }

    }
    
    $result = $mysqli->query($query);

    $array = array();

    for ($i = 0; $i < $result->num_rows; $i++) {
        array_push($array,$result->fetch_array(MYSQLI_ASSOC));
    }

    mysqli_free_result($result);
    $mysqli->close();

    echo json_encode($array);
}

function detailPerson(){
    $mysqli = new mysqli("localhost", "root", "", "ceprodeap");
    $data = $_POST['id'];
    $query = 'SELECT * FROM usuarios WHERE id ='.$data;

    $result = $mysqli->query($query);

    $array = array();

    for ($i = 0; $i < $result->num_rows; $i++) {
        array_push($array,$result->fetch_array(MYSQLI_ASSOC));
    }

    mysqli_free_result($result);
    $mysqli->close();

    echo json_encode($array);
}

function activitiesByPerson(){
    $mysqli = new mysqli("localhost", "root", "", "ceprodeap");
    $data = $_POST['id'];
    $query = 'SELECT DISTINCT actividades.* FROM usuarios, actividades, usuario_has_actividad 
      WHERE usuario_has_actividad.id_usuario = '.$data.'
        AND usuario_has_actividad.id_actividad = actividades.id';

    $result = $mysqli->query($query);

    $array = array();

    for ($i = 0; $i < $result->num_rows; $i++) {
        array_push($array,$result->fetch_array(MYSQLI_ASSOC));
    }

    mysqli_free_result($result);
    $mysqli->close();

    echo json_encode($array);
}