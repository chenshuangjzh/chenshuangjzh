<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">chenshuangjzh</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="${param.current == 'our' ? 'active' : ''}"><a ${param.current == 'our' ? '' : 'href="/picture/all"'}>Our <span class="sr-only">(current)</span></a></li>
                <li class="${param.current == 'times' ? 'active' : ''}"><a ${param.current == 'times' ? '' : 'href="javascript:;" id="times"'}>Times</a></li>
                <li class="${param.current == 'whisper' ? 'active' : ''}"><a ${param.current == 'whisper' ? '' : 'href="/whisper/all"'}>Whisper</a></li>
                <li class="${param.current == 'writing' ? 'active' : ''}"><a ${param.current == 'writing' ? '' : 'href="/writing/all"'}>Writing</a></li>
            </ul>
            <%--<form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            --%>
            <ul class="nav navbar-nav navbar-right">
                <li id="signContainer">
                    <div class="g-signin2" data-onsuccess="onSignIn"></div>
                </li>
                <li class="dropdown" id="signOutContainer" style="display: none">
                    <a id="userEmail" href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="javascript:;" id="signOut">Sign out</a></li>
                    </ul>
                </li>
                <li>
                    <img id="userImage" class="img-circle" width="25px" style="margin-top:12.5px;margin-right:6px;">
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<script src="/static/js/jquery-1.11.3.min.js"></script>
<script>
    function onSignIn(googleUser) {
        $("#signContainer").hide();
        var profile = googleUser.getBasicProfile();
        /*var id_token = googleUser.getAuthResponse().id_token;
        console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail());
        console.log('Id_token:' + id_token);*/
        $("#userEmail").html(profile.getEmail() + " <span class='caret'></span>");
        $("#userImage").attr("src",profile.getImageUrl());
        $("#signOutContainer").show();
    }

    $("#signOut").click(function(){
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            window.location.href = window.location.href;
        });
    });
</script>
<script src="/static/js/platform.js" async defer></script>
