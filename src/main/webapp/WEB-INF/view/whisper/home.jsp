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
    <link rel="stylesheet" href="/static/css/style-whisper.css"/>
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/nav.jsp">
    <jsp:param name="current" value="whisper"></jsp:param>
</jsp:include>

<div class="container">
    <div class="row">
        <div class="col-xs-8 col-xs-offset-2 whisper-container">
            <div class="whisper-blank"></div>
            <div class="whisper-item">
                <div class="publisher">
                    <img src="/static/img/girl.jpg" class="img-responsive img-circle img-header"/>
                </div>
                <div class="content-girl">
                    <label>Hey,boy!</label>
                </div>
            </div>
            <div class="whisper-item">
                <div class="publisher-blank"></div>
                <div class="content-boy">
                    <label>Hey,girl!What's wrong?</label>
                </div>
                <div class="publisher">
                    <img src="/static/img/boy.jpg" class="img-responsive img-circle img-header"/>
                </div>
            </div>
            <div class="whisper-item">
                <div class="publisher">
                    <img src="/static/img/girl.jpg" class="img-responsive img-circle img-header"/>
                </div>
                <div class="content-girl">
                    <label>I'm hungry!</label>
                </div>
            </div>
            <div class="whisper-item">
                <div class="publisher-blank"></div>
                <div class="content-boy">
                    <label>Ok,let's go to eat fish.I know somewhere cooking delicious meal.</label>
                </div>
                <div class="publisher">
                    <img src="/static/img/boy.jpg" class="img-responsive img-circle img-header"/>
                </div>
            </div>

            <c:forEach items="${whisperList}" var="whisper">
                <c:if test="${whisper.publisher == 'boy'}">
                    <div class="whisper-item">
                        <div class="publisher-blank"></div>
                        <div class="content-${whisper.publisher}">
                            <label>${whisper.content}</label>
                        </div>
                        <div class="publisher">
                            <img src="/static/img/${whisper.publisher}.jpg" class="img-responsive img-circle img-header"/>
                        </div>
                    </div>
                </c:if>
                <c:if test="${whisper.publisher == 'girl'}">
                    <div class="whisper-item">
                        <div class="publisher">
                            <img src="/static/img/${whisper.publisher}.jpg" class="img-responsive img-circle img-header"/>
                        </div>
                        <div class="content-girl">
                            <label>${whisper.content}</label>
                        </div>
                    </div>
                </c:if>
            </c:forEach>

            <div class="hidden whisper-new-girl" id="newGirlWhisper">
                <div class="whisper-new-title">
                    <label>Girl's Whisper</label>
                    <button type="button" class="close pull-right close-btn" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="whisper-new-container">
                    <textarea class="whisper-new-textarea"></textarea>
                    <button class="btn btn-info push-btn">Push</button>
                </div>
            </div>

            <div class="hidden whisper-new-boy" id="newBoyWhisper">
                <div class="whisper-new-title">
                    <label>Boy's Whisper</label>
                    <button type="button" class="close pull-right close-btn" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="whisper-new-container">
                    <textarea class="whisper-new-textarea"></textarea>
                    <button class="btn btn-info push-btn">Push</button>
                </div>
            </div>

            <input type="hidden" id="pushMessageType">
        </div>
    </div>
</div>

<div class="shadow hidden" id="shadow"></div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/js/js.cookie.js"></script>
<script src="/static/js/nav.js"></script>

<script>
    $(function(){

        $(".push-btn").click(function(){
            var content = $(this).parent().find("textarea").val();
            var pushMessageType = $("#pushMessageType").val();
            $.ajax({
                url:"/whisper/push?content=" + content + "&pushMessageType=" + pushMessageType,
                success:function(data){
                    $("#newGirlWhisper").addClass("hidden");
                    $("#newBoyWhisper").addClass("hidden");
                    $("#shadow").addClass("hidden");
                    $("#pushMessageType").val("");

                    var content = data.content;
                    var publisher = data.publisher;
                    if(publisher == "boy"){
                        $(".whisper-container").append($('<div class="whisper-item"><div class="publisher-blank"></div><div class="content-' + publisher + '"><label>' + content + '</label></div><div class="publisher"><img src="/static/img/' + publisher + '.jpg" class="img-responsive img-circle img-header"/></div></div>'));
                    }else if(publisher == "girl"){
                        $(".whisper-container").append($('<div class="whisper-item"><div class="publisher"><img src="/static/img/' + publisher + '.jpg" class="img-responsive img-circle img-header"/></div><div class="content-' + publisher + '"><label>' + content + '</label></div></div>'));
                    }
                }
            });
        });

        $(".close-btn").click(function(){
            $("#newGirlWhisper").addClass("hidden");
            $("#newBoyWhisper").addClass("hidden");
            $("#shadow").addClass("hidden");
        });

        $("body").keyup(function(event){
            var keyCode = event.keyCode;
            if(keyCode == 71){
                $("#newGirlWhisper").removeClass("hidden");
                $("#shadow").removeClass("hidden");
                $("#pushMessageType").val("girl");
            }else if(keyCode == 27){
                $("#newGirlWhisper").addClass("hidden");
                $("#newBoyWhisper").addClass("hidden");
                $("#shadow").addClass("hidden");
                $("#pushMessageType").val("");
            }else if(keyCode == 66){
                $("#newBoyWhisper").removeClass("hidden");
                $("#shadow").removeClass("hidden");
                $("#pushMessageType").val("boy");
            }
        });
    });
</script>
</body>
</html>
