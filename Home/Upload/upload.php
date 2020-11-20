

<?php include_once '../Header/header.php';?>
<?php 

    if(isset($_GET['status'])) {
        echo '<script>alert("Upload failed, try again");</script>';
    }

?>
<form action="?action=uploadImage" method="POST" enctype="multipart/form-data">
    <input type="file" name='file'>
    <button type="submit" name="submitUpload" value="submit">upload</button>
</form>

<?php include_once '../Footer/footer.php';?>