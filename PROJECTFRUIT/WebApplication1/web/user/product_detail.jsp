<%-- 
    Document   : product_detail
    Created on : 13-Sep-2019, 16:43:49
    Author     : Le Minh Duc
--%>

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
             <div class="mini-cart">
                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle">
                    <a href="<%=request.getContextPath()%>/cartController/blank.htm" style="text-decoration: none;">
                        <span class="cart_count"><input style="outline:none; border:none" maxlength="12" size="1" type="text" name="countCart" value="${countCart}" readonly=""/></span>
                        <span class="cart-title hidden-xs hidden-sm">Giỏ hàng </span>
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
        <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"><a href="<%=request.getContextPath()%>/proController/getAll.htm">Home</a><span>/</span></li>
            <li><a href="#">${namePro}</a></li>
<!--            <li><a href="grid.html">Regular Fruits</a><span>/</span></li>
            <li><strong>Retis lapen casen</strong></li>-->
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  
  <!-- Main Container -->
  <section class="main-container col1-layout">
    <div class="main">
      <div class="container">
        <div class="row">
          <div class="col-main">
            <div class="product-view">
              <div class="product-essential">
                <form action="<%=request.getContextPath()%>/cartController/addCart.htm" method="post" id="product_addtocart_form">
                  <div class="product-img-box col-lg-4 col-sm-5 col-xs-12">
                    <div class="new-label new-top-left"> New </div>
                    <div class="product-image">
                      <div class="product-full"><img id="product-zoom" src="${pro.imageLink}" data-zoom-image="${pro.imageLink}" alt="product-image"/> </div>
                      <div class="more-views">
                        <div class="slider-items-products">
                          <div id="gallery_01" class="product-flexslider hidden-buttons product-img-thumb">
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end: more-images --> 
                  </div>
                  <div class="product-shop col-lg-8 col-sm-7 col-xs-12">
                    <div class="product-name">
                      <h1>${pro.nameProduct}</h1>
                    </div>
                    <div class="price-block">
                      <div class="price-box">
                        <p class="special-price"><span class="price-label">Special Price</span> <span id="product-price-48" class="price">${pro.price} VNĐ</span></p>
                        <!-- <p class="old-price"><span class="price-label">Regular Price:</span><span class="price">$315.99</span></p> -->
                        <!-- <p class="availability in-stock pull-right"><span>Còn hàng</span></p> -->
                      </div>
                    </div>
                    <div class="short-description">
                      <h2><b style="color: green">Mã sản phẩm &emsp;:</b>${pro.productId}</h2>
                      <br>
                      <h2><b style="color: green">Tình trạng &emsp;&emsp;&ensp;:</b>Còn hàng</h2>
                      <br>
                      <h2><b style="color: green">Đơn vị tính&emsp;&emsp;&ensp;:</b>1kg</h2>
                    </div>
                    <div class="add-to-box">
                      <div class="add-to-cart">
                        <div class="pull-left">
                          <div class="custom pull-left" >
                            <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
                            <input type="number" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty" max="15" min="1" >
                            <input type="hidden" id="productId" value="${pro.productId}" name="productIdd" />
                            <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
                          </div>
                        </div>
                        <button class="button btn-cart" title="Add to Cart" type="submit">Add to Cart</button>
                      </div>
                    </div>
                    <h5><b>
                      <i class="fa fa-mobile" style="color: green">
                    </i> Quý khách mua hàng vui lòng gọi Hotline<b style="color: red"> 0123456789</b> hoặc đến địa chỉ :</b></h5>
                   <h5>
                      <b><i class="fa fa-map-marker" style="color: green"></i> Địa chỉ: 123 Phố Trần Duy Hưng, Cầu Giấy, Hà Nội</b>
                   </h5>
                   <h5><b><i class="fa fa-truck" style="color: green"></i> Giao hàng tận nơi, hài lòng thanh toán</b></h5>
                    <div class="social">
                      <ul class="link">
                        <li class="fb pull-left"><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li class="tw pull-left"><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li class="googleplus pull-left"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li class="rss pull-left"><a href="#"><i class="fa fa-rss"></i></a></li>
                        <li class="pintrest pull-left"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li class="linkedin pull-left"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li class="youtube pull-left"><a href="#"><i class="fa fa-youtube"></i></a></li>
                      </ul>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
          <div class="product-collateral col-lg-12 col-sm-12 col-xs-12">
            <div class="add_info">
              <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                <li class="active"> <a href="#product_tabs_description" data-toggle="tab">Mô tả sản phẩm</a></li>
               <!--  <li><a href="#product_tabs_tags" data-toggle="tab">Tags</a></li>
                <li><a href="#reviews_tabs" data-toggle="tab">Reviews</a></li>
                <li><a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a></li>
                <li><a href="#product_tabs_custom1" data-toggle="tab">Custom Tab1</a></li> -->
              </ul>
              <div id="productTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="product_tabs_description">
                  <div class="std">
                    <p><b>${pro.descriptions}</b></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.</p>
                    <p> Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.</p>
                  </div>
                </div>
                <div class="tab-pane fade" id="product_tabs_tags">
                  <div class="box-collateral box-tags">
                    <div class="tags">
                      <form id="addTagForm" action="#" method="get">
                        <div class="form-add-tags">
                          <label for="productTagName">Add Tags:</label>
                          <div class="input-box">
                            <input class="input-text" name="productTagName" id="productTagName" type="text">
                            <button type="button" title="Add Tags" class=" button btn-add" onClick="submitTagForm()"> <span>Add Tags</span> </button>
                          </div>
                          <!--input-box--> 
                        </div>
                      </form>
                    </div>
                    <!--tags-->
                    <p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                  </div>
                </div>
                <div class="tab-pane fade" id="reviews_tabs">
                  <div class="box-collateral box-reviews" id="customer-reviews">
                    <div class="box-reviews1">
                      <div class="form-add">
                        <form id="review-form" method="post">
                          <h3>Write Your Own Review</h3>
                          <fieldset>
                            <h4>How do you rate this product? <em class="required">*</em></h4>
                            <span id="input-message-box"></span>
                            <table id="product-review-table" class="data-table">
                              <thead>
                                <tr class="first last">
                                  <th>&nbsp;</th>
                                  <th><span class="nobr">1 *</span></th>
                                  <th><span class="nobr">2 *</span></th>
                                  <th><span class="nobr">3 *</span></th>
                                  <th><span class="nobr">4 *</span></th>
                                  <th><span class="nobr">5 *</span></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr class="first odd">
                                  <th>Price</th>
                                  <td class="value"><input type="radio" class="radio" value="11" id="Price_1" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="12" id="Price_2" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="13" id="Price_3" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="14" id="Price_4" name="ratings[3]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="15" id="Price_5" name="ratings[3]"></td>
                                </tr>
                                <tr class="even">
                                  <th>Value</th>
                                  <td class="value"><input type="radio" class="radio" value="6" id="Value_1" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="7" id="Value_2" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="8" id="Value_3" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="9" id="Value_4" name="ratings[2]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="10" id="Value_5" name="ratings[2]"></td>
                                </tr>
                                <tr class="last odd">
                                  <th>Quality</th>
                                  <td class="value"><input type="radio" class="radio" value="1" id="Quality_1" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="2" id="Quality_2" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="3" id="Quality_3" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="4" id="Quality_4" name="ratings[1]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="5" id="Quality_5" name="ratings[1]"></td>
                                </tr>
                              </tbody>
                            </table>
                            <input type="hidden" value="" class="validate-rating" name="validate_rating">
                            <div class="review1">
                              <ul class="form-list">
                                <li>
                                  <label class="required" for="nickname_field">Nickname<em>*</em></label>
                                  <div class="input-box">
                                    <input type="text" class="input-text" id="nickname_field" name="nickname">
                                  </div>
                                </li>
                                <li>
                                  <label class="required" for="summary_field">Summary<em>*</em></label>
                                  <div class="input-box">
                                    <input type="text" class="input-text" id="summary_field" name="title">
                                  </div>
                                </li>
                              </ul>
                            </div>
                            <div class="review2">
                              <ul>
                                <li>
                                  <label class="required " for="review_field">Review<em>*</em></label>
                                  <div class="input-box">
                                    <textarea rows="3" cols="5" id="review_field" name="detail"></textarea>
                                  </div>
                                </li>
                              </ul>
                              <div class="buttons-set">
                                <button class="button submit" title="Submit Review" type="submit"><span>Submit Review</span></button>
                              </div>
                            </div>
                          </fieldset>
                        </form>
                      </div>
                    </div>
                    <div class="box-reviews2">
                      <h3>Customer Reviews</h3>
                      <div class="box visible">
                        <ul>
                          <li>
                            <table class="ratings-table">
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#">Excellent</a></h6>
                              <small>Review by <span>John Doe </span>on 1/3/2018 </small>
                              <div class="review-txt"> I have purchased shirts from Minimalism a few times and am never disappointed. The quality is excellent and the shipping is amazing. It seems like it's at your front door the minute you get off your pc. I have received my purchases within two days - amazing.</div>
                            </div>
                          </li>
                          <li class="even">
                            <table class="ratings-table">
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating width80"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#">Amazing</a></h6>
                              <small>Review by <span>John Doe</span>on 1/3/2018 </small>
                              <div class="review-txt"> Minimalism is the online ! </div>
                            </div>
                          </li>
                          <li>
                            <table class="ratings-table">
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating width100"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating width80"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#">Nicely</a></h6>
                              <small>Review by <span>John Doe</span>on 1/3/2018 </small>
                              <div class="review-txt last"> Unbeatable service and selection. This store has the best business model I have seen on the net. They are true to their word, and go the extra mile for their customers. I felt like a purchasing partner more than a customer. You have a lifetime client in me. </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="actions"> <a class="button view-all" id="revies-button" href="#"><span><span>View all</span></span></a> </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane fade" id="product_tabs_custom">
                  <div class="product-tabs-content-inner">
                    <p>Rutrum ut, pellentesque euismod duis amet. Ipsum elementum, vitae vulputate non dolor, egestas dui feugiat consequat nunc, nullam consequat odio id, ipsum nulla. In pharetra, vehicula amet, libero neque consectetuer sed auctor, elit class arcu, arcu iaculis at risus vitae. Neque mollis imperdiet sed facilisis, vestibulum in in leo, sed praesent mattis turpis sollicitudin ut.</p>
                    <p>Maecenas nulla consequat imperdiet ipsum erat vitae, magna libero erat convallis elit aliquet. Ultricies egestas porttitor, id tincidunt id imperdiet, duis aenean porttitor libero, mauris metus leo quis nisl. Ut diam. Eu quam suscipit cras cras eu nisl, pellentesque mollis imperdiet massa, lobortis nunc convallis ligula amet felis, ut at vulputate mauris platea nunc ipsum. Tempor nibh commodo est, praesent sapien. Leo phasellus mollis sed nonummy scelerisque ligula, mi sapien.</p>
                  </div>
                </div>
                <div class="tab-pane fade" id="product_tabs_custom1">
                  <div class="product-tabs-content-inner">
                    <p>Sed ac vitae sed, morbi dolorem proin sit a vivamus sed, lectus quisque ac justo. Vestibulum risus orci, elit egestas, sit turpis tempus luctus fusce pede, in elit est orci quis, ut adipiscing pretium adipisicing gravida. Enim bibendum, in libero mauris ac quidem, venenatis luctus nec suscipit. Venenatis feugiat congue, ornare nunc per lorem tincidunt, pharetra massa sunt nec blandit nunc. Luctus nec mi sed id nisl, mauris nullam, faucibus quam sagittis rhoncus doloremque scelerisque, odio luctus id habitasse lobortis sapien rhoncus, blandit orci velit nam. Mattis leo, et vestibulum cras, lacus diam duis lacus. Fusce rhoncus id.</p>
                    <p>Viverra amet mus. Mi curabitur, posuere diam erat morbi sit amet quam, justo egestas libero lectus, nulla ridiculus tristique vestibulum, libero enim justo nisl nisl rutrum tellus. Eu a ut sed at sed. Quam purus turpis proin donec. Lectus ut placerat, aenean integer vehicula.</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
  
  <!-- Related Products Slider -->
  
  <div class="container"> 
    
    <!-- Related Slider -->
    <div class="related-pro">
      <div class="slider-items-products">
        <div class="related-block">
          <div id="related-products-slider" class="product-flexslider hidden-buttons">
            <div class="home-block-inner">
              <div class="block-title">
                <h2>Sản phẩm<br>
                  <em>Liên quan</em></h2>
              </div>
              <div class="pretext">Sem vel turpis, mi vivamus wisi, velit dolor nulla vehicula elit molestie imperdiet, quo ipsum vitae fusce consequat. Amet id posuere amet, vitae vestibulum elit est maecenas sapien ut. </div>
              <a href="#" class="view_more_bnt">View All</a> </div>
            <div class="slider-items slider-width-col4 products-grid block-content">
                <c:forEach items="${allRD}" var="pro">
                     <div class="item">
                        <div class="item-inner">
                          <div class="item-img">
                            <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="product_detail.html"><img alt="Retis lapen casen" src="${pro.imageLink}"></a>
                              <div class="new-label new-top-right">new</div>
                              <div class="box-hover">
                                <ul class="add-to-links">
                                   <li><a class="link-quickview" data-id="${pro.productId}" href='javascript:void(0)'>Xem nhanh</a></li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <div class="item-info">
                            <div class="info-inner">
                              <div class="item-title"><a title="Retis lapen casen" href="product_detail.html">${pro.nameProduct}</a></div>
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
                                  <div class="price-box"><span class="regular-price"><span class="price">${pro.price}</span></span></div>
                                </div>
                                <div class="action">
                                  <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${pro.productId}"><button class="button btn-cart" type="button"><span>Add to Cart</span></button></a>
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
    <!-- End related products Slider --> 
    
  </div>
  <!-- Related Products Slider End --> 
  
  <!-- Upsell Product Slider -->
  
  <div class="container"> 
    <!-- upsell Slider -->
    <div class="upsell-pro">
      <div class="slider-items-products">
        <div class="upsell-block">
          <div id="upsell-products-slider" class="product-flexslider hidden-buttons">
            <div class="home-block-inner">
              <div class="block-title">
                <h2>Sản phẩm<br>
                  <em>Liên quan</em></h2>
              </div>
              <div class="pretext">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Curabitur eu odio non justo euismod congue ut nec orci.</div>
              <a href="#" class="view_more_bnt">View All</a> </div>
            <div class="slider-items slider-width-col4 products-grid block-content">
            <c:forEach items="${allRD1}" var="pro">
                     <div class="item">
                        <div class="item-inner">
                          <div class="item-img">
                            <div class="item-img-info"><a class="product-image" title="Retis lapen casen" href="product_detail.html"><img alt="Retis lapen casen" src="${pro.imageLink}"></a>
                              <div class="new-label new-top-right">new</div>
                              <div class="box-hover">
                                <ul class="add-to-links">
                                  <li><a class="link-quickview" data-id="${pro.productId}" href='javascript:void(0)'>Xem nhanh </a></li>
                                </ul>
                              </div>
                            </div>
                          </div>
                          <div class="item-info">
                            <div class="info-inner">
                              <div class="item-title"><a title="Retis lapen casen" href="product_detail.html">${pro.nameProduct}</a></div>
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
                                  <div class="price-box"><span class="regular-price"><span class="price">${pro.price}</span></span></div>
                                </div>
                                <div class="action">
                                  <a href="<%=request.getContextPath()%>/cartController/addCart.htm?productIdd=${pro.productId}"><button class="button btn-cart" type="button"><span>Add to Cart</span></button></a>
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
    <!-- End Upsell  Slider --> 
  </div>
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
                                    <div class="product-full"><img id="product-zoom-img" src="" data-zoom-image="" alt="product-image"> </div>
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
                                        <p class="special-price"><span class="price-label">Giá</span> <span id="product-price" class="price"> ${prohot.price} VNĐ</span></p>
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
            $("#product-zoom-img").attr("src", _product.image);
            $(".product-name h1").html(_product.name);
            $(".modal_des").html(_product.description);
            $(".modal_idd").html(_product.id);
            $("#product-price").html(_product.price);
            $(".getId").val(_product.id);
            $("#modal-id").modal('show');
        })
    });
</script>
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
