

<?php include_once '../Header/header.php';?>

<form action="?action=uploadImage" method="POST" enctype="multipart/form-data">
    <input type="file" name='file'>
    <button type="submit" name="submitUpload">upload</button>
</form>

<?php include_once '../Footer/footer.php';?>