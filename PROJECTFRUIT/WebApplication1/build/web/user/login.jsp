<%-- 
    Document   : login
    Created on : 07-Sep-2019, 16:15:43
    Author     : Le Minh Duc
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->
<link href="../user/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="../user/css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="../user/css/owl.carousel.css" rel="stylesheet" type="text/css"/>
<link href="../user/css/jquery.mobile-menu.css" rel="stylesheet" type="text/css"/>
<link href="../user/css/revslider.css" rel="stylesheet" type="text/css"/>
<link href="../user/css/style.css" rel="stylesheet" type="text/css"/>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    </head>
<body>
<header>
    <div class="header-container">
      <div class="header-top">
        <div class="container">
          <div class="row"> 
            <!-- Header Language -->
            <div class="col-xs-12 col-sm-6">
              <!-- End Header Currency -->
              <div class="welcome-msg">Chào mừng bạn đến với brezza!</div>
            </div>
            <div class="col-xs-6 hidden-xs"> 
              <!-- Header Top Links -->
              <div class="toplinks">
                <div class="links">
                  <div class="block-company-wrapper"><a href="#"><span class="hidden-xs">Hotline:0123456789</span></a></div>
                  <div class="myaccount"><a href="login.html"><span class="hidden-xs">My Account</span></a></div>
                  <div class="check"><a href="checkout.html"><span class="hidden-xs">Checkout</span></a></div>
                  <div class="demo"><a href="blog.html"><span class="hidden-xs">Blog</span></a></div>
                  <div class="login"><a href="login.html"><span class="hidden-xs">Log In</span></a></div>
                </div>
              </div>
              <!-- End Header Top Links --> 
            </div>
          </div>
        </div>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 logo-block"> 
            <!-- Logo -->
            <div class="logo"><a title="Brezza" href="<%=request.getContextPath()%>/proController/getAll.htm"><img alt="Brezza Logo" src="../user/images/logo.png"></a></div>
            <!-- End Logo --> </div>
          <div class="col-lg-5 col-md-4 col-sm-4 col-xs-12 hidden-xs">
            <div class="search-box">
              <form action="cat" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Tìm kiếm..." maxlength="70" name="search" id="search">
                <button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 mgk-top-cart">
            <div class="top-cart-contain pull-right"> 
              <!-- Top Cart -->
              <div class="mini-cart">
                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle">
                    <a href="shopping_cart.html" style="text-decoration: none;">
                        <span class="cart_count"><input style="outline:none; border:none" maxlength="12" size="1" type="text" name="countCart" value="${countCart}" readonly=""/></span>
                        <span class="cart-title hidden-xs hidden-sm">Giỏ hàng</span>
                    </a>
                </div>
                <div>
                  <div class="top-cart-content" style="z-index:99999 ">
                    <ul class="mini-products-list" id="cart-sidebar">
                      <c:forEach items="${listCartMini}" var="miniCart">
                        <li class="item">
                          <div class="item-inner"><a class="product-image" title="Retis lapen casen" href="#"><img alt="Retis lapen casen" src="${miniCart.pro.imageLink}"></a>
                            <div class="product-details">
                              <div class="access">
                                  <a class="btn-remove1" title="Remove This Item" href="#" data-dismiss="close">Remove</a> 
                                  <a class="btn-edit" title="Edit item" href="<%=request.getContextPath()%>/cartController/blank.htm"><i class="fa fa-pencil"></i><span class="hidden">Edit item</span></a></div>
                              <strong>${miniCart.qty}</strong> x <span class="price">${miniCart.pro.price}</span>
                              <p class="product-name"><a href="#">${miniCart.pro.nameProduct}</a></p>
                            </div>
                          </div>
                        </li>
                       </c:forEach>
                       <li class="item">
                        <div class="action">
                           <a href="<%=request.getContextPath()%>/cartController/blank.htm" class="view-cart" style="background: #60be74;border:none;margin-right:15px"><i class="fa fa-shopping-cart"></i><span>Giỏ hàng</span></a>
                           <a href="shopping_cart.html" class="view-cart" style="background: black;border:none"><i class="fa fa-check"></i><span>Thanh toán</span></a>
                        </div>
                       </li>
                    </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <nav>
      <div class="container">
        <div class="mm-toggle-wrap">
          <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span></div>
        </div>
        <div class="nav-inner">
          <ul id="nav" class="hidden-xs">
            <li class="level0 parent drop-menu" id="nav-home"><a href="<%=request.getContextPath()%>/proController/getAll.htm" class="level-top"><span>Home</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="<%=request.getContextPath()%>/proController/getAllRCQ.htm"><span>Rau củ quả</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="<%=request.getContextPath()%>/proController/getAllTC.htm"><span>Trái cây</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="blog.html"><span>Tin tức</span></a>
              <div class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <ul class="level0">
                        <li class="level1"><a href="blog.html"><span>Blog</span></a></li>
                        <li class="level1"><a href="blog.html"><span>Tin khuyến mại</span></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            <li class="mega-menu"><a class="level-top" href="../user/introduce.jsp"><span>Giới thiệu</span></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
