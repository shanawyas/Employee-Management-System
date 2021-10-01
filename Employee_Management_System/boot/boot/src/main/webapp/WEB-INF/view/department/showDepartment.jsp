  

  <jsp:include page="/WEB-INF/view/common/header.jsp" />
  
  
  



  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 >All Department List</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
            <!--   <div class="card-header">
                <h3 class="card-title">DataTable with minimal features & hover style</h3>
              </div> -->
               <!-- /.card-header -->
     
              <!-- /.card-body -->
            </div> 
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
            <!--     <h3 class="card-title">Employee List With Basic Field</h3> -->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead style="color: white; bordercolor="Black" bgcolor="#A569BD">
                  <tr>
                    <th>Department Name</th>
                    <th>Department Code</th>
                    <th>Department Description</th>
                   
                      <th>Edit</th>
                        <th>Delete</th>
                    
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${departments}" var="d">
                <tr>
                    <td>${d.deptname}</td>
                    <td>${d.deptcode}</td>
                     <td>${d.deptdescrip}</td>
                   
                    <td>
                        <a href="/department/editDepartment/${d.id}" class="btn btn-info">Edit</a>
                    </td>
                    <td>
                        <a href="/department/delete/${d.id}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
                  </tbody>
                  <tfoot>
                  <tr>
                       <th>Department Name</th>
                    <th>Department Code</th>
                    <th>Department Description</th>
                      <th>Edit</th>
                        <th>Delete</th>
                    
                   
                  </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
      </div>


<jsp:include page="/WEB-INF/view/common/footer.jsp" />