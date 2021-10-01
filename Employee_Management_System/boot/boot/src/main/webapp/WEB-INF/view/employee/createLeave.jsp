<jsp:include page="/WEB-INF/view/common/header.jsp" />


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Employee Leave Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">General Form</li>
					</ol>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
				<div class="col-md-12">
					<!-- general form elements -->
					<div class="card card-primary">
						<!--    <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div> -->
						<!-- /.card-header -->
						<!-- form start -->
						<form action="/employee/applyLeave" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Employee Leave Request</h1>

								</div>

								<!-- /.card-header -->
								<div class="card-body">
								<input type="hidden"  name="id" value="${e.id}">

									<div class="row">
										<div class="col-sm-6">
											<!-- text input -->
											<div class="form-group">
												<label>First Name</label> <input type="text" name="fname"  value="${e.fname}" 
													class="form-control" placeholder="Enter Your First Name">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Last Name</label> <input type="text" name="lname" value="${e.lname}" 
													class="form-control" placeholder="Enter Your Last Name">
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>Employee Code</label> <input type="text" name="ecode" value="${e.ecode }"
													class="form-control" placeholder="Enter Code">
											</div>
										</div>
										<div class="col-sm-6">
										<label>Department</label>
											   <select class="form-control select2" name="deptName" style="width: 100%;">
                     							   <option selected disabled>---Choose Department--- </option>
                
                     							   <option value="HR & Payroll"${e.deptName == 'HR & Payroll' ? 'selected' : ''}>HR&Payroll</option>
                     							   <option value="Accounts &  Finance"${e.deptName == 'Accounts &  Finance' ? 'selected' : ''}>Accounts &  Finance</option>
                   								     <option value="Sales"${e.deptName == 'Sales' ? 'selected' : ''}>Sales</option>
                  							   	   <option value="Production"${e.deptName == 'Production' ? 'selected' : ''}>Production</option>
                  							   	   	   <option value="Supply Chain"${e.deptName == 'Supply Chain ' ? 'selected' : ''}>Supply Chain </option>
                      
                    						  </select>
										</div>

									</div>
									<div class="row">
										<div class="col-sm-5">
											<div class="form-group">
												<label> From:</label>
												<div class="input-group date" id="reservationdate"  
													data-target-input="nearest">
													<input type="date" name="from" id="from"  value="${e.from}" 
													 />
													<div class="input-group-append"/>
													
														<div class="input-group-text">
														
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col-sm-5">
											<div class="form-group">
												<label> To:</label>
												<div class="input-group date" id="joindate"
													data-target-input="nearest">
													<input type="date" name="to" id="to" onchange=" getTotal() " value="${e.to}" 
														 />
													<div class="input-group-append">
														<div class="input-group-text">
														</i>
														</div>
													</div>
												</div>
											</div>

											<!-- text input -->

										</div>
										<div class="col-sm-2">
											<div class="form-group">
												<label>Total Leave</label> <input type="text" name="leave" id="leave" value="${e.leave }"
													class="form-control" placeholder="Enter Code">
											</div>
										</div>

									</div>

									<div class="row">
										<div class="col-sm-6">
											<label>Month</label> <select class="form-control select2"
												name="month" style="width: 100%;">
												<option selected disabled>---Select Month---</option>
												<option value="Janaury">January</option>
												<option value="February">February</option>
												<option value="March">March</option>
												<option value="April">April</option>
												<option value="May">May</option>
												<option value="June">June</option>
												<option value="July">July</option>
												<option value="August">August</option>
												<option value="September">September</option>
												<option value="October">October</option>
												<option value="November">November</option>
												<option value="December">December</option>
											</select>
										</div>
										
									</div>
										<div class="row">
										<div class="col-sm-6">
												<input type="hidden" name="leaveStatus" value="${e.leaveStatus }">
										</div>
										
									</div>
									

								</div>

							</div>
							<div class="row">
								<div class="col-md-9"></div>

								<div class="col-md-2">
									<button type="submit" value="Save"
										class="btn btn-block btn-success">Apply</button>
								</div>

							</div>
						</form>
					</div>
					<!-- /.card -->


				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
		</div>
		<!--/.col (right) -->
	</section>
</div>
<!-- /.row -->

<!-- /.container-fluid -->


<!-- /.content -->


<jsp:include page="/WEB-INF/view/common/footer.jsp" />
<script>
function getTotal() {

var fromDate =Date.parse(document.getElementById("from").value);
var toDate =  Date.parse(document.getElementById("to").value);

var total= toDate - fromDate;
var days= total / (1000 * 60 * 60 * 24);



document.getElementById("leave").value =days;
}

</script>