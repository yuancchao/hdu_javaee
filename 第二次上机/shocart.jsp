<%@ page language="java" contentType="text/html; charset=GBK" pageEncoding="GBK"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>购物页面</title>
</head>
<body>
	<form action="" method="post" name="form">
	这里是调料柜台，请选择要购买的调料：<br />
	<input type="checkbox" name="sec" value="篮球" />篮球<br />
	<input type="checkbox" name="sec" value="足球" />足球<br />
	<input type="checkbox" name="sec" value="排球" />排球<br />
	<input type="submit" name="gouwu" value="提交">
	<br />
	<br />
	<a href="shopcart2.jsp">买点别的</a>
	<a href="lookShopCart.jsp">查看购物车！</a>
	<%
	request.setCharacterEncoding("GB2312");
	String sec[] = request.getParameterValues("sec");
	if (sec!=null && sec.length!= 0) {
	for (int i=0;i<sec.length;i++) {
		session.setAttribute(sec[i],sec[i]);
	}
	}	
			%>
</body>
</html>