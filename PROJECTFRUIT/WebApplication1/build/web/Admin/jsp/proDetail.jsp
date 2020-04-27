<%-- 
    Document   : home
    Created on : Sep 18, 2019, 11:54:59 PM
    Author     : minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta charset="utf-8" />
        <title>Admin</title>

        <meta name="description" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

        <link href="../Admin/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Admin/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Admin/fonts/fonts.googleapis.com.css" rel="stylesheet" type="text/css"/>
        <link href="../Admin/css/ace.min.css" rel="stylesheet" type="text/css"/>
        <script src="../Admin/js/ace-extra.min.js" type="text/javascript"></script>

</head>
        <%
            HttpSession sessions = request.getSession();
            String email = (String)sessions.getAttribute("email");
            if(email!=null){
                %>
                    <body class="no-skin">
        <jsp:include page="header.jsp"/>
         <div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="../admin/home.htm">Home</a>
							</li>
							
						</ul><!-- /.breadcrumb -->
                                        </div>
                                                
                                                    <div class="main container">
		<div class="row">
			<section class="col-main col-sm-9 col-sm-push-3">
				<div class="category-description std">
					<div class="slider-items-products">
						<div id="category-desc-slider" class="product-flexslider hidden-buttons">
							<div class="slider-items slider-width-col1"> 
								
							</div>
						</div>
					</div>
				</div>
				<div class="category-title">
					<h1>Product Details</h1>
				</div>
				<div class="category-products">
					
                                             <!-- Main Container -->
					<section class="main-container col1-layout">
						<div class="main">
							<div class="container">
								<div class="row">
									<div class="col-main">
										<div class="product-view">
											<div class="product-essential">
                                                                                            
                                                                                            <form action="detail.htm" method="post"  id="product_addtocart_form"> 
                                                                                                     
													<div class="product-img-box col-lg-4 col-sm-5 col-xs-12">
														<!--<div class="new-label new-top-left"> New </div>-->
															<div class="product-image">
																<div class="product-full"><img id="product-zoom" src="${pro.imageLink}" data-zoom-image="${pro.imageLink}" alt="product-image"/> </div>
	                       										<!--<div class="more-views">
	                         									<div class="slider-items-products">
	                          								  	<div id="gallery_01" class="product-flexslider hidden-buttons product-img-thumb">
	                              								<div class="slider-items slider-width-col4 block-content">
	                                							<div class="more-views-items"><a href="#" data-image="products-images/product2.jpg" data-zoom-image="products-images/product2.jpg"><img id="product-zoom1" src="../../ProjectTemplateFull/products-images/product2.jpg" alt="product-image"/></a></div>
	                                							<div class="more-views-items"><a href="#" data-image="products-images/product3.jpg" data-zoom-image="products-images/product3.jpg"><img id="product-zoom2" src="../../ProjectTemplateFull/products-images/product3.jpg" alt="product-image"/></a></div>
	                                							<div class="more-views-items"><a href="#" data-image="products-images/product4.jpg" data-zoom-image="products-images/product4.jpg"><img id="product-zoom3" src="../../ProjectTemplateFull/products-images/product4.jpg" alt="product-image"/></a></div>
	                               								<div class="more-views-items"><a href="#" data-image="products-images/product5.jpg" data-zoom-image="products-images/product5.jpg"><img id="product-zoom4" src="../../ProjectTemplateFull/products-images/product5.jpg" alt="product-image"/></a> </div>
	                                							<div class="more-views-items"><a href="#" data-image="products-images/product6.jpg" data-zoom-image="products-images/product6.jpg"><img id="product-zoom5" src="../../ProjectTemplateFull/products-images/product6.jpg" alt="product-image"/></a></div>
	                               		 						<div class="more-views-items"><a href="#" data-image="products-images/product9.jpg" data-zoom-image="products-images/product9.jpg"><img id="product-zoom6" src="../../ProjectTemplateFull/products-images/product9.jpg" alt="product-image"/></a></div>
	                              								</div>
	                           									 </div>
	                          										</div>
	                      											</div>-->
                  											</div>
                  											<!-- end: more-images --> 
             											</div>
            										<div class="product-shop col-lg-8 col-sm-7 col-xs-12">
              											<div class="product-name">
              												<h2>${pro.nameProduct}</h2>
              											</div>
                                                                                                
              											<div class="price-block">
              												<div class="price-box">
              													<p class="special-price"><span class="price-label">Price</span> <span id="product-price-48" class="price"> ${pro.price} vnd </span></p>
              													<!-- <p class="old-price"><span class="price-label">Regular Price:</span><span class="price">$315.99</span></p> -->
              													<!-- <p class="availability in-stock pull-right"><span>Còn hàng</span></p> -->
              												</div>
              											</div>
                                                                                                              
              											<div class="short-description">
              												
              													<h2><b style="color: green">Origin &emsp;:</b> ${pro.groupProduct.groupName}</h2> 
              													<br>
              													<h2><b style="color: green">Status&emsp;&ensp;:</b> Sold</h2>
              													<br>
              													<h2><b style="color: green">Unit&ensp;&ensp;&ensp;&ensp;&ensp;:</b> 1 Kg</h2>
              													<br>
              													<br>
              													<br>
              											</div>
              												<div class="add-to-box">
              													<div class="add-to-cart">
              														<div class="pull-left">
              															<div class="custom pull-left" >
              																<button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
              																<input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
              																<button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
              															</div>
              														</div>
              															<button class="button btn-cart" title="Add to Cart" type="button">Add to Cart</button>
              													</div>
              												</div>              
            										</div>
                                                                                                              
          										</form>
                                                                                                                 
      										</div>
  										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!-- Main Container End --> 
                                    
                                      
                                       
					

					<div class="product-collateral col-lg-12 col-sm-12 col-xs-12">
						<div class="add_info">
							<ul id="product-detail-tab" class="nav nav-tabs product-tabs">
								<li class="active"> <a href="#product_tabs_description" data-toggle="tab">Product Description</a></li>
                				 <!--  <li><a href="#product_tabs_tags" data-toggle="tab">Tags</a></li>
                 				 <li><a href="#reviews_tabs" data-toggle="tab">Reviews</a></li>
                 				 <li><a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a></li>
                  				<li><a href="#product_tabs_custom1" data-toggle="tab">Custom Tab1</a></li> -->
             				</ul>

              			<div id="productTabContent" class="tab-content">
              				<div class="tab-pane fade in active" id="product_tabs_description">
              					<div class="std">
              						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id nulla. Donec a neque libero. Pellentesque aliquet, sem eget laoreet ultrices, ipsum metus feugiat sem, quis fermentum turpis eros eget velit. Donec ac tempus ante. Fusce ultricies massa massa. Fusce aliquam, purus eget sagittis vulputate, sapien libero hendrerit est, sed commodo augue nisi non neque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempor, lorem et placerat vestibulum, metus nisi posuere nisl, in accumsan elit odio quis mi. Cras neque metus, consequat et blandit et, luctus a nunc. Etiam gravida vehicula tellus, in imperdiet ligula euismod eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam erat mi, rutrum at sollicitudin rhoncus, ultricies posuere erat. Duis convallis, arcu nec aliquam consequat, purus felis vehicula felis, a dapibus enim lorem nec augue.</p>
              						<p> Nunc facilisis sagittis ullamcorper. Proin lectus ipsum, gravida et mattis vulputate, tristique ut lectus. Sed et lorem nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aenean eleifend laoreet congue. Vivamus adipiscing nisl ut dolor dignissim semper. Nulla luctus malesuada tincidunt. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer enim purus, posuere at ultricies eu, placerat a felis. Suspendisse aliquet urna pretium eros convallis interdum. Quisque in arcu id dui vulputate mollis eget non arcu. Aenean et nulla purus. Mauris vel tellus non nunc mattis lobortis.</p>
              					</div>
              				</div>
              			</div>
          				</div>
      				</div>

     				 <div class="toolbar">
      					<div class="pager">
      						<div class="pages">
      							<label>Page:</label>
      								<ul class="pagination">
										<li class="active"><a href="#" style="pointer-events:none">1</a></li>
      									<li><a href="/collections/all?page=2">2</a></li>
      									<li><a href="/collections/all?page=3">3</a></li>
      									<li><a href="/collections/all?page=2" title="2">&raquo;</a></li>
      								</ul>
      						</div>
      					</div>
     				</div>
  				</div>
			</section>
			<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
				<div class="side-nav-categories">
					<div class="block-title"> Product directory </div>
				<!--block-title--> 
					<!-- BEGIN BOX-CATEGORY -->
					<div class="box-content box-category">
						<ul>
							<li> <a  href="../homeController/listVegetables.htm">Vegetables</a> </li>
							<li> <a  href="../homeController/listFruits.htm">Fruit</a> </li>
						</ul>
					</div>
				<!--box-content box-category--> 
				</div>
	
				<div class="block block-cart hide_scroll open_button" id="open_shopping_cart">
					<div class="block-title"><span>Your Cart</span></div>
					<div class="block-content">
						<div class="summary">
							<p class="amount">Having <span id="cart-total" >2</span> Your Product in cart.</p>
							<p class="subtotal"> <span class="label">Total:</span> <span class="price total_price">2.050.000₫</span> </p>
						</div>
						<div class="ajax-checkout">
							<button onclick="window.location='/checkout'" type="submit" title="Submit" class="button button-checkout"><span>Pay</span></button>
						</div>
						<ul class="shopping_cart style_cart_col">
						</ul>
					</div>
				</div>
	
	
				<div class="block block-banner"><a href="#"><img src="images/block-banner.png" alt="block-banner"></a></div>
	
			</aside>
		</div>
	</div>
                                                
        
        <jsp:include page="footer.jsp"/>
		<script src="../Admin/js/jquery.2.1.1.min.js"></script>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='../Admin/js/jquery.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='../Admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../Admin/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="../Admin/js/jquery.dataTables.min.js"></script>
		<script src="../Admin/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="../Admin/js/dataTables.tableTools.min.js"></script>
		<script src="../Admin/js/dataTables.colVis.min.js"></script>

		<script type="text/javascript">
			jQuery(function($) {
				var oTable1 = 
				$('#dynamic-table')
				.dataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
			    } );
				TableTools.classes.container = "btn-group btn-overlap";
				TableTools.classes.print = {
					"body": "DTTT_Print",
					"info": "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
					"message": "tableTools-print-navbar"
				}
			
				//initiate TableTools extension
				var tableTools_obj = new $.fn.dataTable.TableTools( oTable1, {
					"sSwfPath": "assets/swf/copy_csv_xls_pdf.swf",
					
					"sRowSelector": "td:not(:last-child)",
					"sRowSelect": "multi",
					"fnRowSelected": function(row) {
						//check checkbox when row is selected
						try { $(row).find('input[type=checkbox]').get(0).checked = true }
						catch(e) {}
					},
					"fnRowDeselected": function(row) {
						//uncheck checkbox
						try { $(row).find('input[type=checkbox]').get(0).checked = false }
						catch(e) {}
					},
			
					"sSelectedClass": "success",
			        "aButtons": [
						{
							"sExtends": "copy",
							"sToolTip": "Copy to clipboard",
							"sButtonClass": "btn btn-white btn-primary btn-bold",
							"sButtonText": "<i class='fa fa-copy bigger-110 pink'></i>",
							"fnComplete": function() {
								this.fnInfo( '<h3 class="no-margin-top smaller">Table copied</h3>\
									<p>Copied '+(oTable1.fnSettings().fnRecordsTotal())+' row(s) to the clipboard.</p>',
									1500
								);
							}
						},
						
						{
							"sExtends": "csv",
							"sToolTip": "Export to CSV",
							"sButtonClass": "btn btn-white btn-primary  btn-bold",
							"sButtonText": "<i class='fa fa-file-excel-o bigger-110 green'></i>"
						},
						
						{
							"sExtends": "pdf",
							"sToolTip": "Export to PDF",
							"sButtonClass": "btn btn-white btn-primary  btn-bold",
							"sButtonText": "<i class='fa fa-file-pdf-o bigger-110 red'></i>"
						},
						
						{
							"sExtends": "print",
							"sToolTip": "Print view",
							"sButtonClass": "btn btn-white btn-primary  btn-bold",
							"sButtonText": "<i class='fa fa-print bigger-110 grey'></i>",
							
							"sMessage": "<div class='navbar navbar-default'><div class='navbar-header pull-left'><a class='navbar-brand' href='#'><small>Optional Navbar &amp; Text</small></a></div></div>",
							
							"sInfo": "<h3 class='no-margin-top'>Print view</h3>\
									  <p>Please use your browser's print function to\
									  print this table.\
									  <br />Press <b>escape</b> when finished.</p>",
						}
			        ]
			    } );
			    $(tableTools_obj.fnContainer()).appendTo($('.tableTools-container'));
				setTimeout(function() {
					$(tableTools_obj.fnContainer()).find('a.DTTT_button').each(function() {
						var div = $(this).find('> div');
						if(div.length > 0) div.tooltip({container: 'body'});
						else $(this).tooltip({container: 'body'});
					});
				}, 200);
				
				
				
				//ColVis extension
				var colvis = new $.fn.dataTable.ColVis( oTable1, {
					"buttonText": "<i class='fa fa-search'></i>",
					"aiExclude": [0, 6],
					"bShowAll": true,
					//"bRestore": true,
					"sAlign": "right",
					"fnLabel": function(i, title, th) {
						return $(th).text();//remove icons, etc
					}
					
				}); 
				
				//style it
				$(colvis.button()).addClass('btn-group').find('button').addClass('btn btn-white btn-info btn-bold')
				
				//and append it to our table tools btn-group, also add tooltip
				$(colvis.button())
				.prependTo('.tableTools-container .btn-group')
				.attr('title', 'Show/hide columns').tooltip({container: 'body'});
				
				//and make the list, buttons and checkboxed Ace-like
				$(colvis.dom.collection)
				.addClass('dropdown-menu dropdown-light dropdown-caret dropdown-caret-right')
				.find('li').wrapInner('<a href="javascript:void(0)" />') //'A' tag is required for better styling
				.find('input[type=checkbox]').addClass('ace').next().addClass('lbl padding-8');
			
			
				
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) tableTools_obj.fnSelect(row);
						else tableTools_obj.fnDeselect(row);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(!this.checked) tableTools_obj.fnSelect(row);
					else tableTools_obj.fnDeselect($(this).closest('tr').get(0));
				});
				
			
				
				
					$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
			
			})
		</script>
	</body>
                <%
            }else{
            %>
                <a href="<%=request.getContextPath()%>/loginController/login.htm"/><h1>Please login here!</h1>
            <% 
            }
        %>
	
</html>
