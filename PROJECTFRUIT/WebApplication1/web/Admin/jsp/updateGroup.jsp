<%-- 
    Document   : listproducts
    Created on : Sep 17, 2019, 10:08:21 PM
    Author     : minh
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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
                <link href="../Admin/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
                <link href="../Admin/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
                <link href="../Admin/fonts/fonts.googleapis.com.css" rel="stylesheet" type="text/css"/>
                <link href="../Admin/css/ace.min.css" rel="stylesheet" type="text/css"/>
                <script src="../Admin/js/ace-extra.min.js" type="text/javascript"></script>
                <script src="../Admin/ckfinder/ckfinder.js" type="text/javascript"></script>
                <script src="../Admin/ckeditor/ckeditor.js" type="text/javascript"></script>
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
    <li class="active">Update Category</li>
</ul><!-- /.breadcrumb -->

<div class="nav-search" id="nav-search">
    <form class="form-search">
            <span class="input-icon">
                    <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                    <i class="ace-icon fa fa-search nav-search-icon"></i>
            </span>
    </form>
</div>
</div>

<div class="page-header">
    <h2>
       Change group information
    </h2>
</div>

<div class="row">
    <div class="col-xs-12">
        <f:form class="form-horizontal" action="updateGroup.htm" commandName="gUpdate" method="POST" >
                <div class="form-group">
                        <f:label path="groupId" class="col-sm-2 control-label no-padding-right"  > ID </f:label>
                        <div class="col-sm-10">
                        <f:input path="groupId" readonly="true" class="col-xs-10 col-sm-10" />
                        </div>
                </div>
                <div class="form-group">
                        <f:label path="groupName" class="col-sm-2 control-label no-padding-right" for="form-field-1"> Name </f:label>
                        <div class="col-sm-10">
                                <f:input  path="groupName" placeholder="" class="col-xs-10 col-sm-10" />
                        </div>
                </div>

                <div class="form-group">
                        <f:label path="descriptions" class="col-sm-2 control-label no-padding-right" for="form-field-1"> Descriptions </f:label>
                        <div class="col-sm-10">
                                <f:textarea path="descriptions" id="descriptions" placeholder="" class="col-xs-10 col-sm-10" />
                        </div>
                </div>
                <div class="form-group">
                        <f:label class="col-sm-2 control-label no-padding-right" for="form-field-1" path="imageLink"> Image </f:label>
                        <div class="col-sm-10">
                                <f:input id="imageLink" path="imageLink" placeholder=""   cssClass="col-xs-10 col-sm-10 upload_file" name="imagelink" />
                                <div class="review_img"></div>
                        </div>
                </div>
                <div class="form-group">
                        <f:label path="groupStatus" class="col-sm-2 control-label no-padding-right" for="form-field-1"> Status </f:label>
                        <div class="col-sm-10">
                                <f:select path="groupStatus" placeholder="" class="col-xs-10 col-sm-10">
                                    <f:option value="true" label="Hiện"/>
                                    <f:option value="false" label="Ẩn"/>
                                </f:select>
                        </div>

                </div>
                <div class="clearfix form-actions">
                        <div class="col-md-offset-2 col-md-10">
                            <button class="btn btn-info" type="submit" value="Add">
                                        <i class="ace-icon fa fa-check bigger-110"></i>
                                        Submit
                                </button>
                                &nbsp; &nbsp; &nbsp;
                                <button class="btn" type="reset">
                                        <i class="ace-icon fa fa-undo bigger-110"></i>
                                        Reset
                                </button>
                        </div>
                </div>
        </f:form>	
      
    </div>
</div><!-- /.row --> 

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

<!-- ace scripts -->
<script src="../Admin/js/ace-elements.min.js"></script>
<script src="../Admin/js/ace.min.js"></script>
<script src="../Admin/ckfinder/ckfinder.js" type="text/javascript"></script>
<script src="../Admin/ckeditor/ckeditor.js" type="text/javascript"></script>
<!-- inline scripts related to this page -->
<script type="text/javascript">

//CKEDITOR.replace('descriptions');
//CKFinder.setupCKEditor(ckDescription,'/Admin/ckfinder/');
$(function() {
    var ckDescriptions = CKEDITOR.replace('descriptions');
    CKFinder.setupCKEditor(ckDescriptions,'/Admin/ckfinder');
    $(".upload_file").click(function(){
        var finder = new CKFinder();
        var input = $(this);
        finder.selectActionFunction = function(url){
            console.log(url);
            input.val(".."+url);
            $(".review_img").html('<img width="100" src="'+url+'" />');
        };
        
        finder.popup();
        //console.log("AAA");
    });
});
</script>
</body>
        <%
    } else{
            %>
                <a href="<%=request.getContextPath()%>/loginController/login.htm"/><h1>Please login here!</h1>
            <%
    }
%>

</html>
