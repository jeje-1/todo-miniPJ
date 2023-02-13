<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/head.jsp" %>

<body>
<%@ include file="/WEB-INF/views/include/header.jsp" %>

<div class="form">
   <form:form action="${context}/member/signup" method="post" id="frmJoin"
      modelAttribute="signUpForm" >
      
<section class="vh-100" style="background-color: #eee;">
  <div class="container h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-lg-12 col-xl-11">
        <div class="card text-black" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row justify-content-center">
              <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                <form class="mx-1 mx-md-4">

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="text" name="userId" id="inpId" class="form-control" required/>
                      <label class="form-label" for="form3Example1c">Your Name</label>
                            <div class="form-check d-flex justify-content-center mb-5">
                             <button type="button" id="btnIdCheck">check</button>
                             <span class="valid_info" id="idCheck"></span>
                           </div>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="email" name="email" id="form3Example3c" class="form-control" required/>
                      <label class="form-label" for="form3Example3c">Your Email</label>
                     
                     <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="password" name="password" id="inpPw" class="form-control" placeholder="영문+숫자+특수기호 8자리 이상" required/>
                      <label class="form-label" for="form3Example4c">Password</label>
                      <div class="form-check d-flex justify-content-center mb-5">
                        <button type="button" id="btnPwCheck">check</button>
                        <span class="valid_info" id="pwCheck"></span>
                      </div>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex flex-row align-items-center mb-4">
                    <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                    <div class="form-outline flex-fill mb-0">
                      <input type="tel" name="tell" id="form3Example4cd" class="form-control" required/>
                      <label class="form-label" for="form3Example4cd">Your Number</label>
                      
                      <form:errors path="userId" cssClass="valid_info"/>
                    </div>
                  </div>

                  <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                    <button type="submit" class="btn btn-primary btn-lg" value="가입">Register</button>
                  </div>

                </form>

              </div>
              <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                  class="img-fluid" alt="Sample image">

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
   
   </form:form>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>


 <script type="text/javascript">
 
 let idCheckFlg = false;
 let pwCheckFlg = false;
 
 btnIdCheck.addEventListener("click", ev => {

  let userId = inpId.value;
  
  if(userId){
   
   fetch("/member/checkId?userId=" + userId)
   .then(response => response.json())
   .then(obj => {
      if(obj.exist){
         idCheck.innerHTML = '이미 존재하는 아이디 입니다.';
         idCheckFlg = false;
         return;
      }
      
      idCheck.innerHTML = '사용 가능한 아이디 입니다.';
      idCheckFlg = true;
      
   });
  }
 })
 

 // pw 유효성 검사 기능
function isUsablePw(userPw){
  const regExpPassword = /(?!.*[ㄱ-힣])(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9ㄱ-힣])(?=.{8,})/;
  // 입력받은 pw가 정규식표현과 불일치 시 실행
  if(!(regExpPassword.test(userPw))){
    console.log(userPw);
    pwCheck.innerHTML = "비밀번호를 알맞게 입력하세요";
    return;
  }

  if(regExpPassword.test(userPw)){
    console.log(userPw);
    pwCheck.innerHTML = "사용 가능한 비밀번호입니다.";
    pwCheckFlg = true;

    return;
  }
}
 

// 비밀번호 체크버튼 이벤트 리스너
// 키보드 값이 눌릴 때 마다 검증 로직이 돌아야함
btnPwCheck.addEventListener('click', ev=>{
  let userPw = inpPw.value;
  console.log("현재 입력받은 비밀번호 : " + userPw );
  isUsablePw(userPw);

 });

 // 오류 시 폼데이터 전송 예방 기능
 frmJoin.addEventListener('submit', ev => {
  if(!idCheckFlg){
   ev.preventDefault();
   alert("아이디 중복검사에 실패했습니다.");
   inpId.focus();
  }

  if(!pwCheckFlg){
   ev.preventDefault();
   alert("비밀번호 표현식 준수에 실패했습니다.");
   inpPw.focus();
  }
 })
 




 
 
 </script>




</body>
</html>