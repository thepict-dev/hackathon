<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <h1 class="header-logo"><a class="navbar-brand ps-3" href="/pict_main.do"><img src="/images/pict/logo-black.png" alt="SW해커톤"></a></h1>
    <div class="header-info">
		<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
			<li class="nav-item dropdown">
				<a href="#lnk" onclick="javascript:fn_logout();" class="header-logout">
					<i class="fa-solid fa-right-from-bracket"></i>Logout
				</a>
			</li>
		</ul>
	</div>
</nav>

<script>
	function fn_logout() {
		if(confirm("로그아웃 하시겠습니까?")){
			location.href="/logout.do"
		}
	}
	function fn_user() {
		location.href="/user_register.do"
	}
</script>
