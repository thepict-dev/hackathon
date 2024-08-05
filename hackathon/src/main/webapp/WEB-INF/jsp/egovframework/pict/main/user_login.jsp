<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="제11회 대한민국 SW융합 해커톤 대회"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
	    <div class="loginContainer">
	        <h2>로그인</h2>
	        <form action="">
	            <div class="loginInputContainer">
	                <div class="inputBox">
	                    <input type="text" name="name" id="name" placeholder="이름을 입력하세요">
	                </div>
	                <div class="inputBox">
	                    <input type="text" name="phone" id="phone" placeholder="휴대폰번호를 입력하세요" maxlength="13">
	                </div>
	            </div>
	            <div class="checkInput">
	                <input type="checkbox" name="set_login" id="set_login">
	                <label for="set_login">로그인 유지</label>
	            </div>
	            <a href="#lnk">로그인</a>
	        </form>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
