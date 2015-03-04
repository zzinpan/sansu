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

#insertBtn{

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

#insertBtn:HOVER{

margin-top:4px;
margin-left:2px;
box-shadow:none;
cursor: pointer;
background-color: black;

}

.blank{

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

.nameInput{

background-color: #616161;
color:white;
border-style: none;
height: 40px;
border-radius: 0;

}
</style>

</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>

<div id='insertBtn' class='radius' href='/business/insert'>등록</div>

<div class='box'>
<div class='col-md-2'></div>

<div class='col-md-8'>



	<div class='col-md-12 category'>
	<span>업체 현황</span>
	</div>
	
	<div class='col-md-12 list'>
	<c:forEach var="item" items="${list }">
	
	<div class='col-md-12 business radius'>
				<div class='col-md-3 name bolder agent'>${item.business_agent }</div>
				<div class='col-md-3 blank'></div>
				<div class='col-md-3 name bolder'>${item.business_name }</div>
				<div id='${item.business_no }' class='col-md-3 name'>
					<div class='col-md-6 textRight abtn modifyBtn'>수정</div>
					<div class='col-md-6 abtn deleteBtn'>삭제</div>
				</div>

				
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
				<div class='col-md-3 bolder left'>개업일</div>
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



<script>

<%Object scrollTop = session.getAttribute("scrollTop");

Object business_delete = session.getAttribute("business_delete");

if(business_delete != null){
	
	%>alert("삭제 완료");<%
	
	session.removeAttribute("business_delete");
	
}

if(scrollTop != null){%>	
	
	$(window).scrollTop(<%out.print(scrollTop.toString());%>);
	
	alert("수정 완료");
	
<%session.removeAttribute("scrollTop");}%>

$("#insertBtn").colorbox({opacity:0.7, width:"70%"});

$(".deleteBtn").click(function(){
	
	$.ajax({
		
		url:"/business/delete",
		type:"POST",
		data:{business_no:$(this).parent().attr("id")},
		success:function(){
			
			location.href = "/business/list";
			
		}	
	
	})
	
});

var tradeList;

$.ajax({
	
	url:"/agent/tradeList",
	type:"POST",
	success:function(data){
		
		tradeList = data;
		
	}
	
})

$(".modifyBtn").click(function(){

	var $this = $(this);
	
	if($this.hasClass("modifing")){
	
		var $datas = $this.parent().parent().find(".right");
		var data0 = $datas.eq(0).find("input").val();
		var data1 = $datas.eq(1).find("input").val();
		var data2 = $datas.eq(2).find("input").val();
		var data3 = $datas.eq(3).find("input").val();
		var data4 = $datas.eq(4).find("input").val();
		var data5 = $datas.eq(5).find("input").val();
		var data6 = $datas.eq(6).find("input").val();
		var data7 = $datas.eq(7).find("input").val();
		var data8 = $datas.eq(8).find("input").val();
		var data9 = $datas.eq(9).find("input").val();
		var data10 = $datas.eq(10).find("input").val();
		var data11 = $datas.eq(11).find("input").val();
		var data12 = $this.parent().parent().find(".business_agent").val();
		
		var nameCheck = /^[가-힣]+$/;	
		var registNoCheck = /^\d{3}-\d{2}-\d{5}$/;	
		var emergencyNoCheck = /^\d{2,3}-\d{3,4}-\d{4}$/;	
		var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;	
		var phoneNoCheck = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;	
		var homeNoCheck = /^(0(2|3[1-3]|4[1-4]|5[1-5]|6[1-4]))-(\d{3,4})-(\d{4})$/;	
		var regidentNoCheck = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))-[1-4][0-9]{6}$/;	
		var businessBirthCheck = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;

		
		if(data0 == ''){
			
			alert("사업자등록번호를 입력하세요.");
			
		}else if(!registNoCheck.test(data0)){
			
			alert("사업자등록번호의 표기가 이상합니다.\n예시 ) 000-00-00000");
			
		}else if(data1 == ''){
			
			alert("주소를 입력하세요.");
			
		}else if(data2 == ''){
			
			alert("상호를 입력하세요.");
			
		}else if(data3 == ''){
			
			alert("업종을 입력하세요.");
			
		}else if(data4 == ''){
			
			alert("업태를 입력하세요.");
			
		}else if(data5 != '' && !emailCheck.test(data5)){
			
			alert("이메일의 표기가 이상합니다.\n예시 ) nara@sansu.com");
			
		}else if(data6 != '' && !regidentNoCheck.test(data6)){
			
			alert("주민등록번호의 표기가 이상합니다.\n예시 ) 991231-2000000");
			
		}else if(data7 == ''){
			
			alert("핸드폰번호를 입력하세요.");
			
		}else if(!phoneNoCheck.test(data7)){
			
			alert("핸드폰번호의 표기가 이상합니다.\n예시 ) 010-0000-0000");
			
		}else if(data8 != '' && !homeNoCheck.test(data8)){
			
			alert("전화번호의 표기가 이상합니다.\n예시 ) 02-000-0000");
			
		}else if(data9 != '' && !emergencyNoCheck.test(data9)){
			
			alert("비상 연락처의 표기가 이상합니다.\n예시 ) 010-000-0000");
			
		}else if(data10 != '' && !businessBirthCheck.test(data10)){
			
			alert("개업일의 표기가 이상합니다.\n예시 ) 1999-09-09");
			
		}else{
			
			$.ajax({
				
				url:"/business/modify",
				type:"POST",
				data:{scrollTop:$(window).scrollTop(),business_no:$(this).parent().attr("id"),business_registNo:data0,business_address:data1,business_businessName:data2,business_species:data3,business_detailSpecies:data4,business_email:data5,business_residentNo:data6,business_phoneNo:data7,business_homeNo:data8,business_emergencyNo:data9,business_businessBirth:data10,business_memo:data11,business_agent:data12},
				success:function(){
					
					location.href='/business/list';
					
				}	
			
			});
			
		}
		
		
	}else{
		
		var str = "";
		
		var $agent = $this.parent().parent().find(".agent");
		
		str += "<select class='form-control nameInput business_agent' name='business_agent'>";

		$.each(tradeList,function(index,value){
			
			if($agent.html() == value){
				
				str += "<option value='"+value+"' selected='selected'>"+value+"</option>";
				
			}else{
				
				str += "<option value='"+value+"'>"+value+"</option>";
				
			}
			
		})
	
		str += "</select>";
		
		$agent.css("padding",0);
		
		$agent.html(str);
		
		$this.html("완료");
		
		$this.addClass("modifing");
		
		var $datas = $this.parent().parent().find(".right");
		var $data = '';
		
		$.each($datas,function(index,data){
			
			data.style.padding = 0;
				
			if(data.innerHTML == "없음"){
				
				$data = "";
			
			}else{
				
				$data = data.innerHTML;
				
			}
			
			data.innerHTML = "<input class='form-control' style='height:30px; text-align:center;' type='text' value='"+$data+"'>"; 
	
		});
		
	}
	
});	
	

</script>
</body>
</html>