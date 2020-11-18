<div id="header">
        <div class="search-account">
            <div class="container">
                <div class="row">
                    <div class="col-3.5">
                        <a href="" class="logo"><img src="/DoAnSapXep/Public/Asset/Img/LOGO.png" alt="logo"></a>
                    </div>
                    <div class="col-4" id="search">
                        <form>
                            <div class="input-group">
                                <input type="search" placeholder="Bạn đang muốn mua gì..." class="form-control">
                                <div class="input-group-append item-search">
                                    <button type="submit" class="btn btn-link"><i class="fas fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- <div class="col" id="Cart">
                        <i class="fas fa-shopping-cart cart"></i> Giỏ hàng
                    </div> -->

            <!--1--><?php 
                        require_once '../Model/img.php';
                        /** If user login, remove icon login and display name, image */
                        if(isset($_SESSION['UserName'])) {
                    ?>      
                            <div class="col-2" id="Cart">
                                <a href="#"><i class="fas fa-shopping-cart cart"></i> Giỏ hàng</a>
                            </div>
                            <!-- Check if the user have image, then we display the img, or display the default -->
            <!--2-->
                            <div class="dropdown">
                                <button class="dropbtn">
                    <?php
                            $imgCheck = new Img();

                            if($imgCheck->checkImg($_SESSION['id']) == true) {
                                $_SESSION['ImgName'] = $imgCheck->getImgName();
                                echo '<img class="img_user" src="/DoAnSapXep/Uploads/profile'. $imgCheck->getUserID() . $imgCheck->getImgName() . '.' . $imgCheck->getImgType().'">';
                            } else {
                                echo '<img class="img_user" src="/DoAnSapXep/Uploads/profile'. $imgCheck->getImgName() .'.'. $imgCheck->getImgType().'">';
                            }
                    ?>
                                </button>
                                <div class="dropdown-content">
                                <a href="?action=Upload">Sửa ảnh</a>
                                <a href="?action=Logout">Đăng xuất</a>
                            </div>
                            <?php echo '<h1 class="User_name">'.$_SESSION['UserName'].'</h1>'; ?>
                            
            <!--3--><?php     
                        } else {
                    ?>
                                    <div class="col" id="Account">
                                        <div class="dropdown">
                                            <button class="dropbtn"><i class="fas fa-user account"></i> Tài khoản</button>
                                            <div class="dropdown-content">
                                                <a href="?action=login">Đăng nhập</a>
                                                <a href="?action=register">Đăng ký</a>
                                            </div>
                                        </div>
                                    </div>
            <!--4--><?php 
                        }
                    ?>
                </div>
            </div>
        </div>
        <div class="Contact">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sản phẩm</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Tin tức</a>
                        </li>
                    </ul>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fas fa-phone-volume phone"></i>Huy: +84 591132241</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="fas fa-phone-volume phone"></i>Thiện: +84 941979240</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><i class="far fa-envelope email"></i>HT-Electronic@gmail.com</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
</div>