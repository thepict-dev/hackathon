<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
	<%
		pageContext.setAttribute("user_idx", session.getAttribute("user_idx"));
	%>
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="제11회 대한민국 SW융합 해커톤 대회"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
	    <div class="subContainer">
	        <div class="subTop">
	            <h2>드라이브</h2>
	            <p class="pcText">${pictVO.title}<br>드라이브에 오신 걸 환영합니다</p>
	            <p class="mbText">${pictVO.title}<br>드라이브에 오신 걸 환영합니다</p>
	            <span><img src="/front_img/sub-deco.png" alt=""></span>
	        </div>
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <div class="driveContainer">
	                    <ul class="fileLists">
	                        <c:forEach var="resultList" items="${resultList}" varStatus="status">
		                        <li>
		                            <div class="indexTitle">
		                                <p>${status.count}</p>
		                                <p>
		                                	<c:if test="${resultList.type eq '2' || resultList.type eq 2}">
		                                		<span>최종</span>
		                                	</c:if>
		                                	${resultList.title}
	                                	</p>
		                            </div>
		                            <div class="fileInfo">
		                                <a href="${resultList.file_url}" download><span>${fn:split(resultList.file_url, "/")[3]}</span></a>
		                                <span><span>${resultList.name}</span>${resultList.reg_date}</span>
		                                <div class="fileModify">
		                                    <a href="#lnk" onclick="drive_mod('${resultList.idx}', '${resultList.user_id}')"><img src="/front_img/edit.png" alt="수정"></a>
		                                    <a href="#lnk" onclick="drive_delete('${resultList.idx}', '${resultList.user_id}')"><img src="/front_img/delete.png" alt="삭제"></a>
		                                </div>
		                            </div>
		                        </li>
	                        </c:forEach>
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
    <form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<input type='hidden' name="idx" id="idx" value='' />
	</form>
    <script>
	    function drive_mod(idx, user_id) {
	    	var login_id = ${user_idx};
	    	var board_user_id = user_id;
	    	
	    	if(login_id != board_user_id){
	    		alert("파일 수정은 작성만 할 수 있습니다.")
	    		return false;
	    	}
	    	
			$('#idx').val(idx)
			$("#register").attr("action", "/drive_form.do");
			$("#register").submit();
			
		}
	    function drive_delete(idx, user_id) {
	    	var login_id = ${user_idx};
	    	var board_user_id = user_id;
	    	
	    	if(login_id != board_user_id){
	    		alert("파일 삭제는 작성만 할 수 있습니다.")
	    		return false;
	    	}
	    	
			if (confirm("삭제 하시겠습니까?")) {
				$('#idx').val(idx)
				$("#register").attr("action", "drive_delete.do");
				$("#register").submit();
			}
		}
    </script>
</html>
