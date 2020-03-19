

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div id="navbar" class="navbar navbar-default">
		<script type="text/javascript">
			try{ace.settings.check('navbar' , 'fixed')}catch(e){}
		</script>

		<div class="navbar-container" id="navbar-container">
			<div class="navbar-header pull-left">
				<a href="../admin/home.htm" class="navbar-brand">
					<small>
						<i class="fa fa-user"></i>
						Admin
					</small>
				</a>
			</div>

			<div class="navbar-buttons navbar-header pull-right" role="navigation">
				<ul class="nav ace-nav">					

					<li class="light-blue">
						<a data-toggle="dropdown" href="#" class="dropdown-toggle">
							<img class="nav-user-photo" src="../Admin/avatars/user.jpg" alt="Jason's Photo" />
							<span class="user-info">
								<small>Welcome,</small>
								${users.userName}
							</span>

							<i class="ace-icon fa fa-caret-down"></i>
						</a>

						<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
							<li>
								<a href="#">
									<i class="ace-icon fa fa-cog"></i>
									Settings
								</a>
							</li>

							<li>
								<a href="#">
									<i class="ace-icon fa fa-user"></i>
									Profile
								</a>
							</li>

							<li class="divider"></li>

							<li>
                                                            <a href="<%=request.getContextPath()%>/logout.htm" onclick="return confirm('Do you want to exit?');" >
									<i class="ace-icon fa fa-power-off" ></i>
									Logout
								</a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.navbar-container -->
	</div>

	<div class="main-container" id="main-container">
		<script type="text/javascript">
			try{ace.settings.check('main-container' , 'fixed')}catch(e){}
		</script>

		<div id="sidebar" class="sidebar                  responsive">
			<script type="text/javascript">
				try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
			</script>

			<ul class="nav nav-list">				
				<li class="">
					<a href="../admin/home.htm">
						<i class="menu-icon fa fa-tachometer"></i>
						<span class="menu-text"> Dashboard </span>
					</a>

					<b class="arrow"></b>
				</li>


					<!--<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> Tables </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="tables.html">
									<i class="menu-icon fa fa-caret-right"></i>
									Simple &amp; Dynamic
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="jqgrid.html">
									<i class="menu-icon fa fa-caret-right"></i>
									jqGrid plugin
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>-->					

					<li class="">
						<a href="../adminproController/getAll.htm">
							<i class="menu-icon fa fa-cubes"></i>
							<span class="menu-text"> List Products </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="../groupController/getAll.htm">
							<i class="menu-icon fa fa fa-file"></i>
							<span class="menu-text"> List Category </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="../accController/getAllAcc.htm">
							<i class="menu-icon fa fa-users"></i>
							<span class="menu-text"> Accounts </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="../adminproController/getAllOrder.htm">
							<i class="menu-icon fa fa-file-o"></i>
							<span class="menu-text"> Orders </span>
						</a>

						<b class="arrow"></b>
					</li>
										
				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>

				<script type="text/javascript">
					try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
				</script>
		</div>
