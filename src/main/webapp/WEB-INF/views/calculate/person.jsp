<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
font-size: 50px;
padding-left: 30px;
margin-bottom: 20px;

}

#date{

text-align: center;
font-weight: bolder;
font-size: 50px;
height:100px;
cursor: pointer;
background-color: transparent;
border-style: none;
margin-bottom: 50px;

}

.data{

text-align: center;
padding: 0;
padding-top: 11px;
padding-bottom: 10px;
font-weight: bolder;

}

.modData{

text-align: center;
padding: 0;
padding-top: 11px;
padding-bottom: 10px;
font-weight: bolder;

}

.center{

font-weight: bolder;
text-align: center;

}

.textRight{

text-align: right;

}

.textLeft{

text-align: left;

}

.background{

background-color: #EEE;

}

.dayDataColor{

background-color: #9E9E9E;

}

.noPadding{

padding: 0;

}

.roundBorder{

border: black solid 2px;

}

.border{

border: #CCC solid 1px;
border-right: 0;
border-top:0;

}

.tBorder{

border-top: #CCC solid 1px;

}

.lBorder{

border-left: #CCC solid 1px;

}

.bBorder{

border-bottom: #CCC solid 1px;

}

.nobBorder{

border-bottom: 0;

}

.height20{

height: 20px;
text-align: center;
background-color: #F5F5F5;

}

.plusBtn{

width: 100%;
font-size: 10px;

}

.plusDelBtn{

width: 100%;
font-size: 10px;

}

.plusModBtn{

width: 100%;
font-size: 10px;

}

.mBtn{

width: 100%;
font-size: 10px;

}

.width100{

width: 100%;

}

.sumBorder{

border-top: black solid 1px;
border-bottom: black solid 1px;

}

.hidden{

visibility: hidden;

}

#nameSelector{

text-align: center;
font-weight: bolder;
font-size: 40px;
height:100px;
cursor: pointer;
background-color: transparent;
border-style: none;
margin-bottom: 50px;
-webkit-appearance: none;
-moz-appearance:none;
-o-appearance:none;
-ms-appearance:none;
}

.subject{

font-size: 40px;

}

#dateSelector{

text-align: center;
font-weight: bolder;
font-size: 40px;
height:100px;
cursor: pointer;
background-color: transparent;
border-style: none;
margin-bottom: 50px;
-webkit-appearance: none;
-moz-appearance:none;
-o-appearance:none;
-ms-appearance:none;

}

</style>
</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>
<% Object member_id = session.getAttribute("member_id"); %>
<div class='box'>

<div class='col-md-12 category'>
<span>개인별 정산 >> </span><select id='nameSelector'>
<c:forEach items="${nameList}" var="item">
<c:choose>
<c:when test="${item == name }">
<option value="${item }" selected="selected">${item }</option>
</c:when>
<c:otherwise>
<option value="${item }">${item }</option>
</c:otherwise>
</c:choose>
</c:forEach>
</select><span class='subject'> (${businessVO.business_agent })</span>
</div>


<div class='col-md-12 noPadding center'>
<select id='dateSelector'>
<c:forEach items="${dateList}" var="item">
<c:choose>
<c:when test="${item == date }">
<option value="${item }" selected="selected" class='center'>${item }</option>
</c:when>
<c:otherwise>
<option value="${item }" class='center'>${item }</option>
</c:otherwise>
</c:choose>
</c:forEach>
</select>
</div>


</div>

<!-- 구분 -->
<div class='col-md-6 noPadding background tBorder' style="border-top: black solid 2px;">
<div class='col-md-2 data border'>구분</div>
<div class='col-md-1 data border'>날짜</div>
<div class='col-md-2 data border'>5G/L</div>
<div class='col-md-2 data border'>2.0L</div>
<div class='col-md-2 data border'>0.5L</div>
<div class='col-md-1 data border'>0.3L</div>
<div class='col-md-2 data border'>13.5L</div>
</div>
<div class='col-md-6 noPadding background tBorder' style="border-top: black solid 2px;">
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>5G/L 회수</div><div class='col-md-6 data noPadding'>공병</div><div class='col-md-6 data noPadding lBorder'>박스</div></div>
<div class='col-md-2 noPadding border'><div class='col-md-12 noPadding data bBorder'>13.5L 회수</div><div class='col-md-6 data noPadding'>공병</div><div class='col-md-6 data noPadding lBorder'>박스</div></div>
<div class='col-md-1 data border'>기계</div>
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>종이컵</div><div class='col-md-6 data noPadding'>m</div><div class='col-md-6 data noPadding lBorder'>r</div></div>
<div class='col-md-1 data border'>기타</div>
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>P/L</div><div class='col-md-6 data noPadding'>입고</div><div class='col-md-6 data noPadding lBorder'>출력</div></div>
<div class='col-md-1 data border'>비고</div>
<div class='col-md-1 data border lBorder'>상태</div>
</div>


