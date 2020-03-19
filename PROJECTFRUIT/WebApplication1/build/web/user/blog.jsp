<%-- 
    Document   : blog
    Created on : 13-Sep-2019, 17:47:54
    Author     : Le Minh Duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Brezza - Blog</title>
        <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<!-- Mobile Specific -->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS Style -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"/>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"/>
<link href="css/jquery.mobile-menu.css" rel="stylesheet" type="text/css"/>
<link href="css/revslider.css" rel="stylesheet" type="text/css"/>
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div class="main-container col2-right-layout">
    <div class="main container">
      <div class="row">
        <div class="col-sm-9 col-xs-12">
          <div class="col-main">
            <div class="page-title">
              <h2>Blog</h2>
            </div>
            <div class="blog-wrapper" id="main">
              <div class="site-content" id="primary">
                <div role="main" id="content">
                  <article class="blog_entry">
                    <div class="entry-content">
                      <div class="featured-thumb"><a href="blog_single_post.html"><img alt="blog-img3" src="images/blog-img3.jpg"></a></div>
                      <div class="entry-content">
                        <header class="blog_entry-header">
                          <div class="blog_entry-header-inner">
                            <h2 class="blog_entry-title"><a href="blog_single_post.html">Aliquam eget sapien placerat</a></h2>
                          </div>
                          <!--blog_entry-header-inner--> 
                        </header>
                        <p>Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.</p>
                        <p>Aliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.</p>
                        <p>Quisque nisl lectus, accumsan et euismod eu, sollicitudin ac augue. In sit amet urna magna. Curabitur imperdiet urna nec purus egestas eget aliquet purus iaculis. Nunc porttitor blandit imperdiet. Nulla facilisi. Cras odio ipsum, vehicula nec vehicula sed, convallis scelerisque quam. Phasellus ut odio dui, ut fermentum neque.</p>
                      </div>
                      <p><a class="btn" href="blog_single_post.html">Read More</a></p>
                    </div>
                    <footer class="entry-meta">This entry was posted in <a title="View all posts in First Category" href="#">First Category</a> On
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">Jan 10, 2018</time>
                      .</footer>
                  </article>
                  <article class="blog_entry">
                    <div class="entry-content">
                      <div class="featured-thumb"><a href="blog_single_post.html"><img alt="blog-img2" src="images/blog-img2.jpg"></a></div>
                      <div class="entry-content">
                        <header class="blog_entry-header">
                          <div class="blog_entry-header-inner">
                            <h2 class="blog_entry-title"><a href="blog_single_post.html">Dolor lorem ipsum</a></h2>
                          </div>
                          <!--blog_entry-header-inner--> 
                        </header>
                        <p>Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.</p>
                        <p>Aliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.</p>
                      </div>
                      <p><a class="btn" href="blog_single_post.html">Read More</a></p>
                    </div>
                    <footer class="entry-meta"> This entry was posted	in <a title="View all posts in First Category" href="#/first-category">First Category</a> On
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">May 20, 2018</time>
                      .</footer>
                  </article>
                  <article class="blog_entry">
                    <div class="entry-content">
                      <div class="featured-thumb"><a href="blog_single_post.html"><img alt="blog-img1" src="images/blog-img1.jpg"></a></div>
                      <div class="entry-content">
                        <header class="blog_entry-header">
                          <div class="blog_entry-header-inner">
                            <h2 class="blog_entry-title"><a href="blog_single_post.html">Pellentesque posuere</a></h2>
                          </div>
                          <!--blog_entry-header-inner--> 
                        </header>
                        <p>Fusce ac pharetra urna. Duis non lacus sit amet lacus interdum facilisis sed non est. Ut mi metus, semper eu dictum nec, condimentum sed sapien. Nullam lobortis nunc semper ipsum luctus ut viverra ante eleifend. Nunc pretium velit sed augue luctus accumsan.</p>
                        <p>Aliquam laoreet consequat malesuada. Integer vitae diam sed dolor euismod laoreet eget ac felis. Donec non erat sed elit bibendum sodales. Donec eu cursus velit. Proin nunc lacus, gravida mollis dictum ut, vulputate eu turpis. Sed felis sapien, commodo in iaculis in, feugiat sed enim. Sed nunc ipsum, fermentum varius dignissim vitae, blandit et ante.Maecenas sagittis, lorem sed congue egestas, lectus purus congue nisl, ac molestie enim ligula nec eros. Sed leo tortor, tincidunt sit amet elementum vel, eleifend at orci. Maecenas ut turpis felis. Donec sit amet quam sem, et aliquet est.</p>
                      </div>
                      <p><a class="btn" href="blog_single_post.html">Read More</a></p>
                    </div>
                    <footer class="entry-meta"> This entry was posted in <a title="View all posts in First Category" href="#/first-category">First Category</a> On
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">Nov 15, 2018</time>
                      . </footer>
                  </article>
                </div>
              </div>
              <div class="pager">
                <p class="amount"><strong>3 Item(s)</strong> </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-right sidebar col-sm-3 col-xs-12">
          <div class="widget_wrapper13">
            <div class="popular-posts widget widget__sidebar">
              <h3 class="widget-title"><span>Most Popular Post</span></h3>
              <div class="widget-content">
                <ul class="posts-list unstyled">
                  <li>
                    <figure class="featured-thumb"><a href="blog_single_post.html"><img width="80" alt="blog image" src="images/blog-img1.jpg"></a> </figure>
                    <!--featured-thumb-->
                    <h4><a title="Pellentesque posuere" href="blog_single_post.html">Pellentesque posuere</a></h4>
                    <p class="post-meta"><i class="fa fa-calendar"></i>
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">Jul 10, 2018</time>
                      .</p>
                  </li>
                  <li>
                    <figure class="featured-thumb"><a href="blog_single_post.html"><img width="80" alt="blog image" src="images/blog-img2.jpg"></a> </figure>
                    <!--featured-thumb-->
                    <h4><a title="Dolor lorem ipsum" href="blog_single_post.html">Dolor lorem ipsum</a></h4>
                    <div class="post-meta"><i class="fa fa-calendar"></i>
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">Jul 10, 2018</time>
                      .</div>
                  </li>
                  <li>
                    <figure class="featured-thumb"><a href="blog_single_post.html"><img width="80" alt="blog image" src="images/blog-img3.jpg"></a> </figure>
                    <!--featured-thumb-->
                    <h4><a title="Aliquam eget sapien placerat" href="blog_single_post.html">Aliquam eget sapien</a></h4>
                    <p class="post-meta"><i class="fa fa-calendar"></i>
                      <time datetime="2018-07-10T06:59:14+00:00" class="entry-date">Jul 10, 2018</time>
                      .</p>
                  </li>
                  <li>
                    <figure class="featured-thumb"><a href="blog_single_post.html"><img width="80" alt="blog image" src="images/blog-img1.jpg"></a> </figure>
                    <!--featured-thumb-->
                    <h4><a title="Pellentesque habitant morbi" href="blog_single_post.html">Pellentesque habitant</a></h4>
                    <div class="post-meta"><i class="fa fa-calendar"></i>
                      <time datetime="2018-07-10T07:09:31+00:00" class="entry-date">Jul 10, 2018</time>
                      .</div>
                  </li>
                </ul>
              </div>
              <!--widget-content--> 
            </div>
            <div class="popular-posts widget widget_categories">
              <h3 class="widget-title"><span>Categories</span></h3>
              <ul>
                <li class="cat-item"><a href="#">First Category</a></li>
                <li class="cat-item"><a href="#">Second Category</a></li>
              </ul>
            </div>
            <!-- Banner Ad Block -->
            <div class="ad-spots widget widget__sidebar">
              <h3 class="widget-title"><span>Ad Spots</span></h3>
              <div class="widget-content"><a target="_self" href="#"><img alt="offer banner" src="images/RHS-banner-img.jpg"></a></div>
            </div>
            <!-- Banner Text Block -->
            <div class="text-widget widget widget__sidebar">
              <h3 class="widget-title"><span>Text Widget</span></h3>
              <div class="widget-content">Mauris at blandit erat. Nam vel tortor non quam scelerisque cursus. Praesent nunc vitae magna pellentesque auctor. Quisque id lectus.<br>
                <br>
                Massa, eget eleifend tellus. Proin nec ante leo ssim nunc sit amet velit malesuada pharetra. Nulla neque sapien, sollicitudin non ornare quis, malesuada.</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Brand Logo Section -->
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
      <ul>
        <li class="level1"><a href="newsletter.html"><span>Fruit Store</span></a></li>
                <li class="level1"><a href="http://htmldemo.magikthemes.com/ecommerce/brezza-html-template/kid/newsletter.html"><span>Kid Store</span></a></li>
                <li class="level1"><a href="http://htmldemo.magikthemes.com/ecommerce/brezza-html-template/furniture/newsletter.html"><span>Furniture Store</span></a></li>
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
    <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/owl.carousel.min.js" type="text/javascript"></script>
  <script src="js/jquery.mobile-menu.min.js" type="text/javascript"></script>
  <script src="js/common.js" type="text/javascript"></script>
  <script src="js/revslider.js" type="text/javascript"></script>
  <script src="js/countdown.js" type="text/javascript"></script>
    </body>
</html>
