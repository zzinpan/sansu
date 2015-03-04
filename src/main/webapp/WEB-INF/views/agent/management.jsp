<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
<Style>

.box{

width:400px;
margin-top:30px;

}

.subject{

font-weight: bolder;
font-size: 25px;
text-align: center;

}

.center{

text-align: center;

}

.padding{

padding:10px;

}
.weight{

font-weight: bolder;

}

.spadding{

padding:0;

}

.marginT{

margin-top: 20px;

}

.border{

border: #CCC solid 1px; 

}

.item:HOVER {
	
background-color: #616161;
color:white;
	
}

.textdeco:HOVER{

text-decoration: underline;
cursor: pointer;
color:white;

}

.color{

color: #CCC;

}

</Style>
</head>
<body>

<div class='box'>
<div class='col-md-1'></div>



<div class='col-md-10'>
<div class='col-md-12 subject'><span>대리점 관리</span></div>

<form id='insertForm'>

<div class='col-md-10 spadding  marginT'><input id='insertInput' class='form-control center' type='text' placeholder='대리점 이름'></div>
<div class='col-md-2 spadding  marginT'><input id='insertBtn' class='btn btn-default weight' type='button' value='추가'></div>

</form>

<div class='col-md-12 center marginT border'>
<div class='col-md-6 padding weight'>대리점 이름</div>
<div class='col-md-6 padding weight'>거래 상태</div>
</div>

<div id='list' class='col-md-12 spadding'>

<c:forEach items="${list }" var="item">

<div id='${item.agent_no }' class='item col-md-12 center border'>
	<div class='col-md-6 padding'>${item.agent_name }</div>
	<c:choose>
	<c:when test="${item.agent_trade == '활성' }">
	<div class='trade col-md-6 padding weight textdeco true'>${item.agent_trade }</div>
	</c:when>
	<c:otherwise>
	<div class='trade col-md-6 padding color textdeco false'>${item.agent_trade }</div>
	</c:otherwise>
	</c:choose>
</div>

</c:forEach>

</div>

</div>



<div class='col-md-1'></div>
</div>

<script>

$("#insertBtn").click(function(){
	
	var $insertInput = $("#insertInput");
	var $list = $("#list");
	
	$.ajax({
		
		url:"/agent/insert",
		type:"POST",
		data:{agent_name:$insertInput.val()},
		success:function(){
			
			location.href='/calculate/agent';
			
		}
		
	})
	
});

$(".trade").click(function(){
	
	var $this = $(this);
	var agent_no = $this.parent().attr("id");
	var agent_trade = "";
	
	if($this.hasClass("true")){
		
		agent_trade = "비활성";
		
	}else{ 
		
		agent_trade = "활성";
	
	}
	
	$.ajax({
		
		url:"/agent/modify",
		type:"POST",
		data:{agent_no:agent_no,agent_trade:agent_trade},
		success:function(){
			
			location.href='/calculate/agent';
			
		}
	
	})
	
});

</script>
</body>
</html>