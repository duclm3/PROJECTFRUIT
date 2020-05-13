<%-- 
    Document   : home
    Created on : 05-Sep-2019, 18:20:58
    Author     : Le Minh Duc
--%>
<%@page import="bkap.user.controller.CartController"%>
<%@page import="bkap.user.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="bkap.user.controller.LoginSignController"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brezza</title>
        <link rel="icon" href="../user/images/favicon.ico" type="image/x-icon" />
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
                  <div class="check"><a href="checkout.html"><span class="hidden-xs">Checkout</span></a></div>
                  <div class="demo"><a href="#"><span class="hidden-xs">Blog</span></a></div>
                  
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
              <form action="getNameProduct.htm" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Tìm kiếm..." maxlength="70" id="search" name="nameproduct">
                <button type="submit" class="search-btn-bg" ><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
            </div>
          </div>
          <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 mgk-top-cart">
            <div class="top-cart-contain pull-right"> 
              <!-- Top Cart -->
              <div class="mini-cart">
                  <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle" style="z-index: 999999999">
                    <a href="shopping_cart.html" style="text-decoration: none;">
                        <span class="cart_count"><input style="outline:none; border:none" maxlength="12" size="1" type="text" name="countCart" value="${countCart}" readonly=""/></span>
                        <span class="cart-title hidden-xs hidden-sm">Giỏ hàng</span>
                    </a>
                </div>
                <div>
                  <div class="top-cart-content" style="z-index:99999 ">
                    <ul class="mini-products-list" id="cart-sidebar">
                      <c:forEach items="${listCart}" var="miniCart">
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
                        <li class="item" style="width: 150px">
                        <div class="action">
                            <%
                               if(CartController.countCart==0){
                                  %>
                                     <a href="#"  onclick="return alert('Giỏ hàng của bạn đang trống!')" class="view-cart" style="background: #60be74;border:none;margin-right:15px"><i class="fa fa-shopping-cart"></i><span>Giỏ hàng</span></a>
                                  <%
                               }else{
                                  %>
                                    <a href="<%=request.getContextPath()%>/cartController/blank.htm" class="view-cart" style="background: #60be74;border:none;margin-right:15px"><i class="fa fa-shopping-cart"></i><span>Giỏ hàng</span></a>   
                                  <%
                               }
                            %>   
                            
                           
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
   <div id="magik-slideshow" class="magik-slideshow">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
          <div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
            <div id='rev_slider_4' class='rev_slider fullwidthabanner'>
              <ul>
                <li data-transition='slideleft' data-slotamount='7' data-masterspeed='1000' data-thumb='../user/images/slide-img1.jpg'><img src='../user/images/slide-img1.jpg' alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
                  <div class="info">
                    <div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;white-space:nowrap;'><span>Hoa quả Nhập khẩu</span> </div>
                    <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;white-space:nowrap;'><span>Từ Mỹ</span> </div>
                    <div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1450' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'>Không chất bảo quản và hoá chất</div>
                    <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'><a href='#' class="buy-btn">Mua</a></div>
                  </div>
                </li>
                <li data-transition='slideright' data-slotamount='7' data-masterspeed='1000' data-thumb='../user/images/slide-img2.jpg'><img src='../user/images/slide-img2.jpg' alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
                  <div class="info">
                    <div class='tp-caption ExtraLargeTitle sft slide2  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;white-space:nowrap;padding-right:0px'><span>Rau của quả</span> </div>
                    <div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;white-space:nowrap;'>Tươi mới</div>
                    <div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'>Được trồng tại các trang trại và nhà máy tại Việt Nam và nước ngoài.</div>
                    <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'><a href='#' class="buy-btn">Mua</a></div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12 col-mid">
          <div class="col-inner ">
            <div class="img-block"><a href="#">
              <div class="banner-details">
                <div class="banner-sub-title">Thực phẩm</div>
                <div class="banner-title">Chính hãng</div>
              </div>
              <img src="../user/images/organic-fruits.jpg" alt="Organic Fruits"></a></div>
            <div class="img-block1"><a href="#">
              <div class="banner-details">
                <div class="banner-sub-title">100%</div>
                <div class="banner-title">Tốt cho sức khoẻ</div>
              </div>
              <img src="../user/images/healthy-foods.jpg" alt="Healthy Foods"></a></div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12 col-right">
          <div class="image-item"><a href="#">
            <div class="banner-details">
              <div class="banner-title">Giá cả hợp lý</div>
              <div class="line"></div>
              <div class="banner-sub-title">Thực phẩm của chúng tôi luôn chào đón bạn!</div>
            </div>
            <img src="../user/images/best-price-always.jpg" class="img-responsive" alt="Best Price Always"></a></div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Slider --> 
  <!-- Content Page -->
  <div class="content-page">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-xs-12 hot-deal">
          <ul class="products-grid">
            <li class="right-space two-height item">
              <div class="item-inner">
                <div class="item-img">
                  <div class="item-img-info"><a href="product_detail.html" title="Retis lapen casen" class="product-image"><img src="${prohot.imageLink}" alt="${prohot.nameProduct}"></a>
                      <div class="hot-label hot-top-right">HOT</div>
                      <div class="box-hover">
                      <ul class="add-to-links">
                        <li><a class="link-quickview" data-toggle="modal" data-id="${prohot.productId}" href='#modal-id'>Xem nhanh</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="item-info">
                  <div class="info-inner">
                    <div class="item-title"><a href="product_detail.html" title="Retis lapen casen">${prohot.nameProduct}</a></div>
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
                        <div class="price-box"><span class="regular-price"><span class="price">${prohot.price} VNĐ</span></span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
        <!-- New Product Section -->
        <div class="col-md-9 col-xs-12">
          <div class="category-product">
            <div class="navbar nav-menu">
              <div class="navbar-collapse">
                <ul class="nav navbar-nav">
                  <li>
                    <div class="new_title">
                      <h2><strong>Sản phẩm </strong>Đang bán</h2>
                    </div>
                  </li>
                  <li class="active"><a data-toggle="tab" href="#tab-1">Trái cây</a></li>
                  <li><a data-toggle="tab" href="#tab-2">Rau củ quả</a></li>
                </ul>
              </div>
            </div>
            <div class="product-bestseller">
              <div class="product-bestseller-content">
                <div class="product-bestseller-list">
                  <div class="tab-container">
                    <div class="tab-panel" id="tab-2">
                      <div class="category-products">
                        <c:forEach items="${top4RauCuQua}" var="raucuqua" varStatus="loopCounter">
                            <ul class="products-grid">
                                <li class="item col-md-3 col-sm-4 col-xs-12">
                                    <div class="item-inner">
                                      <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="getOneProduct.htm?productId=${raucuqua.productId}"><img alt="${raucuqua.nameProduct}" src="${raucuqua.imageLink}"></a>
                                            <div class="box-hover">
                                            <ul class="add-to-links">
                                                <li><a class="link-quickview "  data-id="${raucuqua.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="item-info">
                                        <div class="info-inner">
                                          <div class="item-title"><a title="Retis lapen casen" href="getOneProduct.htm?productId=${raucuqua.productId}">${raucuqua.nameProduct}</a></div>
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
                                              <div class="price-box"><span class="regular-price"><span class="price">${raucuqua.price} VNĐ</span></span></div>
                                            </div>
                                            <div class="action">
                                                <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${raucuqua.productId}"><button class="button btn-cart" type="button"><span>Thêm vào giỏ</span></button></a>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                </li>
                              </ul>
                        </c:forEach>
                      </div>
                    </div>
                    <div class="tab-panel active" id="tab-1">
                      <div class="category-products">
                        <ul class="products-grid">
                          <c:forEach items="${top4TraiCay}" var="traicay" >
                                <li class="item col-md-3 col-sm-4 col-xs-12">
                                    <div class="item-inner">
                                      <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="getOneProduct.htm?productId=${traicay.productId}"><img alt="${traicay.nameProduct}" src="${traicay.imageLink}"></a>
                                            <div class="box-hover">
                                            <ul class="add-to-links">
                                              <li><a class="link-quickview" data-id="${traicay.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                                            </ul>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="item-info">
                                        <div class="info-inner">
                                          <div class="item-title"><a title="Retis lapen casen" href="getOneProduct.htm?productId=${traicay.productId}">${traicay.nameProduct}</a></div>
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
                                              <div class="price-box"><span class="regular-price"><span class="price">${traicay.price} VNĐ</span></span></div>
                                            </div>
                                            <div class="action">
                                              <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${traicay.productId}"><button class="button btn-cart" type="button"><span>Thêm vào giỏ</span></button></a>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                </li>
                            </c:forEach> 
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Content Page --> 
  <!-- Best Sellers Section-->
  <section class="bestsell-pro">
    <div class="container">
      <div class="block-title">
        <h2>Trái cây</h2>
      </div>
      <div class="slider-items-products">
        <div class="bestsell-block">
          <div id="bestsell-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col4 products-grid block-content">
                <c:forEach items="${allTraiCay}" var="traicay">
                <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="getOneProduct.htm?productId=${traicay.productId}"><img alt="Retis lapen casen" src="${traicay.imageLink}"></a>
                      <div class="new-label new-top-right">New</div>
                      <div class="box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" data-id="${traicay.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"><a title="Retis lapen casen" href="getOneProduct.htm?productId=${traicay.productId}">${traicay.nameProduct}</a></div>
                      <div class="rating">
                        <div class="ratings">
                          <div class="rating-box">
                            <div class="rating width80"></div>
                          </div>
                          <p class="rating-links"><a href="#">1 Review(s)</a><span class="separator">|</span><a href="#">Add Review</a></p>
                        </div>
                      </div>
                      <div class="item-content">
                        <div class="item-price">
                          <div class="price-box"><span class="regular-price"><span class="price">${traicay.price} VNĐ</span></span></div>
                        </div>
                        <div class="action">
                            <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${traicay.productId}"><button class="button btn-cart" type="button"><span>Thêm vào giỏ</span></button></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
                </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Bestsell Slider --> 
  <!-- Featured Product Section-->
  <section class="featured-pro">
    <div class="container">
      <div class="slider-items-products">
        <div class="featured-block">
          <div id="featured-slider" class="product-flexslider hidden-buttons">
            <div class="home-block-inner">
              <div class="block-title">
                <h2>Rau củ quả</h2>
              </div>
              <div class="pretext">Rau cải xanh hỗ trợ tiêu hóa và chống táo bón do chứa một hàm lượng chất xơ cao kèm theo chất nhầy trong cải xanh, sẽ hỗ trợ nhu động ruột, kích thích tiêu hóa và ngăn ngừa táo bón. Tác dụng khác là thanh nhiệt Trong các loại rau có lá màu xanh, cải xanh là rau tác dụng thanh nhiệt cao nhất, vào mùa nắng nóng, dùng cải xanh nấu nước uống hoặc nấu canh ăn hàng ngày có tác dụng giải nhiệt rất tốt.</div>
              <a href="grid.html" class="view_more_bnt">View All</a></div>
            <div class="slider-items slider-width-col4 products-grid block-content">
              <c:forEach items="${allRauCuQua}" var="raucuqua">
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="getOneProduct.htm?productId=${raucuqua.productId}"><img alt="Retis lapen casen" src="${raucuqua.imageLink}"></a>
                      <div class="new-label new-top-right">new</div>
                      <div class="box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" data-id="${raucuqua.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"><a title="Retis lapen casen" href="getOneProduct.htm?productId=${raucuqua.productId}">${raucuqua.nameProduct}</a></div>
                      <div class="rating">
                        <div class="ratings">
                          <div class="rating-box">
                            <div class="rating width80"></div>
                          </div>
                          <p class="rating-links"><a href="#">1 Review(s)</a><span class="separator">|</span><a href="#">Add Review</a></p>
                        </div>
                      </div>
                      <div class="item-content">
                        <div class="item-price">
                          <div class="price-box"><span class="regular-price"><span class="price">${raucuqua.price} VNĐ</span></span></div>
                        </div>
                        <div class="action">
                            <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${raucuqua.productId}"><button class="button btn-cart" type="button"><span>Thêm vào giỏ</span></button></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Featured Product Section --> 
  <!-- Banner Section -->
  <div class="bottom-banner-section">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="banner-inner">
            <div class="banner-details">
              <div class="banner-title">Thực phẩm tươi mới</div>
              <div class="banner-sub-title">Dễ chế biến và sử dụng</div>
              <div class="banner-desc">Các loại thực phẩm mà chúng tôi bán luôn hướng tới sự lựa chọn của bạn.</div>
              <div class="banner-bnt"><a href="#">Xem thêm</a></div>
            </div>
            <img alt="banner" src="../user/images/bottom-banner.jpg"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Banner Section --> 

  <!-- Brand Logo Section -->
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

<!-- Quick view -->

<!--modal normal-->
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
                                    <h2><b style="color: green">Mã sản phẩm &emsp;:</b><span class="modal_idd"></span></h2>
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
                                                    <input required="required" pattern="[1-15]" type="number" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty" max="15" min="1"  >
                                                    <input type="hidden" id="productId" value="" name="productIdd" class="getId"/>
                                                    <button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
                                                    </div>
                                                </div>
                                                <button class="button btn-cart" title="Add to Cart" type="submit">Thêm vào giỏ</button>
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
<script src="../user/js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">
var allproductx = [
  <c:forEach items="${allProductt}" var="pro">
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
