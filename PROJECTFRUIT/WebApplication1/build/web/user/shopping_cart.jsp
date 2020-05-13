<%-- 
    Document   : shopping_cart
    Created on : 13-Sep-2019, 17:06:22
    Author     : Le Minh Duc
--%>
<%@page import="bkap.user.entity.Cart"%>
<%@page import="java.util.List"%>
<%@page import="bkap.user.controller.LoginSignController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Brezza</title>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->
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
                <div class="basket dropdown-toggle">
                    <a href="#" style="text-decoration: none;">
                        <span class="cart_count"><input style="outline:none; border:none" maxlength="12" size="1" type="text" name="countCart" value="${countCart}" readonly=""/></span>
                        <span class="cart-title hidden-xs hidden-sm">Giỏ hàng</span>
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
            <li class="mega-menu"><a class="level-top" href="<%=request.getContextPath()%>/proController/getAllRCQ.htm"><span>Rau củ quả</span></a>
            </li>
            <li class="mega-menu"><a class="level-top" href="<%=request.getContextPath()%>/proController/getAllTC.htm"><span>Trái cây</span></a>
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
 <form action="updateCart.htm" method="post">
   <section class="main-container col1-layout">
    <div class="main container">
      <div class="col-main">
        <div class="cart">
          <div class="page-title">
            <h2>Giỏ hàng của bạn</h2>
          </div>
          <div class="table-responsive">
              <fieldset>
                <table class="data-table cart-table" id="shopping-cart-table">
                  <thead>
                    <tr>
                      <th rowspan="1">&nbsp;</th>
                      <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                      <th rowspan="1"></th>
                      <th colspan="1" class="a-center"><span class="nobr">Đơn giá</span></th>
                      <th class="a-center" rowspan="1">Số lượng</th>
                      <th colspan="1" class="a-center">Tổng tiền</th>
                      <th class="a-center" rowspan="1">&nbsp;</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr class="first last">
                      <th class="a-right last" colspan="50">
                        <a href="<%=request.getContextPath()%>/proController/getAll.htm"><button class="button btn-continue" title="Continue Shopping" type="button"><span>Tiếp tục mua sắm</span></button></a>
                        <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span>Cập nhật</span></button>
                        <a href="removeAllCart.htm"><button id="empty_cart_button" class="button btn-empty" title="Clear Cart" value="empty_cart" name="update_cart_action" type="button"><span>Xoá</span></button></a>
                      </th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach items="${listCart}" var="cart">
                     <tr>
                        <td class="image"><a class="product-image" title="Retis lapen casen" href="#"><img alt="Retis lapen casen" src="${cart.pro.imageLink}"></a></td>
                        <td><h2 class="product-name"> <a href="#">${cart.pro.nameProduct}</a></h2></td>
                        <td class="a-center"><a title="Edit item parameters" class="edit-bnt" href="#"></a></td>
                        <td class="a-right"><span class="cart-price"> <span class="price">${cart.pro.price}</span> </span></td>
                        <td class="a-center movewishlist"><input maxlength="12" class="input-text qty" title="Qty" size="4" value="${cart.qty}" name="quantitys" type="number" max='15' min='1' pattern="[1-15]" required="required"></td>
                        <td class="a-right movewishlist"><span class="cart-price"> <span class="price"></span>${cart.qty*cart.pro.price}</span></td>
                        <td class="a-center last"><a class="button remove-item" title="Remove item" href="removeCart.htm?productId=${cart.pro.productId}"><span><span>Remove item</span></span></a></td>
                      </tr>
                    </c:forEach>  
                  </tbody>
                </table>
              </fieldset>
          </div>
          <!-- BEGIN CART COLLATERALS -->
          <div class="cart-collaterals row">
            <div class="col-sm-8">
              <div class="shipping">
                <img src="../user/images/Untitled.png">
              </div>
            </div>
            <div class="totals col-sm-4">
              <h3>Tổng tiền giỏ hàng</h3>
              <div class="inner">
                <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                  <tfoot>
                    <tr>
                      <td class="a-left"><strong>Total</strong></td>
                      <td class="a-right"><strong><span class="price">${totalAmount} VNĐ</span></strong></td>
                    </tr>
                  </tfoot>
                </table>
                <ul class="checkout">
                  <li>
                    <%
                        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
                        if(listCart.size()==0){
                            %>
                                <a href="<%=request.getContextPath()%>/proController/getAll.htm"><button class="button btn-proceed-checkout"  type="button"><span>Tiếp tục đặt hàng</span></button></a>
                            <%
                        }else{
                            %>
                                <a href="<%=request.getContextPath()%>/proController/initInsertOd.htm"><button class="button btn-proceed-checkout"  type="button"><span>Tiếp tục đặt hàng</span></button></a> 
                            <%
                        }
                    %>
                   
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
   </form>
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
      <ul>
        <li class="level1"><a href="newsletter.html"><span>Fruit Store</span></a></li>
                <li class="level1"><a href="../kid/newsletter.html"><span>Kid Store</span></a></li>
                <li class="level1"><a href="../furniture/newsletter.html"><span>Furniture Store</span></a></li>
      </ul>
    </li>
    <li><a href="#">Pages</a>
      <ul>
        <li><a href="grid.html">Grid</a></li>
        <li><a href="list.html">List</a></li>
        <li><a href="product_detail.html">Product Detail</a></li>
        <li><a href="shopping_cart.html">Shopping Cart</a></li>
        <li><a href="checkout.html">Checkout</a></li>
        <li><a href="wishlist.html">Wishlist</a></li>
        <li><a href="dashboard.html">Dashboard</a></li>
        <li><a href="multiple_addresses.html">Multiple Addresses</a></li>
        <li><a href="about_us.html">About us</a></li>
        <li><a href="blog.html">Blog</a>
          <ul>
            <li><a href="blog-detail.html">Blog Detail</a></li>
          </ul>
        </li>
        <li><a href="contact_us.html">Contact us</a></li>
        <li><a href="404error.html">404 Error Page</a></li>
      </ul>
    </li>
    <li><a href="#">Vegetables</a>
      <ul>
        <li><a href="grid.html"><span>Leaf</span></a>
          <ul>
            <li><a href="grid.html"><span>Spinach</span></a></li>
            <li><a href="grid.html"><span>Spring Onion</span></a></li>
            <li><a href="grid.html"><span>Cabbage</span></a></li>
            <li><a href="grid.html"><span>Lettuce</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Root</span></a>
          <ul>
            <li><a href="grid.html"><span>Carrots</span></a></li>
            <li><a href="grid.html"><span>Beets</span></a></li>
            <li><a href="grid.html"><span>Potato</span></a></li>
            <li><a href="grid.html"><span>Radishes</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Pod</span></a>
          <ul>
            <li><a href="grid.html"><span>Peas</span></a></li>
            <li><a href="grid.html"><span>Green beans</span></a></li>
            <li><a href="grid.html"><span>Wax beans</span></a></li>
            <li><a href="grid.html"><span>Runner beans</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Fruit</span></a>
          <ul>
            <li><a href="grid.html"><span>Tomato</span></a></li>
            <li><a href="grid.html"><span>Pumpkin</span></a></li>
            <li><a href="grid.html"><span>Cucumber</span></a></li>
            <li><a href="grid.html"><span>Squash</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Bulb</span></a>
          <ul>
            <li><a href="grid.html"><span>Artichokes</span></a></li>
            <li><a href="grid.html"><span>Cauliflower</span></a></li>
            <li><a href="grid.html"><span>Asparagus</span></a></li>
            <li><a href="grid.html"><span>Broccoli</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Flower</span></a>
          <ul>
            <li><a href="grid.html"><span>Garlic</span></a></li>
            <li><a href="grid.html"><span>Onions</span></a></li>
            <li><a href="grid.html"><span>Chives</span></a></li>
            <li><a href="grid.html"><span>Leeks</span></a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="grid.html">Fruits</a>
      <ul>
        <li><a href="grid.html"><span>Seasonal Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Mango</span></a></li>
            <li><a href="grid.html"><span>Orange</span></a></li>
            <li><a href="grid.html"><span>Strawberries</span></a></li>
            <li><a href="grid.html"><span>Grapes</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Regular Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Banana</span></a></li>
            <li><a href="grid.html"><span>Chikoo</span></a></li>
            <li><a href="grid.html"><span>Tender Coconut</span></a></li>
            <li><a href="grid.html"><span>Pineapple</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Exotics Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Mangosteen</span></a></li>
            <li><a href="grid.html"><span>Avocado</span></a></li>
            <li><a href="grid.html"><span>Grapefruit</span></a></li>
            <li><a href="grid.html"><span>Guava Thai</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Imported Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Apple</span></a></li>
            <li><a href="grid.html"><span>Kiwi Green</span></a></li>
            <li><a href="grid.html"><span>Passion Fruit</span></a></li>
            <li><a href="grid.html"><span>Pears</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Citrus Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Lemons</span></a></li>
            <li><a href="grid.html"><span>Lime</span></a></li>
            <li><a href="grid.html"><span>Oranges</span></a></li>
            <li><a href="grid.html"><span>Tangerines</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Dry Fruits</span></a>
          <ul>
            <li><a href="grid.html"><span>Apricots</span></a></li>
            <li><a href="grid.html"><span>Dates</span></a></li>
            <li><a href="grid.html"><span>Figs</span></a></li>
            <li><a href="grid.html"><span>Raisins</span></a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="grid.html">Organic Fruits</a>
      <ul>
        <li><a href="grid.html"><span>Apples</span></a>
          <ul>
            <li><a href="grid.html"><span>Peaches</span></a></li>
            <li><a href="grid.html"><span>Grapes</span></a></li>
            <li><a href="grid.html"><span>Celery</span></a></li>
            <li><a href="grid.html"><span>Spinach</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Strawberries</span></a>
          <ul>
            <li><a href="grid.html"><span>Kale</span></a></li>
            <li><a href="grid.html"><span>Collards</span></a></li>
            <li><a href="grid.html"><span>Sweet bell</span></a></li>
            <li><a href="grid.html"><span>Cherry tomatoes</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Hot peppers</span></a>
          <ul>
            <li><a href="grid.html"><span>Cabbbage</span></a></li>
            <li><a href="grid.html"><span>Cantaloupe</span></a></li>
            <li><a href="grid.html"><span>Grapefruit</span></a></li>
            <li><a href="grid.html"><span>Passion Fruit</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Cucumbers</span></a>
          <ul>
            <li><a href="grid.html"><span>Mangos</span></a></li>
            <li><a href="grid.html"><span>Papayas</span></a></li>
            <li><a href="grid.html"><span>Eggplant</span></a></li>
            <li><a href="grid.html"><span>Sweet Potatoes</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Potatoes</span></a>
          <ul>
            <li><a href="grid.html"><span>Asparagus</span></a></li>
            <li><a href="grid.html"><span>Kiwi</span></a></li>
            <li><a href="grid.html"><span>Grapefruit</span></a></li>
            <li><a href="grid.html"><span>Cauliflower</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Nectarines</span></a>
          <ul>
            <li><a href="grid.html"><span>Avocados</span></a></li>
            <li><a href="grid.html"><span>Sweet Corn</span></a></li>
            <li><a href="grid.html"><span>Pineapples</span></a></li>
            <li><a href="grid.html"><span>Onions</span></a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="grid.html">Sprouts</a>
      <ul>
        <li><a href="grid.html"><span>Brussels0</span></a>
          <ul>
            <li><a href="grid.html"><span>Racks &amp; Cabinets</span></a></li>
            <li><a href="grid.html"><span>Sofas</span></a></li>
            <li><a href="grid.html"><span>Chairs</span></a></li>
            <li><a href="grid.html"><span>Tables</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Mung bean</span></a>
          <ul>
            <li><a href="grid.html"><span>Broccoli</span></a></li>
            <li><a href="grid.html"><span>Serving Trolleys</span></a></li>
            <li><a href="grid.html"><span>Bar Counters</span></a></li>
            <li><a href="grid.html"><span>Dining Cabinets</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Wheatgrass</span></a>
          <ul class="level1">
            <li><a href="grid.html"><span>Beds</span></a></li>
            <li><a href="grid.html"><span>Chest of Drawers</span></a></li>
            <li><a href="grid.html"><span>Wardrobes &amp; Almirahs</span></a></li>
            <li><a href="grid.html"><span>Nightstands</span></a></li>
          </ul>
        </li>
        <li><a href="grid.html"><span>Horse gram</span></a>
          <ul>
            <li><a href="grid.html"><span>Brazil nut</span></a></li>
            <li><a href="grid.html"><span>Kitchen Fillings</span></a></li>
            <li><a href="grid.html"><span>Wall Units</span></a></li>
            <li><a href="grid.html"><span>Moth bean</span></a></li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="about_us.html">About us</a></li>
    <li><a href="contact-us.html">Contact Us</a></li>
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

<!-- JavaScript --> 
<script src="../user/js/jquery.min.js" type="text/javascript"></script>
<script src="../user/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../user/js/owl.carousel.min.js" type="text/javascript"></script>
<script src="../user/js/jquery.mobile-menu.min.js" type="text/javascript"></script>
<script src="../user/js/common.js" type="text/javascript"></script>
<script src="../user/js/revslider.js" type="text/javascript"></script>
<script src="../user/js/countdown.js" type="text/javascript"></script>
</body>
</html>
