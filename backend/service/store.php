<?php
session_start();


include '../../config/database.php';

if(isset($_POST['insert'])){

    $title = $_POST['title'];
    $description = $_POST['description'];
    $icon = $_POST['icon'];

    if($title && $description && $icon){
       $query = "INSERT INTO services (title,description,icon) VALUES ('$title','$description','$icon')";

       mysqli_query($db_connect,$query);
        $_SESSION['service_complete'] = "New Service Added Successfull!!";
       header('location: services.php');
    }else{
        header('location: services.php');
    }


}


if(isset($_GET['id'])){
    $id = $_GET['id'];
    $delete_query = "DELETE FROM services WHERE id='$id'";
    mysqli_query($db_connect,$delete_query);
        $_SESSION['service_complete_delete'] = "Service Delete Successfull!!";
       header('location: services.php');
}

?>