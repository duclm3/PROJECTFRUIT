<%-- 
    Document   : grid
    Created on : 13-Sep-2019, 16:30:58
    Author     : Le Minh Duc
--%>
<%@page import="bkap.user.controller.LoginSignController"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grid</title>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->
<style>
    .size-box input{
        display:inline; 
    }
</style>
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
                  <div class="check"><a href="checkout.html"><span class="hidden-xs">Checkout</span></a></div>
                  <div class="demo"><a href="blog.html"><span class="hidden-xs">Blog</span></a></div>
                
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
            <div class="logo"><a title="Brezza" href="index.html"><img alt="Brezza Logo" src="../user/images/logo.png"></a></div>
            <!-- End Logo --> </div>
          <div class="col-lg-5 col-md-4 col-sm-4 col-xs-12 hidden-xs">
            <div class="search-box">
              <form action="getNameProduct.htm" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Tìm kiếm..." maxlength="70" id="search" name="nameproduct">
                <button type="submit" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 mgk-top-cart">
            <div class="top-cart-contain pull-right"> 
              <!-- Top Cart -->
               <div class="mini-cart">
                <div class="basket dropdown-toggle" >
                    <a href="<%=request.getContextPath()%>/cartController/blank.htm" style="text-decoration: none;">
                        <span class="cart_count"><input style="outline:none; border:none" maxlength="12" size="1" type="text" name="countCart" value="${countCart}" readonly=""/></span>
                        <span class="cart-title hidden-xs hidden-sm">Giỏ hàng /</span>
                        <span class="price hidden-xs">${totalAmount}</span>
                    </a>
                </div>
                <div>
              </div>
              <!-- End Top Cart --> 
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
            <li class="mega-menu"><a class="level-top" href="getAllRCQ.htm"><span>Rau củ quả</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="getAllTC.htm"><span>Trái cây</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="#"><span>Tin tức</span></a>
              <div class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <ul class="level0">
                        <li class="level1"><a href="#"><span>Blog</span></a></li>
                        <li class="level1"><a href="#"><span>Tin khuyến mại</span></a></li>
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
<div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="<%=request.getContextPath()%>/proController/getAll.htm"><a href="index.html">Home</a><span>/</span></li>
            <li><a href="#">${fruits}</a><span></span></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  
  <!-- Main Container -->
  <section class="main-container col2-left-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-xs-12 col-sm-push-3">
        <!-- category slider -->
          <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                 <div class="item"> <a href="#"><img alt="Fresh Vegetables" src="../user/images/category-img1.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Thực phẩm</div>
                      <h2 class="cat-heading">Không hoá chất không chất bảo quản thực vật</h2>
                    </div>
                  </div>
                  <div class="item"> <a href="#"><img alt="Healthy Eating" src="../user/images/category-img2.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Thực phẩm</div>
                      <h2 class="cat-heading">Dễ chế biến và an toàn </h2>
                    </div>               
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- End category slider --> 
          
        <!-- Col- Main -->   
          <article class="col-main">
            <h2 class="page-heading"> <span class="page-heading-title">Regular Fruits</span> </h2>
            <div class="display-product-option">
              <div class="pager hidden-xs">
                  <div class="paging container pages" style="margin-left:-90px">
                </div>
              </div>
            </div>
            <div class="category-products">
              <ul class="products-grid">
                <c:forEach items="${allProduct}"  var="pro" varStatus="status">
                <c:if test="${(status.index) % 3== 0}">
                    <div class="clearfix"></div>
                </c:if>
                <li class="item col-lg-3 col-md-3 col-sm-3 col-xs-6">
                  <div class="item-inner">
                    <div class="item-img">
                      <div class="item-img-info"><a href="getOneProduct.htm?productId=${pro.productId}" title="Retis lapen casen" class="product-image"><img src="${pro.imageLink}" alt="Retis lapen casen"></a>
                        <div class="new-label new-top-left">New</div>
                        <div class="box-hover">
                          <ul class="add-to-links">
                            <li><a class="link-quickview" data-id="${pro.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"><a title="Retis lapen casen" href="getOneProduct.htm?productId=${pro.productId}">${pro.nameProduct}</a></div>
                        <div class="item-content">
                          <div class="rating">
                            <div class="ratings">
                              <div class="rating-box">
                                <div class="rating width80"></div>
                              </div>
                              <p class="rating-links"><a href="#">1 Review(s)</a><span class="separator">|</span><a href="#">Add Review</a></p>
                            </div>
                          </div>
                          <div class="item-price">
                            <div class="price-box">
                              <p class="special-price"><span class="price-label">Special Price</span><span class="price">${pro.price}</span></p>
                            </div>
                          </div>
                          <div class="action">
                            <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${pro.productId}"><button class="button btn-cart" type="button"><span>Add to Cart</span></button></a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
                </c:forEach>
              </ul>
            </div>
            <div class="toolbar">
              <div class="row">
                <div class="col-lg-3 col-md-4">
                </div>
                <div class="col-lg-6 col-sm-7 col-md-5">
                  <div class="pager">
                    <div class="paging container pages">
                     
                    </div>
                  </div>
                </div>
                <div class="col-lg-3 col-sm-12 col-md-3">
                </div>
              </div>
            </div>
          </article>
          <!--	End col Main  --> 
        </div>
        
        <!-- Sidebar  --> 
        <div class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="col-left sidebar">
          <!-- Categories --> 
           
            <!-- My Cart --> 
            <div class="block block-cart">
              <div class="block-title ">Giỏ hàng của bạn</div>
              <div class="block-content">
                <div class="">
                <a href="<%=request.getContextPath()%>/cartController/blank.htm"><button class="button button-checkout" title="button"><span>Thanh toán</span></button></a>
                </div>
                <p class="block-subtitle">Sản phẩm: </p>
                <ul>
                    <c:forEach items="${listCartMini}" var="listMini">
                      <li class="item"> <a href="shopping_cart.html" title="Retis lapen casen" class="product-image"><img src="${listMini.pro.imageLink}" alt="Retis lapen casen"></a>
                        <div class="product-details">
                          <div class="access"> 
                               <a class="btn-edit" title="Edit item" href="<%=request.getContextPath()%>/cartController/blank.htm"><i class="fa fa-pencil"></i><span class="hidden">Edit item</span></a></div>
                              <strong>${listMini.qty}</strong> x <span class="price">${listMini.pro.price}</span>
                          <p class="product-name"> <a href="shopping_cart.html">${listMini.pro.nameProduct}</a> </p>
                        </div>
                      </li>
                    </c:forEach>  
                </ul>
              </div>
            </div>
            <!-- Shop by --> 
            <div class="block block-layered-nav">
              <div class="block-title">Mua sắm</div>
              <div class="block-content">
                <p class="block-subtitle">Tuỳ chọn giá sảm phẩm trong khoảng</p>
                <form action="getProByPrice.htm" method="post">
                    <div class="size-box">
                    <input type="number" min="0"  placeholder="Min" value="" pattern="[0-9]*" style="width: 37%;height: 30px" name="priceMin">
                    <div class="classg" style="display:inline"><b>-</b></div>
                    <input type="number" min="0"  placeholder="Max" value="" pattern="[0-9]*" style="width: 37%;height: 30px " name="priceMax">
                    <button class="btn" style="color:green;outline:none;margin-left:8px;margin-bottom:3px"><span class="glyphicon glyphicon-chevron-right" style="color:white;"></span></button>
                </div>
                </form>
              </div>
            </div>
            <!-- Custom Slider --> 
            <div class="custom-slider">
              <div>
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li class="active" data-target="#carousel-example-generic" data-slide-to="0"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="item active"><img src="../user/images/slide3.jpg" alt="slide3">
                      <div class="carousel-caption">
                        <h3><a title=" Sample Product" href="#">Giảm đến 50%</a></h3>
                        
                        <a class="link" href="#">Buy Now</a></div>
                    </div>
                    <div class="item"><img src="../user/images/slide1.jpg" alt="slide1">
                      <div class="carousel-caption">
                        <h3><a title=" Sample Product" href="#">Nho Mỹ</a></h3>
                        <p>Sự lựa chọn hoàn hào trong mùa hè này.</p>
                      </div>
                    </div>
                    <div class="item"><img src="../user/images/slide2.jpg" alt="slide2">
                      <div class="carousel-caption">
                        <h3><a title=" Sample Product" href="#">Thực phẩm mùa hè</a></h3>
                        <p>Luôn giàu chất dinh dưỡng và an toàn.</p>
                      </div>
                    </div>
                  </div>
                  <a class="left carousel-control" href="#" data-slide="prev"> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#" data-slide="next"> <span class="sr-only">Next</span> </a></div>
              </div>
            </div>
            <!-- Search by tags --> 
            <div class="block block-tags">
              <div class="block-title">Tìm kiếm bằng thẻ</div>
              <div class="block-content">
                <ul class="tags-list">
                  <li><a href="#" title="Fruits">Rau củ quả</a></li>
                  <li><a href="#" title="Green">Trái cây</a></li>
                  <li><a href="#" title="Vegatable">Táo</a></li>
                  <li><a href="#" title="Vegatable">Nho</a></li>
                </ul>
              </div>
            </div>
          </aside>
        </div>
      </div>
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
            <li><a href="product_detail.html"><span>Rau bắp cải</span></a></li>
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
<div class="modal fade view-modal" id="modal-id" style="z-index: 1000000000">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Xem nhanh</h4>
            </div>
            <div class="modal-body">
                <div class="product-view">
                    <div class="product-essential">
       
                            <div class="product-img-box col-lg-5 col-sm-5 col-xs-12">
                                <div class="product-image">
                                    <div class="product-full"><img id="product-zoom" src="" data-zoom-image="" alt="product-image"> </div>
                                </div>
                                <!-- end: more-images --> 
                            </div>
                            <div class="product-shop col-lg-7 col-sm-7 col-xs-12">
                                <div class="product-name">
                                    <h1></h1>
                                </div>
                                <div class="ratings">
                                </div>
                                <div class="price-block">
                                    <div class="price-box">
                                        <p class="special-price"><span class="price-label">Giá</span> <span id="product-price-48" class="price"> ${prohot.price} VNĐ</span></p>
                                    </div>
                                </div>
                                <div class="short-description">
                                    <h2><b style="color: green">Mã sản phẩm &emsp;:</b><span class="modal_idd"></h2>
                                    <br>
                                    <h2><b style="color: green">Tình trạng &emsp;&emsp;&ensp;:</b>Còn hàng</h2>
                                    <br>
                                    <h2><b style="color: green">Đơn vị tính&emsp;&emsp;&ensp;:</b>1kg</h2>
                                    <br>
                                    <h2><b style="color: green">Mô tả &emsp;&ensp;&ensp;&ensp;&emsp;&emsp;&ensp;:</b> <span class="modal_des"></span></h2>
                                    <br>
                                </div>
                                <div class="add-to-box">
                                    <form action="<%=request.getContextPath()%>/cartController/addCart.htm" method="POST">
                                        <div class="add-to-cart">
                                                <div class="pull-left">
                                                    <div class="custom pull-left">
                                                    <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty > 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
                                                    <input type="number" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty" max="15" min="1" >
                                                    <input type="hidden" id="productId" value="" name="productIdd" class="getId"/>
                                                    <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
                                                    </div>
                                                </div>
                                                <button class="button btn-cart" title="Add to Cart" type="submit">Add to Cart</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>   
