<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
<c:import url="./header.jsp">
	<c:param name="pageTitle" value="참가팀 등록" />
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
					<h2 class="contents-title">참가팀 등록</h2>
					<div class="contents-box">
						<div class="card">
							<div class="card-body">
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">과제</label>
										<select id="assignment_id" name="assignment_id" class="input opt-max-width-300">
											<option value="1" <c:if test="${'1' eq pictVO.assignment_id}"> selected</c:if> >자유과제</option>
											<option value="2" <c:if test="${'2' eq pictVO.assignment_id}"> selected</c:if> >지정과제1</option>
											<option value="2" <c:if test="${'2' eq pictVO.assignment_id}"> selected</c:if> >지정과제2</option>
										</select>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">지역</label>
										<select id="local" name="local" class="input opt-max-width-300">
											<option value="강원" <c:if test="${'강원' eq pictVO.local}"> selected</c:if> >강원</option>
											<option value="충북" <c:if test="${'충북' eq pictVO.local}"> selected</c:if> >충북</option>
											<option value="충남" <c:if test="${'충남' eq pictVO.local}"> selected</c:if> >충남</option>
											<option value="경북" <c:if test="${'경북' eq pictVO.local}"> selected</c:if> >경북</option>
											<option value="경남" <c:if test="${'경남' eq pictVO.local}"> selected</c:if> >경남</option>
											<option value="전북" <c:if test="${'전북' eq pictVO.local}"> selected</c:if> >전북</option>
											<option value="제주" <c:if test="${'제주' eq pictVO.local}"> selected</c:if> >제주</option>
											<option value="세종" <c:if test="${'세종' eq pictVO.local}"> selected</c:if> >세종</option>
											<option value="대구" <c:if test="${'대구' eq pictVO.local}"> selected</c:if> >대구</option>
											<option value="울산" <c:if test="${'울산' eq pictVO.local}"> selected</c:if> >울산</option>
											<option value="부산" <c:if test="${'부산' eq pictVO.local}"> selected</c:if> >부산</option>
										</select>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">팀명</label>
										<div class="input-box">
											<input type="text" id="title" name="title" value="${pictVO.title}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">팀원수</label>
										<div class="input-box">
											<input type="text" id="team_cnt" name="team_cnt" value="${pictVO.team_cnt}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">과제명</label>
										<div class="input-box">
											<input type="text" id="assignment_name" name="assignment_name" value="${pictVO.assignment_name}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">키워드</label>
										<div class="input-box">
											<input type="text" id="keyword" name="keyword" value="${pictVO.keyword}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">수상</label>
										<div class="input-box">
											<input type="text" id="award" name="award" value="${pictVO.award}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
								<div class="write-item" id="file_div">
									<label for="title" class="title">첨부자료</label>
									<div class="input-box" style="display: flex; flex-direction: column;">
										<input style="margin-bottom:8px" type="file" id="attach_file1" name="attach_file1" value="${pictVO.file_1}" class="input opt-max-width-600">
										<c:if test="${pictVO.file_1 ne '' && pictVO.file_1 ne undfined}">
											<div style="display: flex; align-items: center;">
												<span>${fn:split(pictVO.file_url, "/")[3]}</span>
											</div>
										</c:if>
									</div>
								</div>
								
								<div class="btn-box">

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
		
		function board_delete() {
			if (confirm("삭제 하시겠습니까?")) {
				$("#register").attr("action", "/team/team_delete.do");
				$("#register").submit();
			}
		}
		function board_list() {
			location.href = "/team/team_list.do";
		}
		function button1_click() {
			var title = $('#title').val();
			
			if (title == "" || title == undefined) {
				window.alert("제목을 입력해주세요.");
				$('#title').focus();
				return false;
			}
			
			var text = "등록하시겠습니까?";
			if (saveType == 'update') {
				text = "수정하시겠습니까?"
			}

			if (confirm(text)) {
				$("#register").attr("action", "/team/team_save.do");
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