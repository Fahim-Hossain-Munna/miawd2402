<?php
session_start();


include '../../config/database.php';

if (isset($_POST['insert'])) {

    $title = $_POST['title'];
    $subtitle = $_POST['subtitle'];
    $description = $_POST['description'];
    $image = $_FILES['image']['name'];

    if ($title && $description && $subtitle && $image) {
        $tmp = $_FILES['image']['tmp_name'];
        $id = $_SESSION['author_id'];
        $authname = $_SESSION['author_name'];
        $explode = explode('.', $image);
        $extension = end($explode);
        $new_name = $id . "-" . $title . '-' . date("d-m-Y") .'-'. rand(0,9999) ."." . $extension;

        $localpath = "../../public/uploads/portfolio/" . $new_name;

        if(move_uploaded_file($tmp,$localpath)){
            $query = "INSERT INTO portfolios (title,subtitle,description,image) VALUES ('$title','$subtitle','$description','$new_name')";
            mysqli_query($db_connect,$query);
            $_SESSION['port_complete'] = "New Portfolio Insert Complete";
            header("location: portfolios.php");
        }
    } else {
        header('location: portfolios.php');
    
}

}

if (isset($_GET['delete_id'])) {
    $id = $_GET['delete_id'];
    $delete_query = "DELETE FROM portfolios WHERE id='$id'";
    mysqli_query($db_connect, $delete_query);
    $_SESSION['port_complete_delete'] = "Portfolio Delete Successfull!!";
    header('location: portfolios.php');
}



?>