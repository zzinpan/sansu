<%@page import="org.springframework.web.util.WebUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
<div class='row'>

<div class='col-md-2 menu move' href='/business/list'><span>업체 현황</span></div>
<div class='col-md-2 menu move' href=''><span>일일 정산</span></div>
<div class='col-md-2 menu move' href=''><span>개인별 정산</span></div>
<div class='col-md-2 menu login'><span>대리점 정산</span></div>
<div class='col-md-2 menu login'><span>합계 정산</span></div>
<div class='col-md-2 menu login'><span>로그인</span></div>

</div>
</nav>

<script>

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1;
var yyyy = today.getFullYear();
if(dd<10){
    dd='0'+dd
} 
if(mm<10){
    mm='0'+mm
} 
var today = yyyy+'-'+mm+'-'+dd;
var tomonth = yyyy+'-'+mm;

$(".move").eq(1).attr("href","/calculate/day/"+today);
$(".move").eq(2).attr("href","/calculate/person/"+tomonth);

$("body").on("click",".move",function(){
	
	location.href = $(this).attr("href");
	
});

</script>


<% Object member_id = session.getAttribute("member_id");



if(member_id != null){ %>
	
	
	<script>
		console.log("로그인됨");
		
		var $login = $(".login");
		
		$login.eq(0).attr("href","/calculate/agent");
		$login.eq(1).attr("href","/calculate/total");
		$login.eq(2).attr("href","/logout");
		$login.eq(2).find("span").html("로그아웃");
		$login.addClass("move");
		$login.removeClass("login");
	
	</script>
	
	
<% }else{ %>


<script>
console.log("로그인안됨")

$(".login").colorbox({opacity:0.7})

var page = location.href;

page = page.substring(7);

page = page.substring(page.indexOf("/"))

$(".login").eq(0).attr("href","/login?page=/calculate/agent@"+page)
$(".login").eq(1).attr("href","/login?page=/calculate/total@"+page)
$(".login").eq(2).attr("href","/login?page="+page+"@"+page)


</script>

<% } 


Object login = session.getAttribute("login");

if(login != null){
	
if(login.toString().equals("fail")){%>
	
	<script>alert("로그인 실패");</script>
	
<%  session.removeAttribute("login"); }}%>