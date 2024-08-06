<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="applyWrapper" id="apply_acsses">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <div class="appBottom">
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">본선 등록을 위한 비밀번호를 입력하세요</h3>
                <div class="inputContainer">
                    <div class="inputBox">
                    	<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요">
                    </div>
                </div>
            </div>
            <div class="applyButton">
                <a href="#lnk" onclick="fn_join()" class="nextButton active">확인</a>
            </div>
        </div>
    </div>
</div>

<script>
	function fn_join(){
		var param = {
				password : $('#password').val()
		}
		$.ajax({
			url: '/password_compare.do'
			, type : "POST"
			, data : JSON.stringify(param)
			, contentType : "application/json"
			, dataType : "json"
			, success : function(result){
				if(result && result.rst == 'Y'){
					$('#apply1').css("display", "flex");
					$('#apply_acsses').css("display", "none");
				}
				else{
					alert("비밀번호가 올바르지 않습니다.");
					return false;
				}
				
			},
			error : function(err){
				alert("오류가 발생했습니다.\n관리자에게 문의해주세요");
				console.log(err)
			}
			
		});
	}
	
</script>