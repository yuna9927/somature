<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   User user = (User)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    text-align: center;margin: 0 auto;width: 100%;
    background-color : white;
}
nav > a {
    float: right;
    margin: auto;
    text-decoration: none;
}
nav div{
    text-align:right;
}
nav div > a{
    text-decoration: none;
    color:black;
}
nav div > a:last-child{
    padding-left:10px;
}
aside >  a{
    text-decoration: none; color:black;
}
#wrap > section > ul > li{
    list-style-type:none;
}
aside {
    width: 30%; float: left;
} 
section {
    float: left;width: 70%
}
#wrap{
    border:1px solid gray; height:50%;
}
.div {
   padding-top: 20px;
   padding-bottom: 20px;
}
</style>
<script>
function confirm() {
   confirm('정말 계정을 삭제하시겠습니까?');
}
</script>
</head>
<%@include file="/WEB-INF/navbar.jsp" %>

   <h1>내정보</h1>
   <a href="<c:url value='/user/myInfo' />">내 정보 보기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <a
      href="<c:url value='/user/update'><c:param name='accountId' value='<%=user.getAccountId()%>'/></c:url>">회원
      정보 수정</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a
      href="<c:url value='/user/myPost'>
      <c:param name='userId' value='${user.userId}'/></c:url>">
      내가 쓴 글 보기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
   <a
      href="<c:url value='/user/myPage/myBuyerTransaction'>
      <c:param name='userId' value='${user.userId}'/></c:url>">
      거래 내역 보기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

   <a href="<c:url value='/user/followingList' />">내가 팔로잉하는 계정</a>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
   <a onclick='confirm()'
      href="<c:url value='/user/delete'>
            <c:param name='accountId' value='${user.accountId}'/>
           </c:url>">
   회원탈퇴</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<%
    String pagefile=request.getParameter("page");
    //처음 보여주는 페이지는 내가 쓴글리스트
    if(pagefile==null){
            pagefile="myInfo";
        }
%>
<body>

<div class="row">
	<div class="col-4">
    <div  class="list-group" id="myList" role="tablist">
    	<button class="tablinks active" onclick="openTab(event, 'list-myInfo')">내 정보 보기</button>
    	<button class="tablinks" onclick="openTab(event, 'list-updateInfo')">내 정보 수정</button>
    	<button class="tablinks" onclick="openTab(event, 'list-postList')">내 게시글 보기</button>
    	<button class="tablinks" onclick="openTab(event, 'list-myBuyerTransaction')">내 거래내역</button>
    	<button class="tablinks" onclick="openTab(event, 'list-favoriteList')">팔로잉리스트</button>

    </div>
  	</div>
  	<div class="col-8">
    <div class="tab-content">
      <div class="tabcontent" id="list-myInfo" role="tabpanel" style="display: block;"><jsp:include page="myInfo.jsp" ></jsp:include></div>
      <div class="tabcontent" id="list-updateInfo" role="tabpanel" style="display: none;"><jsp:include page="updateForm.jsp" ></jsp:include></div>
      <div class="tabcontent" id="list-postList" role="tabpanel"  style="display: none;"><jsp:include page="myPost.jsp"  ></jsp:include></div>
      <div class="tabcontent" id="list-myBuyerTransaction" role="tabpanel"  style="display: none;"><jsp:include page="myBuyerTransaction.jsp" ></jsp:include></div>
      <div class="tabcontent" id="list-favoriteList" role="tabpanel"  style="display: none;"><jsp:include page="favoriteList.jsp"></jsp:include></div>
    </div>
    </div>
  
</div>


</body>
</html>