<!--<script type="text/javascript" language="javascript" src="../user/js/paginate.js"></script>
<script type="text/javascript" language="javascript" src="../user/js/custom.js"></script>-->
<script src="../user/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
var allproductx = [
  <c:forEach items="${ALLPRO}" var="pro">
  {
    id:"${pro.productId}",
    name:"${pro.nameProduct}",
    price:"${pro.price}",
    image:"${pro.imageLink}",
    description: `${pro.descriptions}`
  },
  </c:forEach>
]
    $(function(){
        $(".link-quickview").click(function(){
            var _id = $(this).data("id");
            var _product = (allproductx.filter(function(p){return p.id ==_id}))[0];
            console.log(_product);
            $("#product-zoom").attr("src", _product.image);
            $(".product-name h1").html(_product.name);
            $(".modal_des").html(_product.description);
            $(".modal_idd").html(_product.id);
            $("#product-price-48").html(_product.price);
            $(".getId").val(_product.id);
            $("#modal-id").modal('show');
        })
    });
</script>

<script src="../user/js/jquery.min.js" type="text/javascript"></script>
<script src="../user/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../user/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="../user/js/jquery.mobile-menu.min.js" type="text/javascript"></script>
<script src="../user/js/common.js" type="text/javascript"></script>
<script src="../user/js/revslider.js" type="text/javascript"></script>
<script src="../user/js/countdown.js" type="text/javascript"></script>
    </body>
</html>
