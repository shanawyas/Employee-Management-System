

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
					<h1>Designation Information</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active">Create Designation</li>
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
						<form action="/designation/save" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Designation Create</h1>

								</div>

								<!-- /.card-header -->
								<div class="card-body">


									<div class="row">

									
									
				
									</div>


									<div class="row">
										<div class="col-sm-6">
											<!-- text input -->
											<div class="form-group">
												<label>Designation Code</label> <input type="text" name="desigcode"
													 class="form-control"
													placeholder="Enter Designation  Code">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Designation Name</label> <input type="text" name="designame"
													 class="form-control"
													placeholder="Enter Designation Name">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-6">
											<!-- text input -->
											<div class="form-group">
												<label>Designation Sequence</label> <input type="text" name="desigseq"
													 class="form-control"
													placeholder="Enter Description">
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


