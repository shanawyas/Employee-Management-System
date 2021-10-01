  

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
                
           <form action="/employee/pay" method="POST">   
                             <div class="row">
            
                 
                    <!-- text input -->
                    <div class="col-sm-1.5">
                  
                      <label>Year</label>
                      <select class="form-control select2" name="year" style="width: 100%;">
                        <option selected disabled>---Select Year --- </option>
                      
                          <option value="2020">2020</option>
                          <option value="2021">2021</option>
                          <option value="2022">2022</option>
                          <option value="2023">2023</option>
                          <option value="2024">2024</option>
                          <option value="2025">2025</option>
                      
  
                      </select>
                    </div>
                           <div class="col-sm-1">
                  
                     
                   			 </div>
                    
                    
                         <div class="col-sm-1.5">
                  
                      <label>Month</label>
                        <select name="month"  class="form-control select2" style="width: 100%;">
                          <option selected disabled>---Select Month--- </option>
                          <option value="January">January</option>
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
           <table id="example1" class="table table-bordered table-striped">
                  <thead style="color: white; bordercolor="Black"; bgcolor="#A569BD">
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
                  </tr>
                  </thead>
                 <tbody>
                 
        		 <c:forEach items="${map.employees}" var="e">
                <tr>
                    <td>${e.ecode}</td>
                    <td>${e.fname}</td>
                    <td>${e.lname}</td>
                    <td>${e.deptName}</td>          
                    <td>${e.salary}</td>
                     <c:forEach items="${map.structure}" var="s">
        				<c:if test = "${ e.desigCode eq s.desigcode }" >	
        					<td><c:out value="${e.salary * s.house}" /> </td>
        					<td><c:out value="${e.salary * s.madic}" /> </td>
        					<td><c:out value="${e.salary * s.food}" /> </td>
        					<td>
        					
        						<c:out value="${e.salary + (e.salary * s.house) + (e.salary * s.madic) + (e.salary * s.food)}" /> 
        					<%-- 	<input type="hidden" name="month_name[]" value="${e.month}" />
        						<input type="hidden" name="year_name[]" value="${e.year}" /> --%>
        						<input type="hidden" name="dept_name[]" value="${e.deptName}" />
        						<input type="hidden" name="dept_code[]" value="${e.deptCode}" />
        				
        						<input type="hidden" name="emp_code[]" value="${e.ecode}" />
        						<input type="hidden" name="desig_name[]" value="${e.desigName}" />
        						<input type="hidden" name="desig_code[]" value="${e.desigCode}" />
        						<input type="hidden" name="fname[]" value="${e.fname}" />
        						<input type="hidden" name="lname[]" value="${e.lname}" />
        						<input type="hidden" name="basic[]" value="${e.salary}" />
        						<input type="hidden" name="house[]" value="${e.salary * s.house}" />
        						<input type="hidden" name="madic[]" value="${e.salary * s.madic}" />
        						<input type="hidden" name="food[]" value="${e.salary * s.food}" />
        						<input type="hidden" name="total[]"  value="${e.salary + (e.salary * s.house) + (e.salary * s.madic) + (e.salary * s.food)}" />
        					</td>
        					
        				</c:if>
                      </c:forEach>
					   
                </tr>
            </c:forEach>
                  </tbody>
             <!--      <tfoot>
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
               
                   
                  </tr>
                  </tfoot> -->
                </table>
                
                <input type="submit" class="btn btn-info" value="Pay Salary"/>
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
