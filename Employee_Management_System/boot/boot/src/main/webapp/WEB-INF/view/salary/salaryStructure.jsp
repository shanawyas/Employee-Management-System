

<jsp:include page="/WEB-INF/view/common/header.jsp" />


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1>Salary Info Form</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Create Salary Structure</li>
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
					<!-- 	   <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div> -->
						<!-- /.card-header -->
						<!-- form start -->
						<form action="/salary/save" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Employee Salary Structure</h1>

								</div>

								<!-- /.card-header -->
								<div class="card-body">


									<div class="row">

									
										<div class="col-sm-6">
											<div class="form-group">
											<label>Designation</label>
											
										  <select
												class="form-control select2" name="desig_code" id="desig_code"
												style="width: 100%;">
											<c:forEach items="${designations}" var="ds">
												<option value="${ds.desigcode}">${ds.designame}</option>
											</c:forEach>
												
											</select>
											
											<input type="hidden" name="desig_name" id="desig_name" />
											</div>

										</div>
				
									</div>


									<div class="row">
										<div class="col-sm-4">
											<!-- text input -->
											<div class="form-group">
												<label>House Rent % </label> <input type="text" name="house"
													id="house"  class="form-control"
													placeholder="Enter House Rent Allowance">
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<label>Medical %</label> <input type="text" name="madic"
													id="madic" class="form-control"
													placeholder="Enter Medical Allowance">
											</div>
										</div>
											<div class="col-sm-4">
											<!-- text input -->
											<div class="form-group">
												<label>Food %</label> <input type="text" name="food" id="food"
													 class="form-control"
													placeholder="Enter Food Allowance">
											</div>
										</div>
									</div>

							


								</div>
								<div class="row">
									<div class="col-md-9"></div>

									<div class="col-md-1">
										<button type="submit" value="Save"
											class="btn btn-block btn-success">Save</button>
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
</div>
<!-- /.row -->
</div>
<!-- /.container-fluid -->
</section>
<!-- /.content -->

<jsp:include page="/WEB-INF/view/common/footer.jsp" />

<script>
$("#desig_name").val($("#desig_code :selected").text());
$("#desig_code").on("change", function(){
	$("#desig_name").val($("#desig_code :selected").text());
})
</script>

