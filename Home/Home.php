
<?php session_start(); ?>
<?php require_once '../Header/header.php';?>
<?php require_once 'ActionInHome.php';?>
<section class="Main">
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
    <!------End-Main-->
<?php include_once '../Footer/footer.php' ?>