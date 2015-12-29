<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN" ng-app="timeApp">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="/static/plugin/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/style.css"/>
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body ng-controller="TimeController">
<jsp:include page="/WEB-INF/view/include/nav.jsp">
    <jsp:param name="current" value="times"></jsp:param>
</jsp:include>

<div class="container">
    <input ng-model="timeUtil.time">
    <input ng-model="timeUtil.day">
    <input ng-model="timeUtil.hour">
    <input ng-model="timeUtil.minute">
    <input value="{{timeUtil.second | secondFilter}}">
    <input ng-model="timeUtil.millisecond">
</div>

<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/js/js.cookie.js"></script>
<script src="/static/js/angular.min.js"></script>

<script>
    var timeAppModule = angular.module("timeApp",[]);

    timeAppModule.filter("secondFilter",function(){
        return function(input){
            if(input.toString().length == 1){
                return "0" + input;
            }else{
                return input;
            }
        }
    });

    timeAppModule.controller("TimeController",function($scope,$interval){
        var requestBegin = Cookies.get("requestBegin");
        var currentMilliseconds = new Date().getMilliseconds();
        var costMilliseconds = currentMilliseconds - requestBegin;

        $scope.timeUtil = {};

        $scope.timeUtil.time = ${time} + costMilliseconds;

        var dayTime = 1000 * 60 * 60 * 24;
        $scope.timeUtil.day = ($scope.timeUtil.time / dayTime) | 0;

        var hourTime = 1000 * 60 * 60;
        $scope.timeUtil.hour = (($scope.timeUtil.time - $scope.timeUtil.day * dayTime) / hourTime) | 0;

        var minuteTime = 1000 * 60;
        $scope.timeUtil.minute = (($scope.timeUtil.time - $scope.timeUtil.hour * hourTime - $scope.timeUtil.day * dayTime) / minuteTime) | 0;

        $scope.timeUtil.second = (($scope.timeUtil.time - $scope.timeUtil.minute * minuteTime - $scope.timeUtil.hour * hourTime - $scope.timeUtil.day * dayTime) / 1000) | 0;

        $scope.timeUtil.millisecond = $scope.timeUtil.time - $scope.timeUtil.minute * minuteTime - $scope.timeUtil.hour * hourTime - $scope.timeUtil.day * dayTime - $scope.timeUtil.second * 1000;

        $interval(function(){
            $scope.timeUtil.time = $scope.timeUtil.time + 4;
            $scope.timeUtil.millisecond = $scope.timeUtil.millisecond + 4;
            if($scope.timeUtil.millisecond >= 1000){
                $scope.timeUtil.millisecond = 0;
                $scope.timeUtil.second = $scope.timeUtil.second + 1;
                if($scope.timeUtil.second == 60){
                    $scope.timeUtil.minute = $scope.timeUtil.minute + 1;
                    $scope.timeUtil.second = 0;
                    if($scope.timeUtil.minute == 60){
                        $scope.timeUtil.hour = $scope.timeUtil.hour + 1;
                        $scope.timeUtil.minute = 0;
                        if($scope.timeUtil.hour == 24){
                            $scope.timeUtil.day = $scope.timeUtil.day + 1;
                            $scope.timeUtil.hour = 0;
                        }
                    }
                }
            }
        },4);
    });
</script>

<script>
    $(function(){
        $(".dropdown-toggle").dropdown();
    });
</script>
</body>
</html>
