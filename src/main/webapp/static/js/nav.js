$(function(){
    $("#times").click(function(){
        var currentMilliseconds = new Date().getMilliseconds();
        Cookies.set("requestBegin",currentMilliseconds,{expires : 1});
        window.location.href = "/times/running";
    });

    $(".dropdown-toggle").dropdown();
});