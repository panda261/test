<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath %>">
    <title>add</title>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">商品修改</a></li>
    </ul>
</div>
<form action="product/update" method="post">
    <div class="formbody">
        <div class="formtitle"><span>商品信息</span></div>
        <ul class="forminfo">
            <li><label>商品ID</label><input name="productId" type="text" class="dfinput" readonly value="${upProduct.productId}"/><i>商品编号自增长</i></li>
            <li><label>商品名称</label><input name="productName" type="text" class="dfinput" value="${upProduct.productName}"/><i>商品名称不能超过10个字符</i></li>
            <li><label>商品单位</label><input name="productUnit" type="text" class="dfinput" value="${upProduct.productUnit}"/><i>xxxxx</i></li>
            <li><label>商品库存</label><input name="productNum" type="text" class="dfinput" value="${upProduct.productNum}"/><i>yyyyy</i></li>
            <li><label> </label><input name="" type="submit" class="btn" value="修改"/></li>
        </ul>
    </div>

</form>

</body>
</html>