<!-- 당일 출고 리스트 -->
<div class='col-md-12 noPadding minusList'>

<c:forEach var="item" items="${minusList }">
<div class='col-md-12 noPadding totalData'>
<div class='col-md-12 noPadding dayData'>
<div class='col-md-6 noPadding'>
<div class='col-md-2 background noPadding data border'>당일출고</div>
<div class='col-md-1 data border noPadding'>${item.minus_date }</div>
<div class='col-md-2 data border noPadding'>${item.minus_5g }</div>
<div class='col-md-2 data border noPadding'>${item.minus_2l }</div>
<div class='col-md-2 data border noPadding'>${item.minus_05l }</div>
<div class='col-md-1 data border noPadding'>${item.minus_03l }</div>
<div class='col-md-2 data border noPadding'>${item.minus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 data noPadding border'>${item.minus_5g_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${item.minus_5g_back_box }</div>
<div class='col-md-1 data noPadding border'>${item.minus_135_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${item.minus_135l_back_box }</div>
<div class='col-md-1 data noPadding border'>${item.minus_muchine }</div>
<div class='col-md-1 data noPadding border'>${item.minus_mcup }</div>
<div class='col-md-1 data noPadding border'>${item.minus_rcup }</div>
<div class='col-md-1 data noPadding border'>${item.minus_etc }</div>
<div class='col-md-1 data noPadding border'>${item.minus_pl_plus }</div>
<div class='col-md-1 data noPadding border'>${item.minus_pl_minus }</div>
<div class='col-md-1 data noPadding border'>--</div>
<div class='col-md-1 data border noPadding lBorder'><button class='height20 mBtn detailBtn' id='${item.minus_no }'>펼치기</button></div>
</div>
</div>

<div class='col-md-12 noPadding hidden detailData'>
<c:forEach items="${minusDetailList }" var="var">

<c:if test="${var.minus_date == item.minus_date }">
<div class='col-md-12 noPadding'>
<div class='col-md-6 noPadding'>
<div class='col-md-2 background noPadding data border'>당일출고</div>
<div class='col-md-1 data border noPadding personDate'>${var.minus_date }</div>
<div class='col-md-2 modData border noPadding'>${var.minus_5g }</div>
<div class='col-md-2 modData border noPadding'>${var.minus_2l }</div>
<div class='col-md-2 modData border noPadding'>${var.minus_05l }</div>
<div class='col-md-1 modData border noPadding'>${var.minus_03l }</div>
<div class='col-md-2 modData border noPadding'>${var.minus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 modData noPadding border'>${var.minus_5g_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_5g_back_box }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_135_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_135l_back_box }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_muchine }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_mcup }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_rcup }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_etc }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_pl_plus }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_pl_minus }</div>
<div class='col-md-1 modData noPadding border'>${var.minus_memo }</div>
<div class='col-md-1 data border noPadding lBorder'>
<%if(member_id != null){

	if(member_id.toString().equals("nara4384")){ %>
<button class='height20 minusDelBtn mBtn delBtn' id='${var.minus_no }'>삭제</button>
<%}else{ %>
--
<%}}else{%>
--  
<%}%>

</div>
</div>
</div>

</c:if>

</c:forEach>
</div>
</div>
</c:forEach>

</div>


<!-- 출고 계 -->
<div class='col-md-6 noPadding sumBorder'>
<div class='col-md-3 background noPadding data border'>출고 계</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_5g }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_2l }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_05l }</div>
<div class='col-md-1 data border noPadding'>${minusSum.minus_03l }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_135l }</div>
</div>
<div class='col-md-6 noPadding sumBorder'>
<div class='col-md-1 data noPadding border'>${minusSum.minus_5g_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_5g_back_box }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_135_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_135l_back_box }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_muchine }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_mcup }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_rcup }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_etc }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_pl_plus }</div>
<div class='col-md-1 data noPadding border'>${minusSum.minus_pl_minus }</div>
<div class='col-md-1 data border noPadding'>--</div>
<div class='col-md-1 data border noPadding lBorder'>--</div>
</div>




