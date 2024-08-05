<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
<c:import url="./header.jsp">
	<c:param name="pageTitle" value="참가자 등록" />
</c:import>
<body class="sb-nav-fixed">
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<%@include file="./navigation.jsp"%>
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<%@include file="./gnb.jsp"%>
			</div>
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">참가자 등록</h2>
					<div class="contents-box">
						<div class="card">
							<div class="card-body">
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">제목</label>
										<div class="input-box">
											<input type="text" id="title" name="title" value="${pictVO.title}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">카테고리</label>
										<select id="category" name="category" class="input opt-max-width-300">
											<option value="1" <c:if test="${'1' eq pictVO.category}"> selected</c:if> >공지사항</option>
											<option value="2" <c:if test="${'2' eq pictVO.category}"> selected</c:if> >보도자료</option>
										</select>
									</div>
								</div>
								
								<div class="write-item">
									<label for="title" class="title">내용</label>
									<div class="input-box">
										<textarea name="text" id="text" cols="30" rows="10" class="txt" style="width:100%;">${pictVO.text}</textarea>
		                            	<!-- 에디터 설정 -->
										<script type="text/javascript">
											var oEditors = [];
											nhn.husky.EZCreator.createInIFrame({
												oAppRef: oEditors,
												elPlaceHolder: "text", //textarea에서 지정한 id와 일치해야 합니다.
												sSkinURI: "/js/SmartEditor2Skin.html",
												fCreator: "createSEditor2"
											});
										</script>
									</div>
								</div>
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file1" name="attach_file1" value="${pictVO.file_1}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_1 ne '' && pictVO.file_1 ne undfined}">
											<div style="display: flex; align-items: center;">
												<span>${fn:split(pictVO.file_1, "/")[3]}</span>
												<a onclick="file_del('1')" style="margin: 3px 0 0 7px; cursor: pointer;"><i class="fa-regular fa-circle-xmark fa-lg" style="color: #aeaeae;"></i></a>
											</div>
										</c:if>
									</div>
								</div>
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file2" name="attach_file2" value="${pictVO.file_2}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_2 ne '' && pictVO.file_2 ne undfined}">
											<div style="display: flex; align-items: center;">
												<span>첨부된 자료 : ${fn:split(pictVO.file_2, "/")[3]}</span>
												<a onclick="file_del('2')" style="margin: 3px 0 0 7px; cursor: pointer;"><i class="fa-regular fa-circle-xmark fa-lg" style="color: #aeaeae;"></i></a>
											</div>
										</c:if>
									</div>
								</div>
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file3" name="attach_file3" value="${pictVO.file_3}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_3 ne '' && pictVO.file_3 ne undfined}">
											<div style="display: flex; align-items: center;">	
												<span>첨부된 자료 : ${fn:split(pictVO.file_3, "/")[3]}</span>
												<a onclick="file_del('3')" style="margin: 3px 0 0 7px; cursor: pointer;"><i class="fa-regular fa-circle-xmark fa-lg" style="color: #aeaeae;"></i></a>
											</div>
										</c:if>
									</div>
								</div>
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file4" name="attach_file4" value="${pictVO.file_4}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_4 ne '' && pictVO.file_4 ne undfined}">
											<div style="display: flex; align-items: center;">												
												<span>첨부된 자료 : ${fn:split(pictVO.file_4, "/")[3]}</span>
												<a onclick="file_del('4')" style="margin: 3px 0 0 7px; cursor: pointer;"><i class="fa-regular fa-circle-xmark fa-lg" style="color: #aeaeae;"></i></a>
											</div>
										</c:if>
									</div>
								</div>
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file5" name="attach_file5" value="${pictVO.file_5}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_5 ne '' && pictVO.file_5 ne undfined}">
											<div style="display: flex; align-items: center;">
												<span>첨부된 자료 : ${fn:split(pictVO.file_5, "/")[3]}</span>
												<a onclick="file_del('5')" style="margin: 3px 0 0 7px; cursor: pointer;"><i class="fa-regular fa-circle-xmark fa-lg" style="color: #aeaeae;"></i></a>
											</div>
										</c:if>
									</div>
								</div>
									
								<div class="btn-box">
									<c:if test="${pictVO.saveType eq 'update'}">
										<button type="button" onclick="javascript:board_delete()" class="btn-basic btn-fill btn-sm">삭제</button>
									</c:if>
									<c:if test="${pictVO.saveType eq 'insert'}">
										<button type="button" onclick="button1_click();" class="btn-basic btn-primary btn-sm">등록</button>
									</c:if>
									<c:if test="${pictVO.saveType ne 'insert'}">
										<button type="button" onclick="button1_click();" class="btn-basic btn-primary btn-sm">수정</button>
									</c:if>
						        	<button type="button" onclick="javascript:board_list();" class="btn-basic btn-common btn-sm">목록보기</button>    
					            </div>
							</div>
						</div>
		            </div>
				</main>
			</div>
		</div>
		<input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
		<input type='hidden' name="idx" id="idx" value='${pictVO.idx}' /> 
		<input type='hidden' name="use_at" id="use_at" value='${pictVO.use_at}' />
		<input type='hidden' name="type" id="type" value='' />
		<input type='hidden' name="del_idx" id="del_idx" value='' />
		
	</form>
	
	<script>
		function file_del(idx){
			if (confirm("해당 첨부파일을 삭제 하시겠습니까?")) {
				$('#del_idx').val(idx)
				$("#register").attr("action", "/board/board_att_del.do");
				$("#register").submit();
			}
		}
		function board_delete() {
			if (confirm("삭제 하시겠습니까?")) {
				$("#register").attr("action", "/board/board_delete.do");
				$("#register").submit();
			}
		}
		function board_list() {
			location.href = "/board/board_list.do";
		}
		function button1_click() {
			var title = $('#title').val();
			
			if (title == "" || title == undefined) {
				window.alert("제목을 입력해주세요.");
				$('#title').focus();
				return false;
			}
			oEditors[0].exec("UPDATE_CONTENTS_FIELD", []);
			
			var text = "등록하시겠습니까?";
			if (saveType == 'update') {
				text = "수정하시겠습니까?"
			}

			if (confirm(text)) {
				$("#register").attr("action", "/board/board_save.do");
				$("#register").submit();
			}
		}
		
	</script>
	<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="../../../../../js/scripts.js"></script>
	<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
	<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>

</body>
</html>