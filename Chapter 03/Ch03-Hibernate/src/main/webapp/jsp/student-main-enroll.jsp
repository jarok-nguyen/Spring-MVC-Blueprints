<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>EDMP Student-Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <!-- ################################################################################################ -->
    <nav>
       <ul>
        <li><a href="./stud_login.html">Logout</a></li>
        
      </ul>
    </nav>
    <!-- ################################################################################################ --> 
  </div>
</div>

<div class="wrapper row1">
  <header id="header" class="clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="../index.html">Student Management Portal</a></h1>
      <p>Alibata University</p>
    </div>
    <div class="fl_right">
      <form class="clear" method="post" action="#">
        <fieldset>
          <legend>Search:</legend>
          <input type="text" value="" placeholder="Search Here">
          <button class="fa fa-search" type="submit" title="Search"><em>Search</em></button>
        </fieldset>
      </form>
    </div>
    <!-- ################################################################################################ --> 
  </header>
</div>

<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li><a href="./student-main-enroll.html">Home</a></li>
       
      </ul>
      <!-- ################################################################################################ --> 
    </nav>
  </div>
</div>

<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="sidebar one_quarter first"> 
        <!-- ################################################################################################ -->
        <h6>Student Profile</h6> 
        <nav class="sdb_holder">
           <ul>
            <li><a href="./stud_gwa.html">Temporary Copy of Grades</a></li>
            <li><a href="./stud_enroll.html">Enroll Courses</a></li>
          </ul>
        </nav>
        
        <!-- ################################################################################################ --> 
      </div>
      
      <div id="content" class="three_quarter"> 
        <!-- ################################################################################################ -->
        <h1>List of Available Courses</h1>
        <div class="scrollable">
        <form:form modelAttribute="listForm" method="POST">
          <table>
            <thead>
               <tr>
                <th></th>
                <th>Course Code</th>
                <th>Course Name</th>
                <th width="5">Unit</th>
                <th width="5">Semester</th>
                <th width="5">Level</th>
                <th>Teacher</th>
              </tr>
            </thead>
            <tbody>
               <c:forEach items="${ listForm.availCourseFormList  }" varStatus="status">
               <tr>
                   <td><form:checkbox path="availCourseFormList[${ status.index }].enroll"/> </td>
                   <td><form:input path="availCourseFormList[${ status.index }].courseCode" /></td>
                   <td><form:input path="availCourseFormList[${ status.index }].courseName"/></td>
                   <td><form:input path="availCourseFormList[${ status.index }].courseUnit" cssStyle="width: 20px;"/></td>
                   <td><form:input path="availCourseFormList[${ status.index }].semester" cssStyle="width: 20px;"/></td>
                   <td><form:input path="availCourseFormList[${ status.index }].level" cssStyle="width: 20px;"/></td>
                   <td><form:input path="availCourseFormList[${ status.index }].facultyId" cssStyle="width: 20px;"/></td>
                <tr>
              </c:forEach>
            </tbody>
          </table>
          <input type="submit" value="Enroll Courses" />
        </form:form>
        </div>
          
      
          
        </div>
        
        <!-- ################################################################################################ --> 
      </div>
      <!-- ################################################################################################ --> 
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>

<div class="wrapper row4">
  <div class="rounded">
    <footer id="footer" class="clear"> 
      <!-- ################################################################################################ -->
      <div class="one_third first">
        <figure class="center"><img class="btmspace-15" src="../images/demo/worldmap.png" alt="">
          <figcaption><a href="#">Find Us With Google Maps &raquo;</a></figcaption>
        </figure>
      </div>
      <div class="one_third">
        <address>
        Alibata University<br>
        Makati City, Manila<br>
        Philippines<br>
        1233<br>
        <br>
        <i class="fa fa-phone pright-10"></i> +63 939917 5107<br>
        <i class="fa fa-envelope-o pright-10"></i> <a href="#">admin@alibata-university.com</a>
        </address>
      </div>
      <div class="one_third">
        <p class="nospace btmspace-10">Stay Up to Date With What's Happening</p>
        <ul class="faico clear">
          <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
          <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a class="faicon-flickr" href="#"><i class="fa fa-flickr"></i></a></li>
          <li><a class="faicon-rss" href="#"><i class="fa fa-rss"></i></a></li>
        </ul>
        <form class="clear" method="post" action="#">
          <fieldset>
            <legend>Subscribe To Our Newsletter:</legend>
            <input type="text" value="" placeholder="Enter Email Here&hellip;">
            <button class="fa fa-sign-in" type="submit" title="Sign Up"><em>Sign Up</em></button>
          </fieldset>
        </form>
      </div>
      <!-- ################################################################################################ --> 
    </footer>
  </div>
</div>

<div class="wrapper row5">
  <div id="copyright" class="clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2015 - All Rights Reserved - <a href="#">Webmaster</a></p>
    <p class="fl_right">Template by <a target="_blank" href="http://www.alibatabusiness.com/" title="Alibata University">OS Templates</a></p>
    <!-- ################################################################################################ --> 
  </div>
</div>
<!-- JAVASCRIPTS --> 
<script src="../layout/scripts/jquery.min.js"></script> 
<script src="../layout/scripts/jquery.fitvids.min.js"></script> 
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>