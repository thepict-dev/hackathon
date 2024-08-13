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
	    <div class="subContainer">
	        <div class="subTop">
	            <h2>드라이브</h2>
	            <p class="pcText">팀이름팀이름팀이름<br>드라이브에 오신 걸 환영합니다</p>
	            <p class="mbText">팀이름팀이름팀이름<br>드라이브에 오신 걸 환영합니다</p>
	            <span><img src="/front_img/sub-deco.png" alt=""></span>
	        </div>
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <div class="driveContainer">
	                    <ul class="fileLists">
	                        <li>
	                            <div class="indexTitle">
	                                <p>02</p>
	                                <p>제목 파일에 대한 제목z</p>
	                            </div>
	                            <div class="fileInfo">
	                                <a href="#lnk" download>파일이름임.png</a>
	                                <span><span>이유리</span>2024.07.15. 11:01</span>
	                                <div class="fileModify">
	                                    <a href="#lnk"><img src="/front_img/edit.png" alt="수정"></a>
	                                    <a href="#lnk"><img src="/front_img/delete.png" alt="삭제"></a>
	                                </div>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="indexTitle">
	                                <p>01</p>
	                                <p><span>최종</span>제목 파일에 대한 제목z</p>
	                            </div>
	                            <div class="fileInfo">
	                                <a href="#lnk" download>파일이름임.png</a>
	                                <span><span>이유리</span>2024.07.15. 11:01</span>
	                                <div class="fileModify">
	                                    <a href="#lnk"><img src="/front_img/edit.png" alt="수정"></a>
	                                    <a href="#lnk"><img src="/front_img/delete.png" alt="삭제"></a>
	                                </div>
	                            </div>
	                        </li>
	                    </ul>
	                </div>
	                <div class="buttonContainer files">
	                    <a href="/drive_form.do"><img src="/front_img/add.png" alt="">파일추가</a>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
