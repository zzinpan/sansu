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
margin-top: 0;
}
.content{

text-align: center;

padding:0;

border: #CCC solid 1px;

}

.name{
background-color: #616161;
color: white;
text-align: center;
padding:0;

}

.margin-bottom{

border: white solid 1px;
padding:0;

}

.bolder{

font-weight: bolder;

}

.left{

background-color: #E0E0E0;
padding:5px;

}

.right{

padding: 0;

}

.line{

background-color: #F5F5F5;

}

.business{

margin-bottom: 20px;

}

.category{

margin-top: 30px;
padding-left: 30px;
text-align: center;

}

.form-control{

height:30px;
text-align: center;

}

.btns{

text-align: right;

}

.btn{

font-weight: bolder;

}

.nameInput{

background-color: #616161;
color:white;
border-style: none;
height: 50px;
border-radius: 0;

}

.noPadding{

padding: 0;

}

</style>

</head>
<body>

<div class='box'>
<div class='col-md-12'>



	<div class='col-md-12 category'>
	<span>업체 등록</span>
	</div>
	
	<div class='col-md-12 list'>
	<form id='form' action="/business/insert" method="POST">
	<div class='col-md-12 business'>
				<div class='col-md-3 noPadding nameInput'></div>
				<div class='col-md-6 name bolder'><input class='form-control nameInput' type="text" name="business_name" placeholder='이름을 입력해주세요'></div>
				<div class='col-md-3 noPadding'>
				<select class='form-control nameInput' id='business_agent' name="business_agent">
					
					<option value="notSelected">대리점 선택</option>
					<c:forEach items="${list }" var="item">
					<option value="${item }">${item }</option>
					</c:forEach>
					
				</select>
				</div>
				<div class='col-md-12 content'>
				
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>사업자등록번호</div>
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_registNo" placeholder='필수'></div>	
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>주소</div>
				<div class='col-md-9 right line' ><input class='form-control' type="text" name="business_address" placeholder='필수'></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>상호</div>	
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_businessName" placeholder='필수'></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>업종</div>	
				<div class='col-md-9 right line'><input class='form-control' type="text" name="business_species" placeholder='필수'></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>업태</div>
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_detailSpecies" placeholder='필수'></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>이메일</div>
				<div class='col-md-9 right line'><input class='form-control' type="text" name="business_email"></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>주민등록번호</div>
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_residentNo"></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>핸드폰번호</div>
				<div class='col-md-9 right line'><input class='form-control' type="text" name="business_phoneNo" placeholder='필수'></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>전화번호</div>
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_homeNo"></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>비상연락처</div>
				<div class='col-md-9 right line'><input class='form-control' type="text" name="business_emergencyNo"></div>
				</div>
				
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>개업일</div>
				<div class='col-md-9 right'><input class='form-control' type="text" name="business_businessBirth"></div>
				</div>
			
				<div class='col-md-12 margin-bottom'>
				<div class='col-md-3 bolder left'>비고</div>
				<div class='col-md-9 right line'><input class='form-control' type="text" name="business_memo"></div>
				</div>
				
				</div>
	</div><!-- 한개 -->

	<div class='col-md-12 btns'>
	<input class='btn btn-default cancelBtn' type="button" value="취소">
	<input class='btn btn-default registBtn' type="button" value='등록'>
	</div>
	</form>
	
	</div>

</div>

</div>


<script>

var names;

$(".cancelBtn").click(function(){
	
	$("#cboxClose").trigger("click");
	
});

$.ajax({
	
	url:"/business/nameList",
	type:"POST",
	success:function(data){
		
		names = data;
		
	}
	
});


$(".registBtn").click(function(){
	
	var nameCheck = /^[가-힣]+$/;	
	var registNoCheck = /^\d{3}-\d{2}-\d{5}$/;	
	var emergencyNoCheck = /^\d{2,3}-\d{3,4}-\d{4}$/;	
	var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;	
	var phoneNoCheck = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;	
	var homeNoCheck = /^(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]))-(\d{3,4})-(\d{4})$/;	
	var regidentNoCheck = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$/;	
	var businessBirthCheck = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
	
	
	var $input = $("#form").find("input");
	
	if($input.eq(0).val() == ''){
		
		alert("이름을 입력하세요.");
		
	}else if(!nameCheck.test($input.eq(0).val())){
		
		alert("이름의 표기가 이상합니다. \n한글표기만 가능, 띄어쓰기불가")
	
	}else if(names.indexOf($input.eq(0).val()) == 0){
		
		alert("이미 등록된 이름 입니다.");
	
	}else if($("#business_agent").val() == "notSelected"){
		
		alert("대리점을 선택 하세요.");
	
	}else if($input.eq(1).val() == ''){
		
		alert("사업자등록번호를 입력하세요.");
		
	}else if(!registNoCheck.test($input.eq(1).val())){
		
		alert("사업자등록번호의 표기가 이상합니다.\n예시 ) 000-00-00000");
		
	}else if($input.eq(2).val() == ''){
		
		alert("주소를 입력하세요.");
		
	}else if($input.eq(3).val() == ''){
		
		alert("상호를 입력하세요.");
		
	}else if($input.eq(4).val() == ''){
		
		alert("업종을 입력하세요.");
		
	}else if($input.eq(5).val() == ''){
		
		alert("업태를 입력하세요.");
		
	}else if($input.eq(6).val() != '' && !emailCheck.test($input.eq(6).val())){
		
		alert("이메일의 표기가 이상합니다.\n예시 ) nara@sansu.com");
		
	}else if($input.eq(7).val() != '' && !regidentNoCheck.test($input.eq(7).val())){
		
		alert("주민등록번호의 표기가 이상합니다.\n예시 ) 991231-2000000");
		
	}else if($input.eq(8).val() == ''){
		
		alert("핸드폰번호를 입력하세요.");
		
	}else if(!phoneNoCheck.test($input.eq(8).val())){
		
		alert("핸드폰번호의 표기가 이상합니다.\n예시 ) 010-0000-0000");
		
	}else if($input.eq(9).val() != '' && !homeNoCheck.test($input.eq(9).val())){
		
		alert("전화번호의 표기가 이상합니다.\n예시 ) 02-000-0000");
		
	}else if($input.eq(10).val() != '' && !emergencyNoCheck.test($input.eq(10).val())){
		
		alert("비상 연락처의 표기가 이상합니다.\n예시 ) 010-000-0000");
		
	}else if($input.eq(11).val() != '' && !businessBirthCheck.test($input.eq(11).val())){
		
		alert("개업일의 표기가 이상합니다.\n예시 ) 1999-09-09");
		
	}else{
		
		$("#form").submit();
		
	}
	
});

</script>

</body>
</html>