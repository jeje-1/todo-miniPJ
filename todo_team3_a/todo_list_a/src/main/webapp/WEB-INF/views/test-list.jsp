<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<title>todolist</title>
</head>
<body>

<h1> 2023년 정보처리기사 시험 일정</h1>

<div id="testList">

</div>

    <script type="text/javascript">

    var url = 'http://apis.data.go.kr/B490007/qualExamSchd/getQualExamSchdList'; /*URL*/
    var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'2gdHPByJoYzIr0nZZuBhnkWKUISsq%2FTRJKIPCVOwR%2BxIfTiFEse7Xg%2FUaV2TCXi7yU2cRRVDgShIiZOpiqHjcA%3D%3D'; /*Service Key*/
    queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); 
    queryParams += '&' + encodeURIComponent('dataFormat') + '=' + encodeURIComponent('json'); 
    queryParams += '&' + encodeURIComponent('implYy') + '=' + encodeURIComponent('2023'); 
    queryParams += '&' + encodeURIComponent('qualgbCd') + '=' + encodeURIComponent('T');
    queryParams += '&' + encodeURIComponent('jmCd') + '=' + encodeURIComponent('1320');
    queryParams += '&' + encodeURIComponent('description') + '=' + encodeURIComponent('10'); 
    
    let retStartDt;
    var parentTr;
    let makeTd;
    let tmp;
    
    let testDate;
    let response;
    let data;
    let jsonList;
    let objList;
    var test;
    
  	  
    (async () => {
  	 testDate = document.getElementById("adviceArea");
       response = await fetch( url + queryParams);
       data = await response.json();
       jsonList = JSON.stringify(data);
       objList = JSON.parse(jsonList);
       
       createList();


    })();
    
 		function createList() {
	         for(let i=0; i<objList.body.items.length; i++){
	        	 
	        	 tmp = objList.body.items[i];
	        	 let description = tmp.description + " ";
	        	 let docRegStartDt = tmp.docRegStartDt + " /";
	        	 let docRegEndDt = tmp.docRegEndDt + " /";
	        	 let docExamStartDt = tmp.docExamStartDt + " /";
	        	 let docExamEndDt = tmp.docExamEndDt + " /";
	        	 let docPassDt = tmp.docPassDt + " /";
	        	 let pracRegStartDt = tmp.pracRegStartDt + " /";
	        	 let pracRegEndDt = tmp.pracRegEndDt + " /";
	        	 let pracExamStartDt = tmp.pracExamStartDt + " /";
	        	 let pracExamEndDt = tmp.pracExamEndDt + " /";
	        	 let pracPassDt = tmp.pracPassDt + " /";
	        	 let content = description + "필기시험 접수 시작일 : " + docRegStartDt + "필기시험 접수 종료일 : "+ docRegEndDt 
	        	 			+ "필기시험 시작일 : " + docExamStartDt + "필기시험 종료일 : "+ docExamEndDt + "필기시험 합격자 발표일 : " + docPassDt 
	        	 			+ "실기시험 접수 시작일 : " + pracRegStartDt + "실기시험 접수 종료일 : " + pracRegEndDt
	        	 			+ "실기시험 시작일 : " + pracExamStartDt + "실기시험 종료일 : " + pracExamEndDt + "실기시험 합격자 발표일 : " + pracPassDt;
	        	 
	        	 console.log(content);
	        	 const list = document.createElement("div");
	        	 
	        	 parentTr = document.getElementById("testList");
	        	 list.textContent = content;
	        	 parentTr.appendChild(list);
	         }
 		}
	        
       
    </script> 
</body>
</html>