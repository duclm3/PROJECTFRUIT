<%-- 
    Document   : home
    Created on : 05-Sep-2019, 18:20:58
    Author     : Le Minh Duc
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="bkap.user.controller.CartController"%>
<%@page import="bkap.user.controller.LoginSignController"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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

<section class="ftco-section">
    <f:form action="insertOd.htm" method="POST" class="billing-form" commandName="newOrder">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-7 ftco-animate">
                    <h3 class="mb-4 billing-heading">Thông tin người nhận</h3>
                    <div class="row align-items-end">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="firstname">Tên của bạn</label>
                                <f:input path="CustomerName" type="text" class="form-control" name="name" required="" style="width: 616px"/>
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="streetaddress">Địa chỉ giao hàng</label>
                                <f:input path="Addresss" type="text" class="form-control" name="address" required="" style="width: 616px"/>
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="phone">Số điện thoại</label>
                                <f:input path="Phone" type="text" class="form-control" placeholder="" name="phone" required=""/>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="emailaddress">Địa chỉ Email</label>
                                <f:input path="Email" type="text" class="form-control" placeholder="" name="email" required=""/>
                            </div>
                        </div>
                        <div class="w-100"></div>
                        <div class="col-md-6">
                            <img src="../user/images/category-2.jpg" style="width: 610px;margin-top: 33px;height:414px">
                        </div>
                         <div class="col-xl-5" style="margin-top:30px">
                            <div class="row mt-5 pt-3">
                                <div class="col-md-6 d-flex mb-5">
                                    <div class="cart-detail cart-total p-3 p-md-4" style="margin-top: 30px">
                                        <h3 class="billing-heading mb-4">Tổng tiền giỏ hàng</h3>
                                        <p class="d-flex">
                                            <span>Tổng phụ :</span>
                                            <span> VNĐ</span>
                                        </p>
                                        <p class="d-flex">
                                            <span>Phí vận chuyển :</span>
                                            <span>0.00 VNĐ</span>
                                        </p>
                                        <p class="d-flex">
                                            <span></span>
                                            <span></span>
                                        </p>
                                        <hr>
                                        <p class="d-flex total-price" style="padding-bottom: 17px">
                                            <span>Tổng cộng :</span>
                                            <span> VNĐ</span>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-6" >
                                    <div class="cart-detail p-3 p-md-4" style="border:1px solid lightgrey;height: 244px">
                                        <h3 class="billing-heading mb-4" style="margin-top:4px;margin-left:4px;">Phương thức thanh toán</h3>
                                        <div class="form-group">
                                            <div class="col-md-12" style="padding-left: 5px">
                                                <div class="radio">
                                                    <span class="glyphicon glyphicon-ok" style="color: green"></span>
                                                    <label style="padding-left: 0px">Thanh toán khi nhận hàng</label>
                                                </div>
                                                <div class="radio">
                                                    <span class="glyphicon glyphicon-ok" style="color: green"></span>
                                                    <label style="padding-left: 0px">Miễn phí giao hàng với đơn giá lớn hơn 500.000 vnđ</label>
                                                </div>
                                                <div class="radio">
                                                    <span class="glyphicon glyphicon-ok" style="color: green"></span>
                                                    <label style="padding-left: 0px">Giảm 50% với đơn hàng có giá trị từ 2.000.000 vnđ trở lên</label>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-success" style="padding:15px 32px;border: 0;margin: 2px 490px;margin-top:55px" value="" >Đặt hàng</button>
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                    <!-- END -->
                </div>
               <!-- .col-md-8 -->
            </div>
        </div>
        <f:input path="Amount" type="hidden" value="<%=CartController.totalAmount%>"/>
        <f:input path="OrderStatus" type="hidden" value="<%=1%>"/>
        <f:input path="Quantity" type="hidden" value="<%=CartController.countCart%>"/>
        <%
            LocalDate today = LocalDate.now();
            String formattedDate = today.format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));
        %>
        <f:input path="OrderDate" type="hidden" value="<%=formattedDate%>"/>
    </f:form>                        
</section> <!-- .section -->


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
