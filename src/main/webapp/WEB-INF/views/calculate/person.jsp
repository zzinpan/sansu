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



</style>
</head>
<body>
<jsp:include page="/resources/jsp/navi.jsp"></jsp:include>

<div class='box'>

<div class='col-md-12 category'>
<span>개인별 정산</span>
</div>

<div class='col-md-12'><input id='date' class='form-control' readonly="readonly" type="text" value="${date }"></div>


<!-- 구분 -->
<div class='col-md-6 noPadding background tBorder' style="border-top: black solid 2px;">
<div class='col-md-3 data border'>구분</div>
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
<div class='col-md-1 data border noPadding lBorder'><button class='height20 minusDelBtn mBtn delBtn' id='${item.minus_no }'>삭제</button></div>
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
</body>
</html>