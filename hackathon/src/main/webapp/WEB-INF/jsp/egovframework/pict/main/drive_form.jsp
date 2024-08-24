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
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <div class="viewContainer">
	                    <div class="viewTop drive">
	                        <div class="viewTitles">
	                            <a href="/drive_list.do"><img src="/front_img/back.png" alt=""></a>
	                            <p>파일올리기</p>
	                        </div>
	                    </div>
	                    <form action="" id="register" name="register" method="post" enctype="multipart/form-data" class="driveForm">
	                    	<input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
	                        <div class="inputContainer">
	                            <div class="inputBox per">
	                                <p class="inputCaption">제목</p>
	                                <input type="text" name="title" id="title" placeholder="제목을 입력하세요" style="max-width: 979px;" value="${pictVO.title}">
	                            </div>
	                        </div>
	                        <div class="inputContainer">
	                            <div class="inputBox per">
	                                <div class="titleTooltip mb24">
	                                    <p class="inputCaption">파일종류</p>
	                                    <div class="tooltipBox">
	                                        <button type="button"><img src="/front_img/apply/tooltip.png" alt=""></button>
	                                        <div class="tooltipDesc">
	                                            <p><span>•</span>일반파일 : 업로드 시 팀원만 확인 가능하고 공유할 수 있습니다.</p>
	                                            <p><span>•</span>최종파일 : 최종 발표 자료를 업로드할 때 사용합니다.</p>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="radioContainer">
	                                    <div class="radioInput">
	                                        <input type="radio" name="type" id="file_type1" value="1" <c:if test="${pictVO.type eq '1' || pictVO.type eq 1}">checked</c:if>>
	                                        <label for="file_type1">일반파일</label>
	                                    </div>
	                                    <div class="radioInput">
	                                        <input type="radio" name="type" id="file_type2" value="2" <c:if test="${pictVO.type eq '2' || pictVO.type eq 2}">checked</c:if>>
	                                        <label for="file_type2">최종파일</label>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <div class="inputContainer">
	                            <div class="inputBox per">
	                                <p class="inputCaption mb24">첨부파일</p>
	                                <div class="fileContainer">
	                                    <div id="dropArea">
	                                        <div class="dropText">
	                                            <p id="choiceFile">파일 선택</p>
	                                            <p>혹은 파일을 이곳으로 끌어오세요</p>
	                                        </div>
	                                        <input type="file" id="attach_file1" name="attach_file1" style="display: none;">
	                                    </div>
	                                    
	                                    <div id="fileNameContainer" style="<c:if test="${pictVO.file_url ne '' && pictVO.file_url ne null && pictVO.file_url ne undefined}">display:flex</c:if>">
	                                        <span id="fileName">${fn:split(pictVO.file_url, "/")[3]}</span>
	                                        <button id="removeFile" type="button"><img src="/front_img/del-file.png" alt=""></button>
	                                    </div>
	                                    <ul class="fileDesc">
	                                        <li><span>•</span>첨부파일의 용량은 300메가바이트(mb)를 넘을 수 없습니다.</li>
	                                        <!-- <li><span>•</span>지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.</li> -->
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	                <div class="applyButton">
	                    <a href="/drive_list.do" class="prevButton">목록으로</a>
	                    <a href="#lnk" class="nextButton active" onclick="button1_click()">업로드</a>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
        <script>
        	function button1_click() {
        		var text = "등록하시겠습니까?";
    			if (saveType == 'update') {
    				text = "수정하시겠습니까?"
    			}
		        if (confirm(text)) {
					$("#register").attr("action", "/drive_save.do");
					$("#register").submit();
				}
        	}
	        const dropArea = document.getElementById("dropArea");
	        const choiceFile = document.getElementById("choiceFile");
	        const fileInput = document.getElementById("attach_file1");
	        const fileNameContainer = document.getElementById("fileNameContainer");
	        const fileName = document.getElementById("fileName");
	        const removeFileBtn = document.getElementById("removeFile");
	    
	        // 드래그 앤 드롭 이벤트 처리
	        dropArea.addEventListener("dragover", (e) => {
	            e.preventDefault();
	            dropArea.style.backgroundColor = "var(--grey-100)";
	        });
	    
	        dropArea.addEventListener("dragleave", () => {
	            dropArea.style.backgroundColor = "var(--grey-50)";
	        });
	    
	        dropArea.addEventListener("drop", (e) => {
	            e.preventDefault();
	            dropArea.style.backgroundColor = "var(--grey-50)";
	            handleFiles(e.dataTransfer.files);
	        });
	    
	        // 클릭 이벤트 처리
	        choiceFile.addEventListener("click", () => {
	            fileInput.click();
	        });
	    
	        // 파일 입력 변경 이벤트 처리
	        fileInput.addEventListener("change", (e) => {
	            handleFiles(e.target.files);
	        });
	    
	        // 파일 삭제 버튼 이벤트 처리
	        removeFileBtn.addEventListener("click", removeFile);
	    
	        // 파일 나타내기
	        function handleFiles(files) {
	            if (files.length > 0) {
	                let file = files[0];
	                fileName.textContent = file.name;
	                fileNameContainer.style.display = "flex";
	            }
	        }
	    
	        // 파일 삭제
	        function removeFile() {
	            fileInput.value = ""; // 파일 입력 초기화
	            fileName.textContent = "";
	            fileNameContainer.style.display = "none";
	
	            // 파일 제거
	            fileInput.files = new DataTransfer().files;
	        }

	        const tooltipButtons = document.querySelectorAll('.tooltipBox button');
	        const tooltipDescs = document.querySelectorAll('.tooltipDesc');

	        tooltipButtons.forEach((button, index) => {
	            button.addEventListener('click', function(e) {
	                e.stopPropagation();
	                tooltipDescs[index].style.display = tooltipDescs[index].style.display === 'block' ? 'none' : 'block';
	            });
	        });

	        document.addEventListener('click', function() {
	            tooltipDescs.forEach(desc => {
	                desc.style.display = 'none';
	            });
	        });

	        tooltipDescs.forEach(desc => {
	            desc.addEventListener('click', function(e) {
	                e.stopPropagation();
	            });
	        });
	    </script>
    </body>
</html>
