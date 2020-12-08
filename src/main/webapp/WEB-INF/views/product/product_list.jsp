<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath %>">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/select.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="js/select-ui.min.js"></script>
    <script type="text/javascript" src="editor/kindeditor.js"></script>

    <script type="text/javascript">
        KE.show({
            id : 'content7',
            cssPath : './index.css'
        });
        function confirmDel(_id) {
            var flag=confirm("是否删除");
            if(flag){
                location.href="product/del?productId="+_id;
            }
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function(e) {
            $(".select1").uedSelect({
                width : 345
            });
            $(".select2").uedSelect({
                width : 167
            });
            $(".select3").uedSelect({
                width : 100
            });
        });
    </script>
</head>
<c:if test="${sessionScope.msg!=null}">
    <script type="text/javascript" language="JavaScript">
        alert("${msg}");
    </script>
</c:if>

<body>
<%
    session.removeAttribute("msg");
%>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">商品管理</a></li>
    </ul>
</div>

<div class="formbody">

    <form action="product/list" method="post">

        <div id="usual1" class="usual">

            <div id="tab2" class="tabson">

                <ul class="seachform">

                    <li><label>商品名称:</label><input name="productName" type="text" class="scinput" value="${pn.productName}"/></li>

                    <li><label>&nbsp;</label><input name="" type="submit" class="scbtn" value="查询"/></li>

                    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="增加" onclick="location.href='product/toadd'"/></li>

                </ul>

                <table class="tablelist">
                    <thead>
                    <tr>
                        <th>序号<i class="sort"><img src="images/px.gif" /></i></th>
                        <th>商品编号</th>
                        <th>商品名称</th>
                        <th>商品单位</th>
                        <th>商品库存</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="po" items="${pros}" varStatus="vst">
                        <tr>
                            <td>${vst.index+1}</td>
                            <td>${po.productId}</td>
                            <td>${po.productName}</td>
                            <td>${po.productUnit}</td>
                            <td>${po.productNum}</td>
                            <td><a href="product/toupdate?productId=${po.productId}" class="tablelink">修改</a>     <a href="javascript:void(0)" class="tablelink" onclick="confirmDel(${po.productId})"> 删除</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
    </form>

    <script type="text/javascript">
        $("#usual1 ul").idTabs();
    </script>

    <script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
    </script>





</div>


</body>

</html>
