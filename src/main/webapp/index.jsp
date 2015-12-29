<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="/static/plugin/bootstrap/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body>
    <jsp:include page="/WEB-INF/view/include/nav.jsp"/>

    <script src="/static/js/jquery-1.11.3.min.js"></script>
    <script src="/static/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="/static/js/js.cookie.js"></script>

    <script>
        $(function(){

            $("#times").click(function(){
                var currentMilliseconds = new Date().getMilliseconds();
                Cookies.set("requestBegin",currentMilliseconds,{expires : 1});
                window.location.href = "/times/running";
            });

            $(".dropdown-toggle").dropdown();
        });
    </script>
</body>
</html>
