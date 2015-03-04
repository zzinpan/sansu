<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>

.box{

	padding:20px;
	margin:0;
	width:236px;

}

.title{

	text-align: center;
	font-weight: bolder;
	font-size: 20px;

}

.btn{
	
	margin:0;
	width:100%;
	font-weight:bolder;
	
}

.btns{
	
	
	text-align: center;

}

.form-control{

	text-align: center;

}

.margin-top{

	margin-top: 5px;

}

</style>
</head>
<body>
<div class='box'>

	<div class='title'>need login</div>
	
	<div>
	
		<form class='form-inline' action="j_spring_security_check" method="post">
			<div class='margin-top'>
			<input class='form-control' type="text" name="member_id" placeholder="id">
			</div>
			<div class='margin-top'>
			<input class='form-control' type="password" name="member_password" placeholder='password'>
			</div>
			<div class='btns margin-top'>
			<input class='btn btn-default' type="submit" value="login">
			</div>
			<input type="hidden" name='page' value="${page }">
		</form>
	
	</div>
	
</div>
		


<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<script>



</script>
</body>
</html>