
<?php require_once '../Header/header.php';?>
<section class="Main">
<?php if(isset($_GET['login'])=="success") {?>
        <script>alert("Login Success!!!!");</script>
<?php }?>

<?php if(isset($_GET['logout']) == "success") {?>
        <script>alert("Logout success");</script>
<?php }?>

<?php if(isset($_GET['upload']) == "success") {?>
        <script>alert("Upload successs!!!!!!");</script>
<?php }?>
        <div class="container">
            <div class="row">
                <?php include_once './LeftNav/leftnav.php';?>
                <section class="col-9" id="right">
                    <?php include_once './SlideBar/slidebar.php'; ?>
                    <?php include_once './SanPhamT11/sanphamt11.php';  ?>    
            </div>
            <div class="main-p">
                <?php include_once './PcBanChay/pcbanchay.php'; ?>
            </div>
            <div class="main-product">
                <?php include_once './UuDaiLapTop/uudailaptop.php'; ?>
            </div>
            <div class="main-product">
              <?php include_once './ManHinhKhuyenMai/manhinhkhuyenmai.php';?>
            </div>

            <div class="main-product">
                <?php include_once './Pc-Workstation/pc-workstation.php'; ?>
    
            <div class="main-product">
                <?php include_once './BanPhimGamin/banphimgaming.php'; ?>
            </div>
            <div class="main-product">
                <?php include_once './ChuotGaming/chuotgaming.php'; ?>
            </div>
            <hr>
            <div class="row" id="selling">
                <?php include_once './EmailEnter/emailenter.php'; ?>
            </div>

            </div>  
        </div>
</section>
<?php include_once '../Footer/footer.php' ?>