<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="applyWrapper" id="apply4">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <form action="" class="appBottom">
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">서류 제출</h3>
                <div class="inputContainer">
                    <div class="inputBox">
                        <p class="inputCaption mb24">팀원 수</p>
                        <div class="filebox">
                            <input class="upload-name" readonly>
                            <label for="attach_file">파일찾기</label> 
                            <input type="file" id="attach_file" class="blind">
                        </div>
                    </div>
                    <span class="inputSubCaption lh"><span>•</span>첨부파일의 용량은 50메가바이트(mb)를 넘을 수 없습니다.<br><span>•</span>지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.</span>
                </div>
            </div>
            <div class="applyButton">
                <a href="#lnk" class="prevButton" onclick="fn_apply3_back()">이전으로</a>
                <a href="#lnk" class="nextButton" id="apply4_next" onclick="fn_apply4_next()">다음으로</a>
            </div>
        </form>
    </div>
</div>

<script>
	function fn_apply3_back(){
		$('#apply3').css("display", "flex");
		$('#apply4').hide();
	}
	function fn_apply4_next(){
		$('#apply4').hide();
		$('#apply5').css("display", "flex");
	}

	$("#attach_file").change(function(){
		$('#apply4_next').addClass("active");
	})
</script>