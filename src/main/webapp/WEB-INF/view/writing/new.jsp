<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="/static/plugin/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/plugin/simditor/styles/simditor.css"/>
    <link rel="stylesheet" href="/static/css/style-new-writing.css">
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/nav.jsp">
    <jsp:param name="current" value="writing-new"></jsp:param>
</jsp:include>

<div class="container-fluid">
    <div class="row">
        <div class="col-xs-8 col-xs-offset-1">
            <div class="writingTitle">
                <textarea id="titleArea"></textarea>
            </div>
        </div>
        <div class="col-xs-8 col-xs-offset-1 editor">
            <textarea rows="3" cols="20" id="editor" autofocus></textarea>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="bottomInfo"></div>
        </div>
    </div>
</div>
</body>

<script src="/static/plugin/simditor/scripts/jquery.min.js"></script>
<script src="/static/plugin/simditor/scripts/module.min.js"></script>
<script src="/static/plugin/simditor/scripts/hotkeys.min.js"></script>
<script src="/static/plugin/simditor/scripts/uploader.min.js"></script>
<script src="/static/plugin/simditor/scripts/simditor.min.js"></script>
<script>
    var editor = new Simditor({
        textarea: $("#editor")
    });
</script>
</html>