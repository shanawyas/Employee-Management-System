<jsp:include page="/WEB-INF/view/common/header.jsp" />


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6"></div>
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
						<form action="/designation/update" method="POST">

							<!-- /.card -->

							<!-- Input addon -->

							<!-- general form elements disabled -->
							<div class="card card-warning">
								<div class="card-header">
									<h1 class="card-title">Designation Information</h1>

								</div>

								<!-- /.card-header -->
								<div class="card-body">

									<input type="hidden" name="id" value="${de.id}">


									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>Designation Code</label> <input type="text"
													name="desigcode" value="${de.desigcode }"  class="form-control"
													placeholder="Enter Department Code">
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<label>Designation Name</label> <input type="text"
													name="designame" value="${de.designame }" class="form-control"
													placeholder="Enter Department Name">
											</div>
										</div>
									</div>

									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label>Designation Sequence</label> <input type="text"
													name="desigseq" value="${de.desigseq }"  class="form-control"
													placeholder="Enter Description">
											</div>
										</div>
										<div class="col-sm-6"></div>



									</div>
									<div class="row">
										<div class="col-md-9"></div>

										<div class="col-md-2">
										<!-- 	<button type="submit" value="Save" -->
												 <button type="submit" value="Update" class="btn btn-block btn-success">Update</button>
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
