<%@page import="org.springframework.web.util.WebUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>업체 현황</title>
<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
<style>

.box{

margin-top:100px;

}
.content{

text-align: center;

padding:0;

border: #CCC solid 1px;

}

.name{
padding:10px;
background-color: #616161;
color: white;
text-align: center;

}

.margin-bottom{

border: white solid 1px;
padding:0;

}

.margin-bottom:HOVER{

background-color: #CCC;
font-weight: bolder;

}

.bolder{

font-weight: bolder;

}

.left{

background-color: #E0E0E0;
padding:5px;

}

.right{

padding:5px;

}

.line{

background-color: #F5F5F5;

}

.line:HOVER{

background-color: #CCC;

}

.business{

margin-bottom: 100px;

}


.blanck{

height:40px;
background-color: #616161;

}

.textRight{

text-align: right;

}

.category{

font-weight: bolder;
font-size: 40px;
padding-left: 30px;
margin-bottom: 20px;

}

.abtn:HOVER{

text-decoration: underline;
font-weight: bolder;
cursor: pointer;

}

.radius{

border-radius:10%;

}

</style>

</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>

<div class='box'>
<div class='col-md-2'></div>

<div class='col-md-8'>



	<div class='col-md-12 category'>
	<span>업체 현황</span>
	</div>
	
	<div class='col-md-12 list'>
	<c:forEach var="item" items="${list }">
	
	<div class='col-md-12 business radius'>
				
				<div class='col-md-3 name bolder'>${item.business_agent }</div>
				<div class='col-md-9 name bolder'>${item.business_name }</div>
				
			
				<div class='col-md-12 content'>
				
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>사업자등록번호</div>
				<div class='col-md-9 right'>${item.business_registNo }</div>	
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>주소</div>
				<div class='col-md-9 right line' >${item.business_address }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>상호</div>	
				<div class='col-md-9 right'>${item.business_businessName }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>업종</div>	
				<div class='col-md-9 right line'>${item.business_species }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>업태</div>
				<div class='col-md-9 right'>${item.business_detailSpecies }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>이메일</div>
				<div class='col-md-9 right line'>${item.business_email }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>주민등록번호</div>
				<div class='col-md-9 right'>${item.business_residentNo }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>핸드폰번호</div>
				<div class='col-md-9 right line'>${item.business_phoneNo }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>전화번호</div>
				<div class='col-md-9 right'>${item.business_homeNo }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>비상연락처</div>
				<div class='col-md-9 right line'>${item.business_emergencyNo }</div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>사업자등록일</div>
				<div class='col-md-9 right'>${item.business_businessBirth }</div>
				</div>
			
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>비고</div>
				<div class='col-md-9 right line'>${item.business_memo }</div>
				</div>
				
				</div>
	</div><!-- 한개 -->

	</c:forEach>
	</div>

</div>

<div class='col-md-2'></div>
</div>


</body>
</html>