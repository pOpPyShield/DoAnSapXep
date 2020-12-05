<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>WelCome Admin </h1>
    <h1><?php echo $_SESSION['UserName'];?></h1>
    <a href="?action=Logout">Dang xuat</a>
    <a href="?action=home">Trang chu</a>
</body>
</html>