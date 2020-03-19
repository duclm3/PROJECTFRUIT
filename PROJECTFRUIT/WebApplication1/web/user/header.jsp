<%-- 
    Document   : header
    Created on : 05-Sep-2019, 18:07:09
    Author     : Le Minh Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            <div class="logo"><a title="Brezza" href="index.html"><img alt="Brezza Logo" src="../user/images/logo.png"></a></div>
            <!-- End Logo --> </div>
          <div class="col-lg-5 col-md-4 col-sm-4 col-xs-12 hidden-xs">
            <div class="search-box">
              <form action="cat" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Tìm kiếm..." maxlength="70" name="search" id="search">
                <button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
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
            <li class="mega-menu"><a class="level-top" href="grid.jsp"><span>Rau củ quả</span></a>
              <div class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <ul class="level0">
                        <li class="level3 parent item"><a href="grid.html"><span>Rau</span></a>
                          <ul class="level1">
                            <li><a href="product_detail.html"><span>Xà lách</span></a></li>
                            <li><a href="product_detail.html"><span>Súp lơ xanh</span></a></li>
                            <li><a href="product_detail.html"><span>Rau cải xanh</span></a></li>
                            <li><a href="product_detail.html"><span>Rau bina</span></a></li>
                          </ul>
                        </li>
                        <li class="level3 parent item"><a href="grid.html"><span>Củ</span></a>
                          <ul class="level1">
                            <li><a href="product_detail.html"><span>Cà rốt</span></a></li>
                            <li><a href="product_detail.html"><span>Củ đậu</span></a></li>
                            <li><a href="product_detail.html"><span>Khoai tây</span></a></li>
                            <li><a href="product_detail.html"><span>Củ hành tím</span></a></li>
                          </ul>
                        </li>
                        <li class="level3 parent item"><a href="grid.html"><span>Đậu</span></a>
                          <ul class="level1">
                            <li><a href="product_detail.html"><span>Đậu Hà Lan</span></a></li>
                            <li><a href="product_detail.html"><span>Đậu nành</span></a></li>
                            <li><a href="product_detail.html"><span>Đậu xanh</span></a></li>
                            <li><a href="product_detail.html"><span>Đậu đen</span></a></li>
                          </ul>
                        </li>
                        <li class="level3 parent item"><a href="grid.html"><span>Quả</span></a>
                          <ul class="level1">
                            <li><a href="product_detail.html"><span>Cà chua</span></a></li>
                            <li><a href="product_detail.html"><span>Cà tím</span></a></li>
                            <li><a href="product_detail.html"><span>Ớt chuông</span></a></li>
                            <li><a href="product_detail.html"><span>Chanh</span></a></li>
                          </ul>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            <li class="mega-menu"><a class="level-top" href="grid.html"><span>Trái cây</span></a>
              <div class="level0-wrapper dropdown-6col">
                <div class="container">
                  <div class="level0-wrapper2">
                    <div class="nav-block nav-block-center">
                      <div class="col-1">
                        <ul class="level0">
                          <li class="level3 parent item"><a href="grid.html"><span>Trái cây nhập khẩu</span></a>
                            <ul class="level1">
                              <li><a href="product_detail.html"><span>Táo</span></a></li>
                              <li><a href="product_detail.html"><span>Nho</span></a></li>
                              <li><a href="product_detail.html"><span>Kiwi xanh</span></a></li>
                            </ul>
                          </li>
                          <li class="level3 parent item"><a href="grid.html"><span>Trái cây theo mùa</span></a>
                            <ul class="level1">
                              <li><a href="product_detail.html"><span>Xoài</span></a></li>
                              <li><a href="product_detail.html"><span>Lựu</span></a></li>
                              <li><a href="product_detail.html"><span>Đu đủ</span></a></li>
                              <li><a href="product_detail.html"><span>Đào</span></a></li>
                            </ul>
                          </li>
                          <li class="level3 parent item"><a href="grid.html"><span>Trái cây thường xuyên</span></a>
                            <ul class="level1">
                              <li><a href="product_detail.html"><span>Chuối</span></a></li>
                              <li><a href="product_detail.html"><span>Dứa</span></a></li>
                              <li><a href="product_detail.html"><span>Dừa</span></a></li>
                              <li><a href="product_detail.html"><span>Dâu tây</span></a></li>
                            </ul>
                          </li>
                        </ul>
                      </div>
                      <div class="col-2">
                        <div class="menu_image1"><a href="#"><img alt="Fruits Banner" src="../user/images/fruits-banner.png"></a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
            <li class="mega-menu"><a class="level-top" href="Gioithieu.html"><span>Giới thiệu</span></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

  </header>
</html>
