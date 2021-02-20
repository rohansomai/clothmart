<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no"
	name="viewport">
<title>Otika - Admin Dashboard Template</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="adminResources/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="adminResources/css/datatables.min.css">
<link rel="stylesheet"
	href="adminResources/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="adminResources/css/style.css">
<link rel="stylesheet" href="adminResources/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="adminResources/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='adminResources/image/favicon.ico' />
</head>

<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">
			<div class="navbar-bg"></div>

			<jsp:include page="header.jsp"></jsp:include>



			<jsp:include page="menu.jsp"></jsp:include>


			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="section-body">
						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-header">
										<h4>Export Table</h4>
									</div>
									<div class="card-body">
										<div class="table-responsive">
											<table class="table table-striped table-hover"
												id="tableExport" style="width: 100%;">
												<thead>
													<tr>
														<th>Name</th>
														<th>Position</th>
														<th>Office</th>
														<th>Age</th>
														<th>Start date</th>
														<th>Salary</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Tiger Nixon</td>
														<td>System Architect</td>
														<td>Edinburgh</td>
														<td>61</td>
														<td>2011/04/25</td>
														<td>$320,800</td>
													</tr>
													<tr>
														<td>Garrett Winters</td>
														<td>Accountant</td>
														<td>Tokyo</td>
														<td>63</td>
														<td>2011/07/25</td>
														<td>$170,750</td>
													</tr>
													<tr>
														<td>Ashton Cox</td>
														<td>Junior Technical Author</td>
														<td>San Francisco</td>
														<td>66</td>
														<td>2009/01/12</td>
														<td>$86,000</td>
													</tr>
													<tr>
														<td>Cedric Kelly</td>
														<td>Senior Javascript Developer</td>
														<td>Edinburgh</td>
														<td>22</td>
														<td>2012/03/29</td>
														<td>$433,060</td>
													</tr>
													<tr>
														<td>Airi Satou</td>
														<td>Accountant</td>
														<td>Tokyo</td>
														<td>33</td>
														<td>2008/11/28</td>
														<td>$162,700</td>
													</tr>
													<tr>
														<td>Brielle Williamson</td>
														<td>Integration Specialist</td>
														<td>New York</td>
														<td>61</td>
														<td>2012/12/02</td>
														<td>$372,000</td>
													</tr>
													<tr>
														<td>Herrod Chandler</td>
														<td>Sales Assistant</td>
														<td>San Francisco</td>
														<td>59</td>
														<td>2012/08/06</td>
														<td>$137,500</td>
													</tr>
													<tr>
														<td>Rhona Davidson</td>
														<td>Integration Specialist</td>
														<td>Tokyo</td>
														<td>55</td>
														<td>2010/10/14</td>
														<td>$327,900</td>
													</tr>
													<tr>
														<td>Colleen Hurst</td>
														<td>Javascript Developer</td>
														<td>San Francisco</td>
														<td>39</td>
														<td>2009/09/15</td>
														<td>$205,500</td>
													</tr>
													<tr>
														<td>Sonya Frost</td>
														<td>Software Engineer</td>
														<td>Edinburgh</td>
														<td>23</td>
														<td>2008/12/13</td>
														<td>$103,600</td>
													</tr>
													<tr>
														<td>Jena Gaines</td>
														<td>Office Manager</td>
														<td>London</td>
														<td>30</td>
														<td>2008/12/19</td>
														<td>$90,560</td>
													</tr>
													<tr>
														<td>Quinn Flynn</td>
														<td>Support Lead</td>
														<td>Edinburgh</td>
														<td>22</td>
														<td>2013/03/03</td>
														<td>$342,000</td>
													</tr>
													<tr>
														<td>Charde Marshall</td>
														<td>Regional Director</td>
														<td>San Francisco</td>
														<td>36</td>
														<td>2008/10/16</td>
														<td>$470,600</td>
													</tr>
													<tr>
														<td>Haley Kennedy</td>
														<td>Senior Marketing Designer</td>
														<td>London</td>
														<td>43</td>
														<td>2012/12/18</td>
														<td>$313,500</td>
													</tr>
													<tr>
														<td>Tatyana Fitzpatrick</td>
														<td>Regional Director</td>
														<td>London</td>
														<td>19</td>
														<td>2010/03/17</td>
														<td>$385,750</td>
													</tr>
													<tr>
														<td>Michael Silva</td>
														<td>Marketing Designer</td>
														<td>London</td>
														<td>66</td>
														<td>2012/11/27</td>
														<td>$198,500</td>
													</tr>
													<tr>
														<td>Paul Byrd</td>
														<td>Chief Financial Officer (CFO)</td>
														<td>New York</td>
														<td>64</td>
														<td>2010/06/09</td>
														<td>$725,000</td>
													</tr>
													<tr>
														<td>Gloria Little</td>
														<td>Systems Administrator</td>
														<td>New York</td>
														<td>59</td>
														<td>2009/04/10</td>
														<td>$237,500</td>
													</tr>
													<tr>
														<td>Bradley Greer</td>
														<td>Software Engineer</td>
														<td>London</td>
														<td>41</td>
														<td>2012/10/13</td>
														<td>$132,000</td>
													</tr>
													<tr>
														<td>Dai Rios</td>
														<td>Personnel Lead</td>
														<td>Edinburgh</td>
														<td>35</td>
														<td>2012/09/26</td>
														<td>$217,500</td>
													</tr>
													<tr>
														<td>Jenette Caldwell</td>
														<td>Development Lead</td>
														<td>New York</td>
														<td>30</td>
														<td>2011/09/03</td>
														<td>$345,000</td>
													</tr>
													<tr>
														<td>Yuri Berry</td>
														<td>Chief Marketing Officer (CMO)</td>
														<td>New York</td>
														<td>40</td>
														<td>2009/06/25</td>
														<td>$675,000</td>
													</tr>
													<tr>
														<td>Caesar Vance</td>
														<td>Pre-Sales Support</td>
														<td>New York</td>
														<td>21</td>
														<td>2011/12/12</td>
														<td>$106,450</td>
													</tr>
													<tr>
														<td>Doris Wilder</td>
														<td>Sales Assistant</td>
														<td>Sidney</td>
														<td>23</td>
														<td>2010/09/20</td>
														<td>$85,600</td>
													</tr>
													<tr>
														<td>Angelica Ramos</td>
														<td>Chief Executive Officer (CEO)</td>
														<td>London</td>
														<td>47</td>
														<td>2009/10/09</td>
														<td>$1,200,000</td>
													</tr>
													<tr>
														<td>Gavin Joyce</td>
														<td>Developer</td>
														<td>Edinburgh</td>
														<td>42</td>
														<td>2010/12/22</td>
														<td>$92,575</td>
													</tr>
													<tr>
														<td>Jennifer Chang</td>
														<td>Regional Director</td>
														<td>Singapore</td>
														<td>28</td>
														<td>2010/11/14</td>
														<td>$357,650</td>
													</tr>
													<tr>
														<td>Brenden Wagner</td>
														<td>Software Engineer</td>
														<td>San Francisco</td>
														<td>28</td>
														<td>2011/06/07</td>
														<td>$206,850</td>
													</tr>
													<tr>
														<td>Fiona Green</td>
														<td>Chief Operating Officer (COO)</td>
														<td>San Francisco</td>
														<td>48</td>
														<td>2010/03/11</td>
														<td>$850,000</td>
													</tr>
													<tr>
														<td>Shou Itou</td>
														<td>Regional Marketing</td>
														<td>Tokyo</td>
														<td>20</td>
														<td>2011/08/14</td>
														<td>$163,000</td>
													</tr>
													<tr>
														<td>Michelle House</td>
														<td>Integration Specialist</td>
														<td>Sidney</td>
														<td>37</td>
														<td>2011/06/02</td>
														<td>$95,400</td>
													</tr>
													<tr>
														<td>Suki Burks</td>
														<td>Developer</td>
														<td>London</td>
														<td>53</td>
														<td>2009/10/22</td>
														<td>$114,500</td>
													</tr>
													<tr>
														<td>Prescott Bartlett</td>
														<td>Technical Author</td>
														<td>London</td>
														<td>27</td>
														<td>2011/05/07</td>
														<td>$145,000</td>
													</tr>
													<tr>
														<td>Gavin Cortez</td>
														<td>Team Leader</td>
														<td>San Francisco</td>
														<td>22</td>
														<td>2008/10/26</td>
														<td>$235,500</td>
													</tr>
													<tr>
														<td>Martena Mccray</td>
														<td>Post-Sales support</td>
														<td>Edinburgh</td>
														<td>46</td>
														<td>2011/03/09</td>
														<td>$324,050</td>
													</tr>
													<tr>
														<td>Unity Butler</td>
														<td>Marketing Designer</td>
														<td>San Francisco</td>
														<td>47</td>
														<td>2009/12/09</td>
														<td>$85,675</td>
													</tr>
													<tr>
														<td>Howard Hatfield</td>
														<td>Office Manager</td>
														<td>San Francisco</td>
														<td>51</td>
														<td>2008/12/16</td>
														<td>$164,500</td>
													</tr>
													<tr>
														<td>Hope Fuentes</td>
														<td>Secretary</td>
														<td>San Francisco</td>
														<td>41</td>
														<td>2010/02/12</td>
														<td>$109,850</td>
													</tr>
													<tr>
														<td>Vivian Harrell</td>
														<td>Financial Controller</td>
														<td>San Francisco</td>
														<td>62</td>
														<td>2009/02/14</td>
														<td>$452,500</td>
													</tr>
													<tr>
														<td>Timothy Mooney</td>
														<td>Office Manager</td>
														<td>London</td>
														<td>37</td>
														<td>2008/12/11</td>
														<td>$136,200</td>
													</tr>
													<tr>
														<td>Jackson Bradshaw</td>
														<td>Director</td>
														<td>New York</td>
														<td>65</td>
														<td>2008/09/26</td>
														<td>$645,750</td>
													</tr>
													<tr>
														<td>Olivia Liang</td>
														<td>Support Engineer</td>
														<td>Singapore</td>
														<td>64</td>
														<td>2011/02/03</td>
														<td>$234,500</td>
													</tr>
													<tr>
														<td>Bruno Nash</td>
														<td>Software Engineer</td>
														<td>London</td>
														<td>38</td>
														<td>2011/05/03</td>
														<td>$163,500</td>
													</tr>
													<tr>
														<td>Sakura Yamamoto</td>
														<td>Support Engineer</td>
														<td>Tokyo</td>
														<td>37</td>
														<td>2009/08/19</td>
														<td>$139,575</td>
													</tr>
													<tr>
														<td>Thor Walton</td>
														<td>Developer</td>
														<td>New York</td>
														<td>61</td>
														<td>2013/08/11</td>
														<td>$98,540</td>
													</tr>
													<tr>
														<td>Finn Camacho</td>
														<td>Support Engineer</td>
														<td>San Francisco</td>
														<td>47</td>
														<td>2009/07/07</td>
														<td>$87,500</td>
													</tr>
													<tr>
														<td>Serge Baldwin</td>
														<td>Data Coordinator</td>
														<td>Singapore</td>
														<td>64</td>
														<td>2012/04/09</td>
														<td>$138,575</td>
													</tr>
													<tr>
														<td>Zenaida Frank</td>
														<td>Software Engineer</td>
														<td>New York</td>
														<td>63</td>
														<td>2010/01/04</td>
														<td>$125,250</td>
													</tr>
													<tr>
														<td>Zorita Serrano</td>
														<td>Software Engineer</td>
														<td>San Francisco</td>
														<td>56</td>
														<td>2012/06/01</td>
														<td>$115,000</td>
													</tr>
													<tr>
														<td>Jennifer Acosta</td>
														<td>Junior Javascript Developer</td>
														<td>Edinburgh</td>
														<td>43</td>
														<td>2013/02/01</td>
														<td>$75,650</td>
													</tr>
													<tr>
														<td>Cara Stevens</td>
														<td>Sales Assistant</td>
														<td>New York</td>
														<td>46</td>
														<td>2011/12/06</td>
														<td>$145,600</td>
													</tr>
													<tr>
														<td>Hermione Butler</td>
														<td>Regional Director</td>
														<td>London</td>
														<td>47</td>
														<td>2011/03/21</td>
														<td>$356,250</td>
													</tr>
													<tr>
														<td>Lael Greer</td>
														<td>Systems Administrator</td>
														<td>London</td>
														<td>21</td>
														<td>2009/02/27</td>
														<td>$103,500</td>
													</tr>
													<tr>
														<td>Jonas Alexander</td>
														<td>Developer</td>
														<td>San Francisco</td>
														<td>30</td>
														<td>2010/07/14</td>
														<td>$86,500</td>
													</tr>
													<tr>
														<td>Shad Decker</td>
														<td>Regional Director</td>
														<td>Edinburgh</td>
														<td>51</td>
														<td>2008/11/13</td>
														<td>$183,000</td>
													</tr>
													<tr>
														<td>Michael Bruce</td>
														<td>Javascript Developer</td>
														<td>Singapore</td>
														<td>29</td>
														<td>2011/06/27</td>
														<td>$183,000</td>
													</tr>
													<tr>
														<td>Donna Snider</td>
														<td>Customer Support</td>
														<td>New York</td>
														<td>27</td>
														<td>2011/01/25</td>
														<td>$112,000</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<div class="settingSidebar">
					<a href="javascript:void(0)" class="settingPanelToggle"> <i
						class="fa fa-spin fa-cog"></i>
					</a>
					<div class="settingSidebar-body ps-container ps-theme-default">
						<div class=" fade show active">
							<div class="setting-panel-header">Setting Panel</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Select Layout</h6>
								<div class="selectgroup layout-color w-50">
									<label class="selectgroup-item"> <input type="radio"
										name="value" value="1"
										class="selectgroup-input-radio select-layout" checked>
										<span class="selectgroup-button">Light</span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="value" value="2"
										class="selectgroup-input-radio select-layout"> <span
										class="selectgroup-button">Dark</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Sidebar Color</h6>
								<div class="selectgroup selectgroup-pills sidebar-color">
									<label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="1"
										class="selectgroup-input select-sidebar"> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Light Sidebar"><i
											class="fas fa-sun"></i></span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="2"
										class="selectgroup-input select-sidebar" checked> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Dark Sidebar"><i
											class="fas fa-moon"></i></span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Color Theme</h6>
								<div class="theme-setting-options">
									<ul class="choose-theme list-unstyled mb-0">
										<li title="white" class="active">
											<div class="white"></div>
										</li>
										<li title="cyan">
											<div class="cyan"></div>
										</li>
										<li title="black">
											<div class="black"></div>
										</li>
										<li title="purple">
											<div class="purple"></div>
										</li>
										<li title="orange">
											<div class="orange"></div>
										</li>
										<li title="green">
											<div class="green"></div>
										</li>
										<li title="red">
											<div class="red"></div>
										</li>
									</ul>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="mini_sidebar_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Mini Sidebar</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="sticky_header_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Sticky Header</span>
									</label>
								</div>
							</div>
							<div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
								<a href="#"
									class="btn btn-icon icon-left btn-primary btn-restore-theme">
									<i class="fas fa-undo"></i> Restore Default
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<jsp:include page="footer.jsp"></jsp:include>
			
		</div>
	</div>
	<!-- General JS Scripts -->
	<script src="adminResources/js/app.min.js"></script>
	<!-- JS Libraies -->
	<!-- Page Specific JS File -->
	<script src="adminResources/js/datatables.min.js"></script>
	<script src="adminResources/js/dataTables.bootstrap4.min.js"></script>
	<script src="adminResources/js/dataTables.buttons.min.js"></script>
	<script src="adminResources/js/buttons.flash.min.js"></script>
	<script src="adminResources/js/jszip.min.js"></script>
	<script src="adminResources/js/pdfmake.min.js"></script>
	<script src="adminResources/js/vfs_fonts.js"></script>
	<script src="adminResources/js/buttons.print.min.js"></script>
	<script src="adminResources/js/datatables.js"></script>
	<!-- Template JS File -->
	<script src="adminResources/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="adminResources/js/custom.js"></script>
</body>

</html>