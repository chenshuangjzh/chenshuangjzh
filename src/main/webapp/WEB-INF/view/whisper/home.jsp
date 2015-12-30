<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

            <div class="hidden whisper-new-girl" id="newGirlWhisper">
                <div class="whisper-new-title">
                    <label>New Whisper</label>
                    <button type="button" class="close pull-right close-btn" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="whisper-new-container">
                    <textarea class="whisper-new-textarea"></textarea>
                    <button class="btn btn-info push-btn">Push</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="shadow hidden" id="shadow"></div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/plugin/bootstrap/js/bootstrap.min.js"></script>

<script>
    $(function(){

        $(".close-btn").click(function(){
            $("#newGirlWhisper").addClass("hidden");
            $("#shadow").addClass("hidden");
        });

        $("body").keyup(function(event){
            var keyCode = event.keyCode;
            if(keyCode == 71){
                $("#newGirlWhisper").removeClass("hidden");
                $("#shadow").removeClass("hidden");
            }else if(keyCode == 27){
                $("#newGirlWhisper").addClass("hidden");
                $("#shadow").addClass("hidden");
            }
        });

        $(".dropdown-toggle").dropdown();
    });
</script>
</body>
</html>
