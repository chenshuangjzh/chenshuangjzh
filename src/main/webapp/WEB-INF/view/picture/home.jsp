<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="/static/plugin/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css"/>
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body>
    <jsp:include page="../include/nav.jsp">
        <jsp:param name="current" value="our"/>
    </jsp:include>
    <div class="container">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1">
                <c:forEach items="${pictureList}" var="picture">
                    <c:if test="${picture.width == 5184}">
                        <div class="col-xs-10 col-lg-2 imgTop">
                            <img src="http://7xpdj0.com1.z0.glb.clouddn.com/${picture.pictureName}?imageView2/2/w/230" class="img-responsive img-thumbnail">
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="row otherRow">
            <div class="col-xs-10 col-xs-offset-1">
                <c:forEach items="${pictureList}" var="picture">
                    <c:if test="${picture.height == 5184}">
                        <div class="col-xs-10 col-lg-2 imgTop">
                            <img src="http://7xpdj0.com1.z0.glb.clouddn.com/${picture.pictureName}?imageView2/2/w/230" class="img-responsive img-thumbnail">
                        </div>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <div class="row">
            <div class="emptyDiv"></div>
        </div>
    </div>

    <script src="/static/js/jquery-1.11.3.min.js"></script>
    <script src="/static/plugin/bootstrap/js/bootstrap.min.js"></script>

    <script>
        $(function(){
            $(".dropdown-toggle").dropdown();
        });
    </script>
</body>
</html>