</header>    
<section class="main-container col1-layout">
<div class="main container">
  <div class="account-login">
    <div class="page-title">
      <h2>Đăng nhập hoặc tạo tài khoản</h2>
    </div>
      <fieldset class="col1-set" style="margin-left:auto; margin-right: auto;width: 20%;" >
          <form action="<%=request.getContextPath()%>/loginsignController/checkAcountt.htm" method="POST">
            <div class="col-1 registered-users">
             <div class="content">
               <ul class="form-list">
                 <li>
                   <label for="email">Địa chỉ Email <span class="required">*</span></label>
                   <br>
                   <input type="text" title="Email Address" style="width: 300px;height: 30px;margin-bottom: 20px" id="email" value="" name="login[username]" >
                 </li>
                 <li>
                   <label for="pass">Mật khẩu <span class="required">*</span></label>
                   <br>
                   <input type="password" title="Password" style="width: 300px;height: 30px;;margin-bottom: 20px" id="pass" name="login[password]">
                 </li>
               </ul>
               <p class="required">${status}</p>
               <div class="buttons-set">
                 <button id="send2" name="send" type="submit" class="button login" style="margin-right: 10px"><span>Đăng nhập</span></button>
                 <button id="send2" name="send" type="submit" class="button login"><span>Tạo tài khoản</span></button>
             </div>
           </div>
       </form>
      </fieldset>
  </div>
  <br>
  <br>
  <br>
  <br>
  <br>
</div>
</section>
    <h2 style="text-align: center">Các nhà cung cấp</h2>
 <div class="brand-logo">
    <div class="container">
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6">
            <div class="item"><a href="#"><img src="../user/images/b-logo3.png" alt="Brand Logo"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo1.png" alt="Brand Logo1"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo2.png" alt="Brand Logo2"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo4.png" alt="Brand Logo3"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo5.png" alt="Brand Logo4"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo6.png" alt="Brand Logo5"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo2.png" alt="Brand Logo6"></a></div>
            <div class="item"><a href="#"><img src="../user/images/b-logo4.png" alt="Brand Logo7"></a></div>
          </div>
        </div>
      </div>
    </div>
  </div>  
    <jsp:include page="footer.jsp"/>
<div id="mobile-menu">
<ul>
<li>
  <div class="mm-search">
    <form id="search1" name="search">
      <div class="input-group">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit"><i class="fa fa-search"></i> </button>
        </div>
        <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term" id="srch-term">
      </div>
    </form>
  </div>
</li>
<li><a href="index.html">Home</a>
</li>
<li><a href="grid.html">Rau củ</a>
  <ul>
    <li><a href="grid.html"><span>Rau</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Xà lách</span></a></li>
        <li><a href="product_detail.html"><span>Xúp lơ xanh</span></a></li>
        <li><a href="product_detail.html"><span>Rau cảnh xanh</span></a></li>
        <li><a href="product_detail.html"><span>Rau bina</span></a></li>
      </ul>
    </li>
    <li><a href="grid.html"><span>Củ</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Cà rốt</span></a></li>
        <li><a href="product_detail.html"><span>Củ đậu</span></a></li>
        <li><a href="product_detail.html"><span>Khoai tây</span></a></li>
        <li><a href="product_detail.html"><span>Củ hành tím</span></a></li>
      </ul>
    </li>
    <li><a href="grid.html"><span>Đậu</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Đậu Hà Lan</span></a></li>
        <li><a href="product_detail.html"><span>Đậu nành</span></a></li>
        <li><a href="product_detail.html"><span>Đậu xanh</span></a></li>
        <li><a href="product_detail.html"><span>Đậu đen</span></a></li>
      </ul>
    </li>
    <li><a href="grid.html"><span>Quả</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Cà chua</span></a></li>
        <li><a href="product_detail.html"><span>Cà tím</span></a></li>
        <li><a href="product_detail.html"><span>Ớt chuông</span></a></li>
        <li><a href="product_detail.html"><span>Chanh</span></a></li>
      </ul>
    </li>
  </ul>
</li>
<li><a href="grid.html">Trái cây</a>
  <ul>
    <li><a href="grid.html"><span>Trái cây nhập khẩu</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Táo</span></a></li>
        <li><a href="product_detail.html"><span>Nho</span></a></li>
        <li><a href="product_detail.html"><span>Kiwi xanh</span></a></li>
      </ul>
    </li>
    <li><a href="grid.html"><span>Trái cây theo mùa</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Xoài</span></a></li>
        <li><a href="product_detail.html"><span>Lựu</span></a></li>
        <li><a href="product_detail.html"><span>Đu đủ</span></a></li>
        <li><a href="product_detail.html"><span>Đào</span></a></li>
      </ul>
    </li>
    <li><a href="grid.html"><span>Trái cây thường xuyên</span></a>
      <ul>
        <li><a href="product_detail.html"><span>Chuối</span></a></li>
        <li><a href="product_detail.html"><span>Dứa</span></a></li>
        <li><a href="product_detail.html"><span>Dừa</span></a></li>
        <li><a href="product_detail.html"><span>Dâu tây</span></a></li>
      </ul>
    </li>
  </ul>
</li>
<li><a href="blog.html">Tin tức</a>
  <ul>
    <li><a href="blog.html"><span>Blog</span></a>
    </li>
    <li><a href="blog.html"><span>Tin khuyến mãi</span></a>
    </li>
  </ul>
</li>
<li><a href="Gioithieu.html">Giới thiệu</a>
</ul>
<div class="top-links">
<ul class="links">
  <li><a title="My Account" href="login.html">My Account</a></li>
  <li><a title="Wishlist" href="wishlist.html">Wishlist</a></li>
  <li><a title="Checkout" href="checkout.html">Checkout</a></li>
  <li><a title="Blog" href="blog.html"><span>Blog</span></a></li>
  <li><a title="Login" href="login.html"><span>Login</span></a></li>
</ul>
</div>
</div>
<script src="../user/js/jquery.min.js" type="text/javascript"></script>
<script src="../user/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../user/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="../user/js/jquery.mobile-menu.min.js" type="text/javascript"></script>
<script src="../user/js/common.js" type="text/javascript"></script>
<script src="../user/js/revslider.js" type="text/javascript"></script>
<script src="../user/js/countdown.js" type="text/javascript"></script>
</body>
</html>
