<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="/js/bootstrap.js"></script>
        <meta charset="utf-8">
        <title>
            Acts On
        </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.4/css/fontawesome.min.css" integrity="sha384-jLKHWM3JRmfMU0A5x5AkjWkw/EYfGUAGagvnfryNV3F9VqM98XiIH7VBGVoxVSc7" crossorigin="anonymous">
        <!-- <link rel="stylesheet" href="./css/bootstrap.css">
        <script src="js/jquery-3.6.0.js"></script> -->
        
        
        <style>
            body {
                margin-left: 50px;
                margin-right: 50px;
            }

            #headLine {
                background-color: #b5cda3;
                display: grid;
                grid-template-columns: 8fr 1fr;
                margin: 100px, 30px, 500px, 30px;
                height: 50px;
                width: auto;
            }

            #small {
                height: 40px;
            }

            #headLineText {
                padding-left: 20px;
                padding-top: 5px;
                color: white;
                font-size: 30px;
                font-weight: bold;
            }

            #big {
                height: 70px;
            }

            #all {
                display: grid;
                grid-template-columns: 3fr 1fr;
            }

            #title {
                padding-left: 50px;
                font-size: 70px;
                font-weight: bold;
                width: 600px;
            }

            #text {
                font-weight: bold;
                padding-left: 50px;
                width: 600px;
            }

            .row {
                padding-left: 50px;
                padding-right: 50px;
                padding-top: 30px;
            }
			a{
				text-decoration:none; 
				color : black;
			}
        </style>
    </head>
    <body>
        <!-- <script type="text/javascript" src="js/bootstrap.js"> -->
        </script>

        <div id="headLine" align="center" >
            <div id="headLineText" align="left">
                Acts <img src="<c:url value='/images/sprout2.png' />" border="0" width="45" height="30"/>
            </div>
                
            <div >
                <a href="<c:url value='/comm/search' />"><img src="<c:url value='/images/searchIcon.GIF' />"/></a>
                <!--  즐겨찾기 page 구현 필요  -->
                <!-- <img src="./image/즐겨찾기.GIF">  -->
                <a href="<c:url value='/user/myPage' />"><img src="<c:url value='/images/mypageIcon.GIF' />"/></a>
                <!-- 로그인 되어있다면 MyPage로 안되어 있는 경우 NotLogin페이지로 가서 Login Page로 유도(이거도 foward 필요) -->
            </div>

        </div>





        </div>
    </body>
</html>