

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Admin</title>

		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
                <link href="../Admin/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <link href="../Admin/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
                <link href="../Admin/css/style.css" rel="stylesheet" type="text/css"/>
		<!-- page specific plugin styles -->

		<!-- text fonts -->

                <link href="../Admin/fonts/fonts.googleapis.com.css" rel="stylesheet" type="text/css"/>

		<!-- ace styles -->
		
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
                        <li class="active">List Products</li>
                </ul><!-- /.breadcrumb -->
                <!--<div class="nav-search" id="nav-search">
                        <form class="form-search">
                                <span class="input-icon">
                                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                                </span>
                        </form>
                </div> /.nav-search -->

        </div>

        <div class="box-header">
                <h3 class="box-title">List Products</h3>
                <br>
                <div class="row">
                        <div class="col-md-6"><a href="initInsert.htm" class="btn btn-primary">Add</a></div>

                </div>
        </div>

        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                        <tr>
                                <th>Id</th>
                                <th>Image</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Category</th>
                                <th>Quantity</th>
                                <th>Descriptions</th>
                                <th>Status</th>
                                <th>Action</th>
                        </tr>
                </thead>

                <tbody>
                    <c:forEach items="${listPro}" var="pro">
                    <tr>
                        <td>${pro.productId}</td>
                        <td class="product-img"><img src="${pro.imageLink}"/></td>
                        <td>${pro.nameProduct}</td>
                        <td>${pro.price}</td>
                        <td>${pro.groupProduct.groupName}</td>
                        <td>${pro.quantity}</td>
                        <td>${pro.descriptions}</td>
                        <td>${pro.proStatus}</td>

                                <td>
                                        <div class="hidden-sm hidden-xs action-buttons">
                                                <a class="link-quickview" data-toggle="modal" data-id="${pro.productId}" href='javascript:void(0)'>
                                                        <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                </a>

                                                <a class="green" href="initUpdate.htm?productId=${pro.productId}">
                                                        <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                </a>

                                                <a class="red" href="deleteProduct.htm?productId=${pro.productId}">
                                                        <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                </a>
                                        </div>
                                </td>
                        </tr>
                                </c:forEach>

                                        <div class="hidden-md hidden-lg">
                                                <div class="inline pos-rel">
                                                        <button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
                                                                <i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
                                                        </button>

                                                        <ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
                                                                <li>
                                                                        <a href="#" class="tooltip-info" data-rel="tooltip" title="View">
                                                                                <span class="blue">
                                                                                        <i class="ace-icon fa fa-search-plus bigger-120"></i>
                                                                                </span>
                                                                        </a>
                                                                </li>

                                                                <li>
                                                                        <a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
                                                                                <span class="green">
                                                                                        <i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
                                                                                </span>
                                                                        </a>
                                                                </li>

                                                                <li>
                                                                        <a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
                                                                                <span class="red">
                                                                                        <i class="ace-icon fa fa-trash-o bigger-120"></i>
                                                                                </span>
                                                                        </a>
                                                                </li>
                                                        </ul>
                                                </div>
                                        </div>
                                </td>
                        </tr>
                </tbody>
        </table>
                                    
                                    <!--modal normal-->
<div class="modal fade view-modal" id="modal-id" style="z-index: 1000000000">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Thông tin</h4>
            </div>
            <div class="modal-body">
                <div class="product-view">
                    <div class="product-essential">
       
                            <div class="product-img-box col-lg-5 col-sm-5 col-xs-12">
                                <div class="product-image">
                                    <div class="product-full"><img id="product-zoom" src="" data-zoom-image="" alt="product-image" style="width: 336px;
    padding-top: 15px;"> </div>
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
                                    <h2><p style="color: red" class="special-price"><span class="price-label">Price &emsp;:</span> <span id="product-price-48" class="price"> ${pro.price} VNĐ</span></p></h2>
                                    </div>
                                </div>
                                <div class="short-description">
                                    <h2><b style="color: green">Code &emsp;:</b><span class="modal_idd"></span></h2>
                                    <br>
                                    <h2><b style="color: green">Status &ensp;:</b>Còn hàng</h2>
                                    <br>
                                    <h2><b style="color: green">Unit  &emsp;&ensp;:</b>1kg</h2>
                                    <br>
                                    <h2><b style="color: green">Details &ensp;:</b> <br>
                                        <span class="modal_des"></span></h2>
                                    <br>
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
			
                        <jsp:include page="footer.jsp"/>
                        
   <!--[if !IE]> -->
		<script src="../Admin/js/jquery.2.1.1.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery.1.11.1.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='../Admin/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='../Admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../Admin/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="../Admin/js/jquery.dataTables.min.js"></script>
		<script src="../Admin/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="../Admin/js/dataTables.tableTools.min.js"></script>
		<script src="../Admin/js/dataTables.colVis.min.js"></script>

		<!-- ace scripts -->
		<script src="../Admin/js/ace-elements.min.js"></script>
		<script src="../Admin/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var oTable1 = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.dataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			    } );
				//oTable1.fnAdjustColumnSizing();
			
			
				//TableTools settings
				TableTools.classes.container = "btn-group btn-overlap";
				TableTools.classes.print = {
					"body": "DTTT_Print",
					"info": "tableTools-alert gritter-item-wrapper gritter-info gritter-center white",
					"message": "tableTools-print-navbar"
				}
			
				//initiate TableTools extension
				var tableTools_obj = new $.fn.dataTable.TableTools( oTable1, {
					"sSwfPath": "../Admin/swf/copy_csv_xls_pdf.swf",
					
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
				//we put a container before our table and append TableTools element to it
			    $(tableTools_obj.fnContainer()).appendTo($('.tableTools-container'));
				
				//also add tooltips to table tools buttons
				//addding tooltips directly to "A" buttons results in buttons disappearing (weired! don't know why!)
				//so we add tooltips to the "DIV" child after it becomes inserted
				//flash objects inside table tools buttons are inserted with some delay (100ms) (for some reason)
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
					"aiExclude": [0, 7],
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
                        
                        var allproductx = [
  <c:forEach items="${listPro}" var="pro">
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
	</body>
                <%
            }else{
                %>
                    <a href="<%=request.getContextPath()%>/loginController/login.htm"/><h1>Please login here!</h1>
                <%
            }
        %>
	
</html>