</div>
<script>

$(".detailBtn").on("click",function(){
	
	var $this = $(this);
	var $totalData = $this.parent().parent().parent().parent();
	var $detailData = $totalData.find(".detailData");
	var $dayData = $totalData.find(".dayData");
	
	if($detailData.hasClass("hidden")){
		
		$dayData.addClass("dayDataColor");
		$totalData.addClass("roundBorder");
		$detailData.addClass("show");
		$detailData.removeClass("hidden");	
		$this.html("접기");
		
		return;
		
	}
	
	$dayData.removeClass("dayDataColor");
	$totalData.removeClass("roundBorder");	
	$detailData.addClass("hidden");
	$detailData.removeClass("show");	
	$this.html("펼치기");
	
});


<%if(member_id != null){

	if(member_id.toString().equals("nara4384")){ %>

$("body").on("click",".modData",function(){
	
	if(confirm("데이터를 수정 할까요??")){
		
		var $this = $(this);
		var $btn = $this.parent().parent().find(".delBtn");
		var $data = $this.parent().parent().find(".modData");
		$(".modData").addClass("data").removeClass("modData");
			
		$btn.removeClass("minusDelBtn");
		$btn.addClass("minusModBtn");	
		
		$.each($data,function(index,value){
			
			var data = value.innerText;
				
			value.innerHTML = "<input class='modInput height20 width100' value='"+data+"'>";				
			
		})

		$btn.html("수정완료");
	
	}
	
});


$("body").on("click",".minusDelBtn",function(){
	
	var date = "${date}-"+$(this).parent().parent().parent().find(".personDate").html();
	
	 $.ajax({
		
		url:"/day/minus/remove",
		type:"POST",
		data:{minus_no:$(this).attr("id"),minus_date:date},
		success:function(){
			
			location.href='/calculate/person/${date}/${name}';
			
		}
		
	}) 
	
});

$("body").on("click",".minusModBtn",function(){
	
	var $input = $(".modInput");
	
	var data0 = "${name}";
	var data1 = $input.eq(0).val();
	var data2 = $input.eq(1).val();
	var data3 = $input.eq(2).val();
	var data4 = $input.eq(3).val();
	var data5 = $input.eq(4).val();
	var data6 = $input.eq(5).val();
	var data7 = $input.eq(6).val();
	var data8 = $input.eq(7).val();
	var data9 = $input.eq(8).val();
	var data10 = $input.eq(9).val();
	var data11 = $input.eq(10).val();
	var data12 = $input.eq(11).val();
	var data13 = $input.eq(12).val();
	var data14 = $input.eq(13).val();
	var data15 = $input.eq(14).val();
	var data16 = $input.eq(15).val();
	
	$.ajax({
		
		url:"/day/minus/modify",
		type:"POST",
		data:{minus_name:data0, minus_5g:data1 ,minus_2l:data2 ,minus_05l:data3 ,minus_03l:data4 ,minus_135l:data5 ,minus_5g_back_bottle:data6 ,
			minus_5g_back_box:data7 ,minus_135_back_bottle:data8 ,minus_135l_back_box:data9 ,minus_muchine:data10 ,
			minus_mcup:data11 ,minus_rcup:data12 ,minus_etc:data13 ,minus_pl_plus:data14 ,minus_pl_minus:data15 ,minus_memo:data16,minus_no:$(this).attr("id")},
		success:function(){
			
			location.href='/calculate/person/${date}/${name}';
			
		}
		
	})
	
});

<%}}%>

$("#nameSelector").change(function(){
	
	location.href='/calculate/person/'+tomonth+'/'+$(this).val();
	
});

</script>
</body>
</html>