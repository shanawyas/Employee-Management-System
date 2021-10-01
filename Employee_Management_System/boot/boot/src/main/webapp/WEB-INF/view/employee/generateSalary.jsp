  

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
            <h1>All Employee List</h1>
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
                <h3 class="card-title">Employee List With Basic Field</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                
               <!--  <form action="/employee/generate" method="POST"> -->
                   <form action="/employee/showSalary" method="POST">
                	<table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                  <th>Employee Code</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Department</th>
                    <th>Basic Salary</th>
                    <th>House Rent</th>
                    <th>Medical</th>
                    <th>Food</th>
                      <th>Total Salary</th>
                        <th>Delete</th>
                    
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${employee}" var="p">
                <tr>
                    <td>${p.ecode}</td>
                    <td>${p.fname}</td>
                    <td>${p.lname}</td>
                    <td>${p.depertment}</td>
                    <td>${p.salary}</td>
                    <td>${p.salary}</td>
                     <td>${p.salary}</td>
                    <td>${p.salary}</td>
                    <td>
                        <a href="/employee/editSalary/${p.id}">Edit</a>
                    </td>
                    <td>
                        <a href="/employee/delete/${p.id}">Delete</a>
                   <%--      <input type="hidden" name="pid[]" value="${p.id}">
                        <input type="hidden" name="fname[]" value="${p.fname}">
                        <input type="hidden" name="lname[]" value="${p.lname}">
                        <input type="hidden" name="dept[]" value="${p.depertment}"> --%>
                        <input type="hidden" name="basic[]" value="${p.salary}">
                        <input type="hidden" name="house[]" value="${p.salary}">
                        <input type="hidden" name="mediacl[]" value="${p.salary}">
                        <input type="hidden" name="food[]" value="${p.salary}">
                        
                    </td>
                </tr>
            </c:forEach>
                  </tbody>
                 <!--  <tfoot>
                  <tr>
                     <th>First Name</th>
                    <th>Last Name</th>
                    <th>Department</th>
               
                    <th>Basic Salary</th>
                      <th>Generate</th>
                        <th>Delete</th>
                   
                  </tr>
                  </tfoot> -->
                </table>
                <input type="submit" value="Generate salary" />
                </form>
                
                
                
                
                
                
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
