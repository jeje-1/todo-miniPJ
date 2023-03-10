<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header class="p-3 bg-dark text-white">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
          <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
        </a>

        <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <li><a href="/index" class="nav-link px-2 text-secondary">Home</a></li>
          <li><a href="/team" class="nav-link px-2 text-white">About</a></li>
        </ul>
      
      <c:if test="${empty sessionScope.auth}">
         <div class="col-md-3 text-end">
           <a href="/member/signup" class="btn btn-outline-light me-2">SignUp</a>
           <a href="/member/login" class="btn btn-warning">login</a>
         </div>
       </c:if>
       
       <c:if test="${not empty sessionScope.auth}">
         <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
           <li><a class="nav-link px-2 link-white" style="color: white">${sessionScope.auth.userId}</a></li>
           <li><a href="/member/logout" class="btn btn-warning">Logout</a></li>
         </ul>
       </c:if>
    </div>
 </header>