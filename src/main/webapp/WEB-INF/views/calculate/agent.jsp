<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/resources/jsp/header.jsp"></jsp:include>

<style>
.box{

margin-top:100px;

}
.category{

font-weight: bolder;
font-size: 40px;
padding-left: 30px;
margin-bottom: 20px;

}

#managementBtn{

position: fixed;
left: 16%;
top:180px;
z-index: 5;
background-color: #616161;
color: white;
padding:10px;
font-weight: bolder;
box-shadow:2px 4px 2px #BDBDBD;

}

#managementBtn:HOVER{

margin-top:4px;
margin-left:2px;
box-shadow:none;
cursor: pointer;
background-color: black;

}

</style>

</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>

<div id='managementBtn' class='radius' href='/agent/management'>관리</div>

<div class='box'>
<div class='col-md-2'></div>



<div class='col-md-8'>

<div class='col-md-12 category'>
<span>대리점 정산</span>


</div>




</div>
</div>

<script>

$("#managementBtn").colorbox({opacity:0.7});

<%if(session.getAttribute("agentInsert") != null){ %>
	
	$("#managementBtn").trigger("click");
	alert("등록 완료");
	
<%session.removeAttribute("agentInsert");
}

if(session.getAttribute("agentModify") != null){ %>

	$("#managementBtn").trigger("click");
	alert("수정 완료");
	
<%session.removeAttribute("agentModify");
}%>

</script>
</body>
</html>