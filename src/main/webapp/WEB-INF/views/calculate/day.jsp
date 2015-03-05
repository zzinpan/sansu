<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>일일 정산</title>
<jsp:include page="/resources/jsp/header.jsp"></jsp:include>
<script src="/resources/jquery-ui-1.11.3.custom/jquery-ui.js"></script>
 <link rel="stylesheet" href="/resources/jquery-ui-1.11.3.custom/jquery-ui.css">
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

.background{

background-color: #EEE;

}

.noPadding{

padding: 0;

}

.border{

border: black solid 1px;
border-right: 0;
border-top:0;

}

.tBorder{

border-top: black solid 1px;

}

.lBorder{

border-left:black solid 1px;

}

.bBorder{

border-bottom: black solid 1px;

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

</style>
</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>


<div class='box'>

<div class='col-md-12 category'>
<span>일일 정산</span>
</div>

<div class='col-md-12'><input id='date' class='form-control' readonly="readonly" type="text" value="${date }"></div>


<!-- 구분 -->
<div class='col-md-6 noPadding background tBorder'>
<div class='col-md-3 data border'>구분</div>
<div class='col-md-2 data border'>5G/L</div>
<div class='col-md-2 data border'>2.0L</div>
<div class='col-md-2 data border'>0.5L</div>
<div class='col-md-1 data border'>0.3L</div>
<div class='col-md-2 data border'>13.5L</div>
</div>
<div class='col-md-6 noPadding background tBorder'>
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>5G/L 회수</div><div class='col-md-6 data noPadding'>공병</div><div class='col-md-6 data noPadding lBorder'>박스</div></div>
<div class='col-md-2 noPadding border'><div class='col-md-12 noPadding data bBorder'>13.5L 회수</div><div class='col-md-6 data noPadding'>공병</div><div class='col-md-6 data noPadding lBorder'>박스</div></div>
<div class='col-md-1 data border'>기계</div>
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>종이컵</div><div class='col-md-6 data noPadding'>m</div><div class='col-md-6 data noPadding lBorder'>r</div></div>
<div class='col-md-1 data border'>기타</div>
<div class='col-md-2 noPadding border'><div class='col-md-12 data noPadding bBorder'>P/L</div><div class='col-md-6 data noPadding'>입고</div><div class='col-md-6 data noPadding lBorder'>출력</div></div>
<div class='col-md-1 data border'>비고</div>
<div class='col-md-1 data border lBorder'>상태</div>
</div>


<!-- 전일 재고 -->
<div class='col-md-6 noPadding'>
<div class='col-md-3 background noPadding data border'>전일재고</div>
<div class='col-md-2 data border noPadding'>12345</div>
<div class='col-md-2 data border noPadding'>123</div>
<div class='col-md-2 data border noPadding'>123</div>
<div class='col-md-1 data border noPadding'>123</div>
<div class='col-md-2 data border noPadding'>123</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data noPadding border'>123</div>
<div class='col-md-1 data border noPadding'>123</div>
<div class='col-md-1 data border noPadding lBorder'>--</div>
</div>


<!-- 당일 입고 리스트 -->
<div class='col-md-12 noPadding plusList'>

<c:forEach var="item" items="${plusList }">

<div class='col-md-12 noPadding'>
<div class='col-md-6 noPadding'>
<div class='col-md-3 background noPadding data border'>당일입고</div>
<div class='col-md-2 modData border noPadding'>${item.plus_5g }</div>
<div class='col-md-2 modData border noPadding'>${item.plus_2l }</div>
<div class='col-md-2 modData border noPadding'>${item.plus_05l }</div>
<div class='col-md-1 modData border noPadding'>${item.plus_03l }</div>
<div class='col-md-2 modData border noPadding'>${item.plus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 modData noPadding border'>${item.plus_5g_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_5g_back_box }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_135_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_135l_back_box }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_muchine }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_mcup }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_rcup }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_etc }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_pl_plus }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_pl_minus }</div>
<div class='col-md-1 modData noPadding border'>${item.plus_memo }</div>
<div class='col-md-1 data border noPadding lBorder'><button class='height20 plusDelBtn' id='${item.plus_no }'>삭제</button></div>
</div>
</div>

</c:forEach>

</div>


<!-- 당일 입고 인풋 -->
<form action="/day/plus/insert" method="POST">
<input type="hidden" name='plus_date' value='${date }'>
<div class='col-md-6 noPadding'>
<div class='col-md-3 background noPadding data border'>입고입력</div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='plus_5g'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='plus_2l'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='plus_05l'></div>
<div class='col-md-1 data border noPadding'><input class='height20 width100' type='text' name='plus_03l'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='plus_135l'></div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_5g_back_bottle'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_5g_back_box'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_135_back_bottle'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_135l_back_box'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_muchine'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_mcup'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_rcup'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_etc'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_pl_plus'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='plus_pl_minus'></div>
<div class='col-md-1 data noPadding border '><input class='height20 width100' type='text' name='plus_memo'></div>
<div class='col-md-1 data border noPadding lBorder'><input class='height20 plusBtn' type="submit" value="입력"></div>
</div>
</form>


<!-- 입고 계 -->
<div class='col-md-6 noPadding'>
<div class='col-md-3 background noPadding data border'>입고 계</div>
<div class='col-md-2 data border noPadding'>${plusSum.plus_5g }</div>
<div class='col-md-2 data border noPadding'>${plusSum.plus_2l }</div>
<div class='col-md-2 data border noPadding'>${plusSum.plus_05l }</div>
<div class='col-md-1 data border noPadding'>${plusSum.plus_03l }</div>
<div class='col-md-2 data border noPadding'>${plusSum.plus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 data noPadding border'>${plusSum.plus_5g_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_5g_back_box }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_135_back_bottle }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_135l_back_box }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_muchine }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_mcup }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_rcup }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_etc }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_pl_plus }</div>
<div class='col-md-1 data noPadding border'>${plusSum.plus_pl_minus }</div>
<div class='col-md-1 data border noPadding'>--</div>
<div class='col-md-1 data border noPadding lBorder'>--</div>
</div>


<!-- 당일 출고 리스트 -->
<div class='col-md-12 noPadding minusList'>

<c:forEach var="item" items="${minusList }">

<div class='col-md-12 noPadding'>
<div class='col-md-6 noPadding'>
<div class='col-md-2 background noPadding data border'>당일출고</div>
<div class='col-md-1 modData border noPadding'>${item.minus_name }</div>
<div class='col-md-2 modData border noPadding'>${item.minus_5g }</div>
<div class='col-md-2 modData border noPadding'>${item.minus_2l }</div>
<div class='col-md-2 modData border noPadding'>${item.minus_05l }</div>
<div class='col-md-1 modData border noPadding'>${item.minus_03l }</div>
<div class='col-md-2 modData border noPadding'>${item.minus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 modData noPadding border'>${item.minus_5g_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_5g_back_box }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_135_back_bottle }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_135l_back_box }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_muchine }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_mcup }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_rcup }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_etc }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_pl_plus }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_pl_minus }</div>
<div class='col-md-1 modData noPadding border'>${item.minus_memo }</div>
<div class='col-md-1 data border noPadding lBorder'><button class='height20 minusDelBtn mBtn' id='${item.minus_no }'>삭제</button></div>
</div>
</div>

</c:forEach>

</div>


<!-- 당일 출고 인풋 -->
<form id='minus_form' action="/day/minus/insert" method="POST">
<input type="hidden" name='minus_date' value='${date }'>
<div class='col-md-6 noPadding'>
<div class='col-md-2 background noPadding data border'>출고입력</div>
<div class='col-md-1 background noPadding data border'>
<select id='minus_name' class='height20' name="minus_name">
<option value="x">선택</option>
<c:forEach items="${nameList }" var="item">
<option value="${item }" >${item }</option>
</c:forEach>
</select>
</div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='minus_5g'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='minus_2l'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='minus_05l'></div>
<div class='col-md-1 data border noPadding'><input class='height20 width100' type='text' name='minus_03l'></div>
<div class='col-md-2 data border noPadding'><input class='height20 width100' type='text' name='minus_135l'></div>
</div>
<div class='col-md-6 noPadding'>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_5g_back_bottle'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_5g_back_box'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_135_back_bottle'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_135l_back_box'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_muchine'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_mcup'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_rcup'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_etc'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_pl_plus'></div>
<div class='col-md-1 data noPadding border'><input class='height20 width100' type='text' name='minus_pl_minus'></div>
<div class='col-md-1 data noPadding border '><input class='height20 width100' type='text' name='minus_memo'></div>
<div class='col-md-1 data border noPadding lBorder'><input class='height20 minusBtn mBtn' type="button" value="입력"></div>
</div>
</form>


<!-- 출고 계 -->
<div class='col-md-6 noPadding'>
<div class='col-md-3 background noPadding data border'>출고 계</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_5g }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_2l }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_05l }</div>
<div class='col-md-1 data border noPadding'>${minusSum.minus_03l }</div>
<div class='col-md-2 data border noPadding'>${minusSum.minus_135l }</div>
</div>
<div class='col-md-6 noPadding'>
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

$("#date").datepicker({ 
	
	dateFormat: 'yy-mm-dd',
	showAnim: "fadeIn"
	
});

$("#date").change(function(){
	
	location.href='/calculate/day/'+$(this).val();
	
});

$("body").on("click",".plusDelBtn",function(){
	
	$.ajax({
		
		url:"/day/plus/remove",
		type:"POST",
		data:{plus_no:$(this).attr("id")},
		success:function(){
			
			location.href='/calculate/day/${date}';
			
		}
		
	})
	
});

$("body").on("click",".modData",function(){
	
	if(confirm("데이터를 수정 할까요??")){
		
		var $this = $(this);
		var $btn = $this.parent().parent().find(".plusDelBtn");
		var $data = $this.parent().parent().find(".modData");
		$(".modData").addClass("data").removeClass("modData");
		
		$btn.html("수정완료");
		$btn.removeClass("plusDelBtn");
		$btn.addClass("plusModBtn");
		
		$.each($data,function(index,value){
			
			var data = value.innerText;
			
			value.innerHTML = "<input class='modInput height20 width100' value='"+data+"'>";
			
			
		})

		
	}
	
});

$("body").on("click",".plusModBtn",function(){
	
	var $input = $(".modInput");
	
	var data0 = $input.eq(0).val();
	var data1 = $input.eq(1).val();
	var data2 = $input.eq(2).val();
	var data3 = $input.eq(3).val();
	var data4 = $input.eq(4).val();
	var data5 = $input.eq(5).val();
	var data6 = $input.eq(6).val();
	var data7 = $input.eq(7).val();
	var data8 = $input.eq(8).val();
	var data9 = $input.eq(9).val();
	var data10 = $input.eq(10).val();
	var data11 = $input.eq(11).val();
	var data12 = $input.eq(12).val();
	var data13 = $input.eq(13).val();
	var data14 = $input.eq(14).val();
	var data15 = $input.eq(15).val();
	
	$.ajax({
		
		url:"/day/plus/modify",
		type:"POST",
		data:{plus_5g:data0 ,plus_2l:data1 ,plus_05l:data2 ,plus_03l:data3 ,plus_135l:data4 ,plus_5g_back_bottle:data5 ,
			plus_5g_back_box:data6 ,plus_135_back_bottle:data7 ,plus_135l_back_box:data8 ,plus_muchine:data9 ,
			plus_mcup:data10 ,plus_rcup:data11 ,plus_etc:data12 ,plus_pl_plus:data13 ,plus_pl_minus:data14 ,plus_memo:data15,plus_no:$(this).attr("id")},
		success:function(){
			
			location.href='/calculate/day/${date}';
			
		}
		
	})
	
});

$(".minusBtn").click(function(){
	
	if($("#minus_name").val()=="x"){
		
		alert("직원을 선택하세요.");
		
		return;
		
	}
	
	$("#minus_form").submit();
	
});

$("body").on("click",".minusDelBtn",function(){
	
	$.ajax({
		
		url:"/day/minus/remove",
		type:"POST",
		data:{minus_no:$(this).attr("id")},
		success:function(){
			
			location.href='/calculate/day/${date}';
			
		}
		
	})
	
});

 </script>

</body>
</html>