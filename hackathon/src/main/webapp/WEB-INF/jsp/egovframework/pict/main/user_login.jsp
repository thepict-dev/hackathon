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
	                    <input type="text" name="judge_name" id="judge_name" placeholder="이름을 입력하세요" onkeypress="if(event.keyCode == 13){fn_login();}">
	                </div>
	                <div class="inputBox">
	                    <input type="text" name="judge_mobile" id="judge_mobile" placeholder="휴대폰번호를 입력하세요" oninput="oninputPhone(this)" maxlength="13" autocomplete="new-password" onkeypress="if(event.keyCode == 13){fn_login();}">
	                </div>
	            </div>

	            <a href="#lnk" onclick="javascript:fn_login();">로그인</a>
	        </form>
	    </div>
	    <form action="#" id="loginForm" name="loginForm" method="post">
			<input type="hidden" name="name" id="name" value="">
			<input type="hidden" name="mobile" id="mobile" value="">
		</form>
        <%@include file="./include/footer.jsp" %>
    </body>
    <script>
	    function fn_login() {
			if ($("#judge_name").val() == "") {
				alert("이름을 입력하세요.");
				$("#judge_name").focus();
				return false;
			} 
			else {
				$("#name").val($("#judge_name").val());
			}
			
			if ($("#judge_mobile").val() == "") {
				alert("휴대전화번호를 입력하세요.");
				$("#judge_mobile").focus();
				return false;
			} 
			else {
				$("#mobile").val($("#judge_mobile").val());
			}
			document.loginForm.action = "/user_login_action.do";
			document.loginForm.submit();
			
		}
		function oninputPhone(target) {
		    target.value = target.value
	        .replace(/[^0-9]/g, '')
	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
		}
    </script>
</html>
