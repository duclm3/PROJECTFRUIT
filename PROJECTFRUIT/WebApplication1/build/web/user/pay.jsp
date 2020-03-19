<%-- 
    Document   : pay
    Created on : 13-Sep-2019, 17:09:53
    Author     : Le Minh Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <title>Brezza - pay</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
<link href="css/jquery.mobile-menu.css" rel="stylesheet" type="text/css"/>
<link href="css/revslider.css" rel="stylesheet" type="text/css"/>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<style type="text/css">
  .panel-payment-method {
    border: solid 1px #ddd;
    border-top: solid 3px #9ab401;
    -webkit-border-radius: 0;
    -moz-border-radius: 0;
    border-radius: 0;
}

.panel-payment-method .panel-heading {
    border-top: solid 1px #ddd;
    border-bottom: solid 1px #ddd;
}

.panel-payment-method .panel-body {
    background: #fafafa;
}
.icheckbox_square-green,
.iradio_square-green {
    display: inline-block;
    *display: inline;
    vertical-align: middle;
    margin: 0;
    padding: 0;
    width: 22px;
    height: 22px;
    background:url("images/green.png") no-repeat;
    border: none;
    cursor: pointer;
}

.icheckbox_square-green {
    background-position: 0 0;
}
    .icheckbox_square-green.hover {
        background-position: -24px 0;
    }
    .icheckbox_square-green.checked {
        background-position: -48px 0;
    }
    .icheckbox_square-green.disabled {
        background-position: -72px 0;
        cursor: default;
    }
    .icheckbox_square-green.checked.disabled {
        background-position: -96px 0;
    }

.iradio_square-green {
    background-position: -120px 0;
}
    .iradio_square-green.hover {
        background-position: -144px 0;
    }
    .iradio_square-green.checked {
        background-position: -168px 0;
    }
    .iradio_square-green.disabled {
        background-position: -192px 0;
        cursor: default;
    }
    .iradio_square-green.checked.disabled {
        background-position: -216px 0;
    }

/* HiDPI support */
@media (-o-min-device-pixel-ratio: 5/4), (-webkit-min-device-pixel-ratio: 1.25), (min-resolution: 120dpi) {
    .icheckbox_square-green,
    .iradio_square-green {
        background-image: images-url("images/green@2x.png");
        -webkit-background-size: 240px 24px;
        background-size: 240px 24px;
    }
}

</style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
          <section class="main-container col1-layout">
    <div class="main container">
      <div class="account-login">
        <div class="page-title">
          <h2>Thông tin người nhận</h2>
        </div>
        <fieldset class="col2-set">
          <div class="col-1 new-users">
            <div class="content">
               <ul class="form-list">
                <li>
                  <label for="email">Họ và tên người nhận <span class="required">*</span></label>
                  <br>
                  <input type="text" title="Email Address" class="input-text required-entry" id="email" value="" name="login[username]">
                </li>
                <li>
                  <label for="pass">Email <span class="required">*</span></label>
                  <br>
                  <input type="text" title="Password" id="pass" class="input-text required-entry validate-password" name="login[password]">
                </li>
                <li>
                  <label for="pass">Số điện thoại <span class="required">*</span></label>
                  <br>
                  <input type="number" title="Password" id="pass" class="input-text required-entry validate-password" name="login[password]">
                </li>
                <li>
                  <label for="pass">Địc chỉ giao hàng <span class="required">*</span></label>
                  <br>
                  <input type="text" title="Password" id="pass" class="input-text required-entry validate-password"  name="login[password]">
                </li>
              </ul>
            </div>
          </div>
          <div class="col-2 registered-users">
            <div class="content">
              <div class="panel panel-payment-method">
                <div class="panel-heading">
                    <td>
                      <h4 class="panel-title">
                         <input type="radio" name="gender" value="male">
                         <label for="orderguest-payment_type__cod" class=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><b> Thanh toán trực tiếp tại nhà</b></font></font></label>
                      </h4>

                </div>
                <div class="panel-body">
                    <font style="vertical-align: inherit;">
                      <font style="vertical-align: inherit;">
                        Quý khách vui lòng thanh toán cho Brezza bằng tiền mặt ngay sau khi nhận hàng.            
                      </font>
                    </font>
                </div>
                 <div class="panel-heading">
                    <h4 class="panel-title">
                       <input type="radio" name="gender" value="male">
                       <label for="orderguest-payment_type__cod" class=""><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">  <b>Thanh toán qua chuyển khoản ngân hàng</b></font></font></label>
                    </h4>
                </div>
                 <div class="panel-body">
                    <font style="vertical-align: inherit;">
                      <font style="vertical-align: inherit;">
                       Quý khách có thể thanh toán qua hệ thống toàn khoản sau của Brezza<br>
                      - Tài khoản ngân hàng Vietinbank – Chi Nhánh Bắc Hà Nội<br>
                      Trích tài khoản số: 102010001575011<br>
                      - Tài khoản ngân hàng Vietcombank - Chi Nhánh Trung Hòa<br>
                      Trích tài khoản số: 0011.00414.9307 <br>
                      Sau khi chuyển khoản vui ghi chú nội dung chuyển khoản xuống phía dưới để nhân viên có thể kiểm tra giao dịch một cách tốt nhất. <br><br>

                      Xin Quý khách lưu ý: Brezza sẽ giao hàng cho Quý khách sau khi nhận được chuyển khoản của Quý khách
                      hàng, trong trường hợp Quý khách hàng không thực hiện việc thanh toán đúng thỏa thuận Brezza có quyền
                      từ chối giao hàng. <br>       
                      </font>
                    </font>
                </div>
          </div>
          <div class="buttons-set">
                <button id="send2" name="send" type="submit" class="button login"><span>Đặt hàng</span></button>
                </div>
              </div>
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
            <div class="item"><a href="#"><img src="images/b-logo3.png" alt="Brand Logo"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo1.png" alt="Brand Logo1"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo2.png" alt="Brand Logo2"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo4.png" alt="Brand Logo3"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo5.png" alt="Brand Logo4"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo6.png" alt="Brand Logo5"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo2.png" alt="Brand Logo6"></a></div>
            <div class="item"><a href="#"><img src="images/b-logo4.png" alt="Brand Logo7"></a></div>
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
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="js/jquery.mobile-menu.min.js" type="text/javascript"></script>
  <script src="js/common.js" type="text/javascript"></script>
  <script src="js/revslider.js" type="text/javascript"></script>
  <script src="js/countdown.js" type="text/javascript"></script>
    </body>
</html>
